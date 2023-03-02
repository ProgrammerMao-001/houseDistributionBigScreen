<template>
    <div style="width: 100%;height: 100%;">
        <div id="centerMap" class="centerMap" style="width: 100%;height: 100%"></div>
        <houseDetail ref="houseDetail"/>
    </div>
</template>

<script>
    import MiddleUtils from "@/utils/middle-utils"
    import {getHouseTableByCity} from "@/api/houseModule";
    import houseDetail from "@/views/centerMap/houseDetail";

    var coordtransform = require('coordtransform');
    let map;
    var T = window.T;

    export default {
        name: "centerMap",
        components: {houseDetail},
        data() {
            return {
                lon: 0,
                lat: 0,
                zoom: 16,
            }
        },
        watch: {},
        methods: {
            // 初始化天地图
            showMap() {
                const imageURL = 'http://t0.tianditu.gov.cn/img_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=4c3a4b8cec3d4af47a12cdd192ce35cb';
                //创建自定义图层对象
                const lay = new T.TileLayer(imageURL, {minZoom: 0, maxZoom: 18});
                map = new T.Map('centerMap', {layers: [lay]});
                const typeArr = [
                    {
                        title: '卫星',
                        icon: ' http://api.tianditu.gov.cn/v4.0/image/map/maptype/satellite.png',
                        layer: TMAP_SATELLITE_MAP,
                    },
                    {
                        title: '地图', //地图控件上所要显示的图层名称
                        icon: 'http://api.tianditu.gov.cn/v4.0/image/map/maptype/vector.png', //地图控件上所要显示的图层图标（默认图标大小80x80）
                        layer: TMAP_NORMAL_MAP, //地图类型对象，即MapType。
                    },
                ];
                const ctrl = new T.Control.MapType(typeArr);
                //添加控件
                map.addControl(ctrl);
                this.getProjectList();
                setTimeout(() => {
                    map.centerAndZoom(new T.LngLat(this.lon, this.lat), this.zoom);
                }, 500)
            },

            // 获取地图数据的接口
            getProjectList() {
                let lngArr = []; // 存放所有经度
                let latArr = []; // 存放所有纬度
                let lays = map.getOverlays();//获取地图上所有的覆盖物
                for (let i = lays.length - 1; i >= 0; i--) { //倒序删除避免长度发生变化
                    map.removeOverLay(lays[i]); //从地图上移除。
                }
                getHouseTableByCity({}).then(res => {
                    if (res.data.status === 200) {
                        res.data.data.forEach(item => {
                            if (item.longitude && item.longitude !== '' && item.latitude && item.latitude !== '') {
                                const icon = new T.Icon({
                                    iconUrl: "img/base/houseDaFu/city.png",
                                    iconSize: new T.Point(24, 24),
                                    iconAnchor: new T.Point(12, -12),
                                });
                                let gcj02towgs84 = coordtransform.gcj02towgs84(item.longitude, item.latitude)
                                const marker = new T.Marker(new T.LngLat(gcj02towgs84[0], gcj02towgs84[1]), {
                                    icon: icon,
                                    title: item.housename + ' - ' + item.address
                                });
                                // map.removeOverLay(marker); // 清空点位
                                map.addOverLay(marker); // 打点
                                // 点击的弹窗事件
                                marker.addEventListener('click', () => {
                                    console.log('showDialog', item)
                                    const houseData = {
                                        title: '房屋基本信息',
                                        id: item.id,
                                    };
                                    (this.$refs.houseDetail).showDialog(houseData);
                                });
                            }
                            // 找出经纬度分别对应的最大最小值
                            lngArr.push(item.longitude);
                            latArr.push(item.latitude);
                        })
                        lngArr.sort(function (a, b) {
                            return b - a;
                        })
                        latArr.sort(function (a, b) {
                            return b - a;
                        })
                        this.lon = (parseFloat(lngArr[0]) + parseFloat(lngArr[lngArr.length - 1])) / 2;
                        this.lat = (parseFloat(latArr[0]) + parseFloat(latArr[latArr.length - 1])) / 2;
                        this.zoom = this.getZoom(lngArr[0], lngArr[lngArr.length - 1], latArr[0], latArr[latArr.length - 1]);
                    } else {
                        this.$message.warning('获取地图数据失败！');
                    }
                })
            },

            //通过经纬度缩放级别
            /**
             * 首先定义两个数组。 zoomArr表示对应的显示级别。 而diffArr对应 经纬度的差值。
             * 这个差值大于180的时候，显示级别为1. 差值大于90度的时候，显示级别为2，差值大于45度的时候，显示级别为3……依次类推。最终得到最适合的缩放级别。
             * 而这些差值与级别的对应关系，以及经纬差值之间的计算比例，是经过了我不少的调试得出来的。 也是花了一点功夫的。
             * 越是显示级别大的时候，越小的差值引起的误差就可能越大。所以我们这里默认最大的显示级别为14。
             * 也就是说，如果差值比我们差值数组中最小的差值还小的话，我们就返回14。
             * */
            getZoom(maxJ, minJ, maxW, minW) {
                if (maxJ == minJ && maxW == minW) return 13;
                var diff = maxJ - minJ;
                if (diff < (maxW - minW) * 2.1) diff = (maxW - minW) * 2.1;
                diff = parseInt(10000 * diff) / 10000;

                var zoomArr = new Array(3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
                var diffArr = new Array(180, 90, 45, 22, 11, 5.5, 2.75, 1.37, 0.68, 0.34, 0.17, 0.08, 0.04);

                for (var i = 0; i < diffArr.length; i++) {
                    if ((diff - diffArr[i]) >= 0) {
                        return zoomArr[i];
                    }
                }
                return 14;
            },
        },
        mounted() {
            this.showMap();
        },
        created() {
        }
    }
</script>

<style lang="scss" scoped>
    ::v-deep .tdt-iconLayers-layer {
        width: 40px;
        height: 40px;
        border-radius: 8px;
    }

    ::v-deep .tdt-right .tdt-control {
        margin-right: 180px;
    }

    ::v-deep .tdt-top .tdt-control {
        margin-top: 4px;
    }
</style>

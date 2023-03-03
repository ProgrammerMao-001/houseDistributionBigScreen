<template>
    <div class="main" style="">
        <div class="public-header">
            <div style="display: flex;margin-top: 20px">
                <img
                        style=""
                        src="../../../public/img/base/houseDaFu/both.png"
                        alt=""
                />
                <div style="width: 135px;"> 在售房源数量</div>
            </div>
        </div>

        <!-- echarts 图表 -->
        <div class="houseNumEcharts" id="houseNumEcharts"></div>
    </div>
</template>

<script>
    import {getHouseTableByCity} from "@/api/houseModule";
    import {getCityList} from "@/api/cityModule";

    export default {
        name: "rBox1",
        components: {},
        computed: {},
        props: {},
        data() {
            return {
                houseTable: [],
                cityList: [],
                seriesData: [],
                xinghualing: 0,
                qingxu: 0,
                yuci: 0,
                yingze: 0,
                wanbolin: 0,
                xiaodian: 0,
                jiancaoping: 0,
                jiyuan: 0,
                yangqu: 0,
                loufan: 0,
                gujiao: 0,
            }
        },
        methods: {
            /**
             * 统计数量
             * */
            getHouseTableByCity() {
                getHouseTableByCity({}).then(res => {
                    res.data.data.forEach((item, index) => {
                        if (item.city.indexOf('杏花岭') !== -1) this.xinghualing += 1
                        if (item.city.indexOf('清徐县') !== -1) this.qingxu += 1
                        if (item.city.indexOf('榆次区') !== -1) this.yuci += 1
                        if (item.city.indexOf('迎泽区') !== -1) this.yingze += 1
                        if (item.city.indexOf('万柏林区') !== -1) this.wanbolin += 1
                        if (item.city.indexOf('小店区') !== -1) this.xiaodian += 1
                        if (item.city.indexOf('尖草坪区') !== -1) this.jiancaoping += 1
                        if (item.city.indexOf('晋源区') !== -1) this.jiyuan += 1
                        if (item.city.indexOf('阳曲县') !== -1) this.yangqu += 1
                        if (item.city.indexOf('娄烦县') !== -1) this.loufan += 1
                        if (item.city.indexOf('古交市') !== -1) this.gujiao += 1
                    })
                    // console.log(this.xinghualing, this.qingxu, this.yuci, this.yingze, this.wanbolin, this.xiaodian, this.jiancaoping, this.jiyuan, this.yangqu, this.loufan, this.gujiao, )
                    this.seriesData = [this.xinghualing, this.qingxu, this.yuci, this.yingze, this.wanbolin, this.xiaodian, this.jiancaoping, this.jiyuan, this.yangqu, this.loufan, this.gujiao]
                })
            },

            initEcharts() {
                let option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            // type: 'cross',
                            // crossStyle: {
                            //     color: '#999'
                            // }
                        }
                    },
                    xAxis: {
                        type: 'category',
                        data: this.cityList,
                        triggerEvent: true,
                        axisLine: {
                            show: false
                        },
                        splitLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            rotate: 0, // 坐标轴名字旋转，角度值。
                            textStyle: {
                                color: "#fff",
                                fontSize: 10,
                            }
                        }
                    },
                    yAxis: {
                        type: 'value',
                        axisLabel: {
                            rotate: 0, // 坐标轴名字旋转，角度值
                            textStyle: {
                                color: "#fff",
                                fontSize: 12
                            }
                        },
                        splitLine: {
                            lineStyle: {
                                type: "dashed" // 横向的虚线
                            }
                        },
                        axisLine: {
                            show: false
                        }
                    },
                    series: [
                        {
                            data: this.seriesData,
                            type: 'line',
                            color: '#2d64bb'
                        }
                    ]
                };
                let houseNumEcharts = document.getElementById("houseNumEcharts");
                let chartRisk = this.$echarts.init(houseNumEcharts);
                chartRisk.clear();
                chartRisk.setOption(option);
                // 自适应窗口大小
                window.addEventListener("resize", function () {
                    chartRisk.resize();
                });
            },

            getCityList() {
                getCityList({}).then(res => {
                    res.data.data.forEach(item => {
                        this.cityList.push(item.city)
                    })
                })
            }


        },
        created() {

        },
        mounted() {
            this.getHouseTableByCity()
            this.getCityList()
            setTimeout(() => {
                this.initEcharts()
            }, 500)
        },

    }
</script>

<style lang="scss" scoped>
    .main {
        .public-header {
            width: 90%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            color: #fff;
            font-size: 16px;

            img {
                vertical-align: center;
                margin-right: 10px;
            }
        }
    }

    .houseNumEcharts {
        width: 92%;
        margin: -30px auto;
        height: 230px;
    }
</style>

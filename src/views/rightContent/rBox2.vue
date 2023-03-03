<template>
    <div class="main" style="">
        <div class="public-header">
            <div style="display: flex;margin-top: 20px">
                <img
                        style=""
                        src="../../../public/img/base/houseDaFu/both.png"
                        alt=""
                />
                <div style="width: 135px;"> 各区县最低房价图</div>
            </div>
        </div>

        <!-- echarts 图表 -->
        <div class="lowPriceOnCity" id="lowPriceOnCity"></div>
    </div>
</template>

<script>
    import {getHouseTableByCity} from "@/api/houseModule";

    export default {
        name: "rBox2",
        data() {
            return {
                xinghualing: 0,
                xinghualingArr: 0, // 杏花岭区
                qingxu: 0,
                qingxuArr: 0, // 清徐县
                yuci: 0,
                yuciArr: 0, // 榆次区
                yingze: 0,
                yingzeArr: 0, // 迎泽区
                wanbolin: 0,
                wanbolinArr: 0, // 万柏林区
                xiaodian: 0,
                xiaodianArr: 0, // 小店区
                jiancaoping: 0,
                jiancaopingArr: 0, // 尖草坪区
                jiyuan: 0,
                jiyuanArr: 0, // 晋源区
                yangqu: 0,
                yangquArr: 0, // 阳曲县
                loufan: 0,
                loufanArr: 0, // 娄烦县
                gujiao: 0,
                gujiaoArr: 0, // 古交市
            }
        },
        methods: {
            /**
             * 统计数量
             * */
            async getHouseTableByCity() {
                this.xinghualingArr = await getHouseTableByCity({city: '杏花岭区'}).then(res => {
                    return res.data.data
                })
                this.xinghualing = this.xinghualingArr.sort(this.sortBy('houseprize'))[this.xinghualingArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.qingxuArr = await getHouseTableByCity({city: '清徐县'}).then(res => {
                    return res.data.data
                })
                this.qingxu = this.qingxuArr.sort(this.sortBy('houseprize'))[this.qingxuArr.length - 1].houseprize   // 对数据进行处理（排序）

                this.yuciArr = await getHouseTableByCity({city: '榆次区'}).then(res => {
                    return res.data.data
                })
                this.yuci = this.yuciArr.sort(this.sortBy('houseprize'))[this.yuciArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.yingzeArr = await getHouseTableByCity({city: '迎泽区'}).then(res => {
                    return res.data.data
                })
                this.yingze = this.yingzeArr.sort(this.sortBy('houseprize'))[this.yingzeArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.wanbolinArr = await getHouseTableByCity({city: '万柏林区'}).then(res => {
                    return res.data.data
                })
                this.wanbolin = this.wanbolinArr.sort(this.sortBy('houseprize'))[this.wanbolinArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.xiaodianArr = await getHouseTableByCity({city: '小店区'}).then(res => {
                    return res.data.data
                })
                this.xiaodian = this.xiaodianArr.sort(this.sortBy('houseprize'))[this.xiaodianArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.jiancaopingArr = await getHouseTableByCity({city: '尖草坪区'}).then(res => {
                    return res.data.data
                })
                this.jiancaoping = this.jiancaopingArr.sort(this.sortBy('houseprize'))[this.jiancaopingArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.jiyuanArr = await getHouseTableByCity({city: '晋源区'}).then(res => {
                    return res.data.data
                })
                this.jiyuan = this.jiyuanArr.sort(this.sortBy('houseprize'))[this.jiyuanArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.yangquArr = await getHouseTableByCity({city: '阳曲县'}).then(res => {
                    return res.data.data
                })
                this.yangqu = this.yangquArr.sort(this.sortBy('houseprize')) [this.yangquArr.length - 1].houseprize // 对数据进行处理（排序）

                this.loufanArr = await getHouseTableByCity({city: '娄烦县'}).then(res => {
                    return res.data.data
                })
                this.loufan = this.loufanArr.sort(this.sortBy('houseprize'))[this.loufanArr.length - 1].houseprize  // 对数据进行处理（排序）

                this.gujiaoArr = await getHouseTableByCity({city: '古交市'}).then(res => {
                    return res.data.data
                })
                this.gujiao = this.gujiaoArr.sort(this.sortBy('houseprize')) [this.gujiaoArr.length - 1].houseprize // 对数据进行处理（排序）
            },

            /**
             * 根据传过来的字段进行排序 从大到小
             * */
            sortBy(field) {
                return (x, y) => {
                    return y[field] - x[field]
                }
            },

            initEcharts() {
                let option = {
                    tooltip: {
                        trigger: 'item',
                        formatter:'{b0}: {c0}元/㎡<br />'
                    },
                    legend: {
                        top: '20%',
                        left: 'center',
                        textStyle: {
                            color: "#fff"
                        },
                    },
                    series: [
                        {
                            name: '',
                            type: 'pie',
                            top: '34%',
                            radius: ['50%', '70%'],
                            avoidLabelOverlap: false,
                            itemStyle: {
                                borderRadius: 10,
                                borderColor: '#fff',
                                borderWidth: 2
                            },
                            label: {
                                show: false,
                                position: 'outside',
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontSize: 20,
                                    fontWeight: 'bold'
                                }
                            },
                            labelLine: {
                                show: false
                            },
                            data: [
                                {value: this.xinghualing, name: '杏花岭区'},
                                {value: this.qingxu, name: '清徐县'},
                                {value: this.yuci, name: '榆次区'},
                                {value: this.yingze, name: '迎泽区'},
                                {value: this.wanbolin, name: '万柏林区'},
                                {value: this.xiaodian, name: '小店区'},
                                {value: this.jiancaoping, name: '尖草坪区'},
                                {value: this.jiyuan, name: '晋源区'},
                                {value: this.yangqu, name: '阳曲县'},
                                {value: this.loufan, name: '娄烦县'},
                                {value: this.gujiao, name: '古交市'},
                            ]
                        }
                    ],
                };
                let lowPriceOnCity = document.getElementById("lowPriceOnCity");
                let chartRisk = this.$echarts.init(lowPriceOnCity);
                chartRisk.clear();
                chartRisk.setOption(option);
                // 自适应窗口大小
                window.addEventListener("resize", function () {
                    chartRisk.resize();
                });
            },

        },
        created() {
        },
        mounted() {
            this.getHouseTableByCity()
            setTimeout(() => {
                this.initEcharts()
            }, 500)
        }
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

    .lowPriceOnCity {
        width: 92%;
        margin: -30px auto;
        height: 300px;
    }
</style>

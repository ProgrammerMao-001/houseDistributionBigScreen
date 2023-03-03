<template>
    <div class="lBox3">
        <div class="public-header">
            <img
                    style=""
                    src="../../../public/img/base/houseDaFu/both.png"
                    alt=""
            />
            <div style="width: 120px;">房屋均价统计图</div>
        </div>

        <!-- echarts 图表 -->
        <div class="houseAveragePrize" id="houseAveragePrize"></div>
    </div>
</template>

<script>
    import {getHouseTableByCity} from "@/api/houseModule";
    import {getCityList} from "@/api/cityModule";

    export default {
        name: "lBox3",
        data() {
            return {
                cityList: [], // 城市列表
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
             * 计算平均值
             * */
            async getHouseTableByCity() {
                /* 杏花岭区 */
                let arr = [];
                let sum = 0;
                let num = 1;
                this.xinghualingArr = await getHouseTableByCity({city: '杏花岭区'}).then(res => {
                    return res.data.data
                })
                this.xinghualingArr.forEach((item, index) => {
                    arr.push(item.houseprize)
                    arr.forEach((item, idnex) => {
                        sum += parseInt(item)
                        num += 1
                    })
                    this.xinghualing = sum / num
                })


                /* 清徐县 */
                let arr1 = [];
                let sum1 = 0;
                let num1 = 1;
                this.qingxuArr = await getHouseTableByCity({city: '清徐县'}).then(res => {
                    return res.data.data
                })
                this.qingxuArr.forEach((item, index) => {
                    arr1.push(item.houseprize)
                    arr1.forEach((item, idnex) => {
                        sum1 += parseInt(item)
                        num1 += 1
                    })
                    this.qingxu = sum1 / num1
                })

                /* 榆次区 */
                let arr2 = [];
                let sum2 = 0;
                let num2 = 1;
                this.yuciArr = await getHouseTableByCity({city: '榆次区'}).then(res => {
                    return res.data.data
                })
                this.yuciArr.forEach((item, index) => {
                    arr2.push(item.houseprize)
                    arr2.forEach((item, idnex) => {
                        sum2 += parseInt(item)
                        num2 += 1
                    })
                    this.yuci = sum2 / num2
                })

                /* 迎泽区 */
                let arr3 = [];
                let sum3 = 0;
                let num3 = 1;
                this.yingzeArr = await getHouseTableByCity({city: '迎泽区'}).then(res => {
                    return res.data.data
                })
                this.yingzeArr.forEach((item, index) => {
                    arr3.push(item.houseprize)
                    arr3.forEach((item, idnex) => {
                        sum3 += parseInt(item)
                        num3 += 1
                    })
                    this.yingze = sum3 / num3
                })

                /* 万柏林区 */
                let arr4 = [];
                let sum4 = 0;
                let num4 = 1;
                this.wanbolinArr = await getHouseTableByCity({city: '万柏林区'}).then(res => {
                    return res.data.data
                })
                this.wanbolinArr.forEach((item, index) => {
                    arr4.push(item.houseprize)
                    arr4.forEach((item, idnex) => {
                        sum4 += parseInt(item)
                        num4 += 1
                    })
                    this.wanbolin = sum4 / num4
                })

                /* 小店区 */
                let arr5 = [];
                let sum5 = 0;
                let num5 = 1;
                this.xiaodianArr = await getHouseTableByCity({city: '小店区'}).then(res => {
                    return res.data.data
                })
                this.xiaodianArr.forEach((item, index) => {
                    arr5.push(item.houseprize)
                    arr5.forEach((item, idnex) => {
                        sum5 += parseInt(item)
                        num5 += 1
                    })
                    this.xiaodian = sum5 / num5
                })


                /* 尖草坪区 */
                let arr6 = [];
                let sum6 = 0;
                let num6 = 1;
                this.jiancaopingArr = await getHouseTableByCity({city: '尖草坪区'}).then(res => {
                    return res.data.data
                })
                this.jiancaopingArr.forEach((item, index) => {
                    arr6.push(item.houseprize)
                    arr6.forEach((item, idnex) => {
                        sum6 += parseInt(item)
                        num6 += 1
                    })
                    this.jiancaoping = sum6 / num6
                })

                /* 晋源区 */
                let arr7 = [];
                let sum7 = 0;
                let num7 = 1;
                this.jiyuanArr = await getHouseTableByCity({city: '晋源区'}).then(res => {
                    return res.data.data
                })
                this.jiyuanArr.forEach((item, index) => {
                    arr7.push(item.houseprize)
                    arr7.forEach((item, idnex) => {
                        sum7 += parseInt(item)
                        num7 += 1
                    })
                    this.jiyuan = sum7 / num7
                })


                /* 阳曲县 */
                let arr8 = [];
                let sum8 = 0;
                let num8 = 1;
                this.yangquArr = await getHouseTableByCity({city: '阳曲县'}).then(res => {
                    return res.data.data
                })
                this.yangquArr.forEach((item, index) => {
                    arr8.push(item.houseprize)
                    arr8.forEach((item, idnex) => {
                        sum8 += parseInt(item)
                        num8 += 1
                    })
                    this.yangqu = sum8 / num8
                })

                /* 娄烦县 */
                let arr9 = [];
                let sum9 = 0;
                let num9 = 1;
                this.loufanArr = await getHouseTableByCity({city: '娄烦县'}).then(res => {
                    return res.data.data
                })
                this.loufanArr.forEach((item, index) => {
                    arr9.push(item.houseprize)
                    arr9.forEach((item, idnex) => {
                        sum9 += parseInt(item)
                        num9 += 1
                    })
                    this.loufan = sum9 / num9
                })


                /* 古交市 */
                let arr10 = [];
                let sum10 = 0;
                let num10 = 1;
                this.gujiaoArr = await getHouseTableByCity({city: '古交市'}).then(res => {
                    return res.data.data
                })
                this.gujiaoArr.forEach((item, index) => {
                    arr10.push(item.houseprize)
                    arr10.forEach((item, idnex) => {
                        sum10 += parseInt(item)
                        num10 += 1
                    })
                    this.gujiao = sum10 / num10
                })
            },

            getCityList() {
                getCityList().then(res => {
                    res.data.data.forEach(item => {
                        this.cityList.push(item.city)
                    })
                })
            },

            initEcharts() {
                let option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross'
                        },
                        formatter: '{b0}<br />平均值 {c0}元/㎡'
                    },
                    xAxis: {
                        type: 'category',
                        data: this.cityList,
                        axisLabel: {
                            color: '#fff',
                        }
                    },
                    yAxis: {
                        type: 'value',
                        axisLabel: {
                            formatter: '{value} ㎡',
                            color: '#fff',
                        },
                    },
                    series: [
                        {
                            data: [
                                {
                                    value: this.xinghualing,
                                    itemStyle: {
                                        color: 'rgba(84, 112, 198, .8)'
                                    }
                                },
                                {
                                    value: this.qingxu,
                                    itemStyle: {
                                        color: 'rgba(145, 204, 117,.8)'
                                    }
                                },
                                {
                                    value: this.yuci,
                                    itemStyle: {
                                        color: 'rgba(250, 200, 88,.8)'
                                    }
                                },
                                {
                                    value: this.yingze,
                                    itemStyle: {
                                        color: 'rgba(238, 102, 102,.8)'
                                    }
                                },
                                {
                                    value: this.wanbolin,
                                    itemStyle: {
                                        color: 'rgba(115, 192, 222,.8)'
                                    }
                                },
                                {
                                    value: this.xiaodian,
                                    itemStyle: {
                                        color: 'rgba(59, 162, 114,.8)'
                                    }
                                },
                                {
                                    value: this.jiancaoping,
                                    itemStyle: {
                                        color: 'rgba(252, 132, 82,.8)'
                                    }
                                },
                                {
                                    value: this.jiyuan,
                                    itemStyle: {
                                        color: 'rgba(154, 96, 180,.8)'
                                    }
                                },
                                {
                                    value: this.yangqu,
                                    itemStyle: {
                                        color: 'rgba(234, 124, 204,.8)'
                                    }
                                },
                                {
                                    value: this.loufan,
                                    itemStyle: {
                                        color: 'rgba(84, 112, 198,.8)'
                                    }
                                },
                                {
                                    value: this.gujiao,
                                    itemStyle: {
                                        color: 'rgba(145, 204, 117,.8)'
                                    }
                                },
                            ],
                            type: 'bar'
                        }
                    ]
                };
                let houseAveragePrize = document.getElementById("houseAveragePrize");
                let chartRisk = this.$echarts.init(houseAveragePrize);
                chartRisk.clear();
                chartRisk.setOption(option);
                // 自适应窗口大小
                window.addEventListener("resize", function () {
                    chartRisk.resize();
                    setTimeout(() => {
                        this.initEcharts()
                    }, 500)
                });
            }
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
    .public-header {
        width: 98%;
        margin: 20px auto;
        display: flex;
        align-items: center;
        color: #fff;
        font-size: 16px;

        img {
            vertical-align: center;
            margin-right: 10px;
        }
    }


    .houseAveragePrize {
        width: 92%;
        margin: -30px auto;
        height: 250px;
    }
</style>

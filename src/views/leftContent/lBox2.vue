<template>
    <div class="lbox2">
        <div class="public-header">
            <img
                    style=""
                    src="../../../public/img/base/houseDaFu/both.png"
                    alt=""
            />
            <div style="width: 120px;">销售业绩排行表</div>

            <div class="search-box">
                <el-input v-model="sellname" placeholder="请输入内容"></el-input>
                <el-button size="small" style="height: 30px;margin: 6px  0 0 10px" @click="searchBySellName"> 搜索
                </el-button>
                <el-button size="small" style="height: 30px;margin: 6px  0 0 10px" @click="restForm"> 重置</el-button>
            </div>
        </div>


        <dv-scroll-board :config="configData" style="width:100%;height:300px"/>
    </div>
</template>

<script>
    import {getHouseTableByCity, getHouseTableBySellName} from "@/api/houseModule";
    import {changeTableData} from "@/utils/changeTableData";

    export default {
        name: "lBox2",
        data() {
            return {
                tableData: [],
                configData: {},
                sellname: ''
            }
        },
        methods: {
            /**
             * 获取所有数据
             * */
            getHouseTableByCity() {
                let resData = []
                let helpArr = [];
                getHouseTableByCity({}).then(res => {
                    if (res.data.status === 200) {
                        this.tableData = res.data.data.sort(this.sortBy('sellnum'))  // 对数据进行处理（排序）
                        this.tableData.forEach((item, index) => {
                            resData.push({
                                index: index + 1,
                                sellname: item.sellname,
                                sellnum: item.sellnum,
                            })
                        })
                        helpArr = changeTableData(resData);
                        this.configData = {
                            header: ['名次', '销售员', '总成交(单)'],
                            data: helpArr,
                            headerBGC: '#0d326a', // 表头背景色
                            oddRowBGC: '#091928', // 奇数行背景色
                            evenRowBGC: '#0b254a', // 偶数行背景色
                            waitTime: 600, // 轮播时间间隔(ms)
                            headerHeight: 30, // 表头高度
                            columnWidth: [90, 180, 90], // 列宽度 Array<String>
                            align: ['center', 'center', 'center'], // 列对齐方式 Array<String>
                            rowNum: 10, // 表行数
                        }
                    }
                })
            },

            /**
             * 根据传过来的字段进行排序 从大到小
             * */
            sortBy(field) {
                return (x, y) => {
                    return y[field] - x[field]
                }
            },

            /**
             * 根据销售名称查询表格数据
             * */
            searchBySellName() {
                let helpArr = []
                getHouseTableBySellName({sellname: this.sellname}).then(res => {
                    if (res.data.status === 200) {
                        helpArr = changeTableData(res.data.data);
                        this.configData = {
                            header: ['名次', '销售员', '总成交(单)'],
                            data: helpArr,
                            headerBGC: '#0d326a', // 表头背景色
                            oddRowBGC: '#091928', // 奇数行背景色
                            evenRowBGC: '#0b254a', // 偶数行背景色
                            waitTime: 600, // 轮播时间间隔(ms)
                            headerHeight: 30, // 表头高度
                            columnWidth: [90, 180, 90], // 列宽度 Array<String>
                            align: ['center', 'center', 'center'], // 列对齐方式 Array<String>
                            rowNum: 10, // 表行数
                        }
                    }
                })
            },

            /**
             * 重置数据
             * */
            restForm() {
                this.sellname = ''
                this.getHouseTableByCity()
            }
        },
        created() {
            this.getHouseTableByCity()
        }
    }
</script>

<style lang="scss" scoped>
    .lbox2 {
        width: 94%;
        margin: 10px auto;
    }

    .public-header {
        width: 98%;
        margin: 10px auto;
        display: flex;
        align-items: center;
        color: #fff;
        font-size: 16px;


        img {
            vertical-align: center;
            margin-right: 10px;
        }

        .search-box {
            width: calc(100% - 150px);
            display: flex;
            margin-left: 18px;
        }
    }
</style>

<template>
    <div class="rbox3">
        <div class="public-header">
            <img
                    style=""
                    src="../../../public/img/base/houseDaFu/both.png"
                    alt=""
            />
            <div style="width: 120px;">在售房源</div>
        </div>

        <dv-scroll-board @click="showDialog" :config="configData" style="width:100%;height:180px"/>
        <houseDetail ref="houseDetail"/>
    </div>
</template>

<script>
    import {getHouseTableByCity} from "@/api/houseModule";
    import {changeTableData1} from "@/utils/changeTableData1";
    import houseDetail from "@/views/centerMap/houseDetail";

    export default {
        name: "rBox3",
        components: {houseDetail},
        data() {
            return {
                configData: {}
            }
        },
        methods: {
            getHouseTableByCity() {
                let resData = []
                let helpArr = [];
                getHouseTableByCity({}).then(res => {
                    resData = res.data.data
                    if (res.data.status === 200) {
                        helpArr = changeTableData1(resData);
                        this.configData = {
                            header: ['id', '名称', '地址', '售价(元/㎡)', '销售员'],
                            data: helpArr,
                            headerBGC: '#0d326a', // 表头背景色
                            oddRowBGC: '#091928', // 奇数行背景色
                            evenRowBGC: '#0b254a', // 偶数行背景色
                            waitTime: 600, // 轮播时间间隔(ms)
                            headerHeight: 30, // 表头高度
                            columnWidth: [], // 列宽度 Array<String>
                            align: ['center', 'center', 'center', 'center'], // 列对齐方式 Array<String>
                            rowNum: 5, // 表行数
                        }
                    }
                })
            },

            /**
             * 滚动表格所在单元行点击事件
             * */
            showDialog(row) {
                const houseData = {
                    title: '房屋基本信息',
                    id: row.row[0],
                };
                console.log(row);
                (this.$refs.houseDetail).showDialog(houseData);

            }
        },
        created() {
            this.getHouseTableByCity()
        }
    }
</script>

<style lang="scss" scoped>
    .rbox3 {
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

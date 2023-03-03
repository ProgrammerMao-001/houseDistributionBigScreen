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
    export default {
        name: "lBox3",
        data() {
            return {

            }
        },
        methods: {},
        created() {
        }
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
</style>

<template>
    <transition name="moveR">
        <div v-show="showRightFlag" class="bg" style="height: 100%">
            <div style="height: 2px"></div>
            <div class="left-top">房屋信息</div>
            <div class="is-pick-up" title="隐藏房屋信息" @click="foldIt"></div>
            <div style="height: calc(100% - 60px);overflow: auto;">
                <!-- 各区县在售房源数量 -->
                <rBox1 ref="rBox1"></rBox1>
                <!-- 各区县房屋最低总价 -->
                <rBox2 ref="rBox2"></rBox2>
                <!-- 在售房源数据 -->
            </div>
        </div>
    </transition>
</template>

<script>
    import rBox1 from "@/views/rightContent/rBox1";
    import rBox2 from "@/views/rightContent/rBox2";

    export default {
        name: "rightContent",
        components: {rBox1, rBox2},
        props: {
            rightFlag: {}
        },
        watch: {
            rightFlag: function (newValue) {
                if (newValue) {
                    this.showRightFlag = this.rightFlag;
                }
            }
        },
        data() {
            return {
                rowId: [], // 传给子的 userNow
                showRightFlag: true, // 展示左侧盒子的标记
            }
        },
        methods: {
            /**
             * 折叠右侧的盒子
             * */
            foldIt() {
                this.showRightFlag = false;
                this.$emit('on-response', this.showRightFlag); // 将 flag 传给 外层组件
            }
        }
    }
</script>

<style lang="scss" scoped>
    .left-top {
        font-size: 22px;
        line-height: 50px;
        text-align: center;
        letter-spacing: 3px;
        color: #fff;
        background-image: url("../../../public/img/base/houseDaFu/pubHeader.png");
    }

    .is-pick-up {
        width: 30px;
        height: 52px;
        cursor: pointer;
        position: absolute;
        left: 0;
        top: 0;
    }

    .moveR-enter-active, .moveR-leave-active {
        transition: all 0.3s linear !important;
        transform: translateX(8%) !important;
    }

    .moveR-enter, .moveR-leave {
        transform: translateX(-1%) !important;
    }

    .moveR-leave-to {
        transform: translateX(100%) !important;
    }
</style>

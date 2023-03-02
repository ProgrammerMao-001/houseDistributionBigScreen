<template>
    <transition name="moveL">
        <div v-show="showLeftFlag" class="bg bg-left" style="height: 100%">
            <div style="height: 2px"></div>
            <div class="left-top">人员信息</div>
            <div class="is-pick-up" title="隐藏人员信息" @click="foldIt"></div>
            <div style="overflow: auto;height: calc(100% - 60px)">
                <!-- 用户信息 -->
                <lBox1 ref="lBox1"/>
                <!-- 销售员排行 -->
                <lBox2 ref="lBox2"/>

            </div>
        </div>
    </transition>
</template>

<script>
    import lBox1 from "@/views/leftContent/lBox1";
    import lBox2 from "@/views/leftContent/lBox2";

    export default {
        name: "leftContent",
        components: {lBox1, lBox2},
        props: {
            leftFlag: {}
        },
        watch: {
            leftFlag: function (newValue) {
                if (newValue) {
                    this.showLeftFlag = this.leftFlag;
                }
            }
        },
        data() {
            return {
                rowId: [], // 传给 box3 的 userNow
                showLeftFlag: true, // 展示左侧盒子的标记
            }
        },
        methods: {
            /**
             * 折叠左侧的盒子
             * */
            foldIt() {
                this.showLeftFlag = false;
                this.$emit('on-response', this.showLeftFlag); // 将 flag 传给 外层组件
            }
        },

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
        right: 0;
        top: 0;
    }

    .moveL-enter-active, .moveL-leave-active {
        transition: all 0.3s linear !important;
        transform: translateX(8%) !important;
    }

    .moveL-enter, .moveL-leave {
        transform: translateX(-1%) !important;
    }

    .moveL-leave-to {
        transform: translateX(-100%) !important;
    }
</style>

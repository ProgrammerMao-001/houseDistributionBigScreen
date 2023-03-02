<template>
    <div class="main">
        <!-- 标题头 -->
        <div class="main-header">
            <DataViewHeader/>
        </div>

        <div class="main-content">
            <!-- 左侧大盒子 -->
            <div class="left-content">
                <leftContent ref="leftContent" :leftFlag="leftFlag" @on-response="getLeftFlag"/>
                <div title="显示人员信息" v-show="!leftFlag" class="is-show-left" @click="showLeftContent"></div>
            </div>

            <!-- 地图 -->
            <div class="center-map">
                <centerMap ref="centerMap"/>
            </div>

            <!-- 时间 -->
            <div class="timer-box">
                <span class="data-view-time-text">{{currentTime | formatDate('YYYY-MM-DD HH:mm:ss')}}</span>
            </div>
            <!-- 右侧大盒子 -->
            <div class="right-content">
                <rightContent ref="rightContent" :rightFlag="rightFlag" @on-response="getRightFlag"/>
                <div title="显示房屋信息" v-show="!rightFlag" class="is-show-right" @click="showRightContent"></div>
            </div>

        </div>
    </div>
</template>

<script>
    import DataViewHeader from "@/components/DataViewHeader";
    import centerMap from "@/views/centerMap/centerMap";
    import leftContent from "@/views/leftContent/leftContent";
    import rightContent from "@/views/rightContent/rightContent";

    export default {
        name: 'home',
        components: {DataViewHeader, centerMap, leftContent, rightContent},
        data() {
            return {
                currentTime: new Date(),
                leftFlag: true, // 用来接收子组件传来的左侧的显示/隐藏的标记
                rightFlag: true, // 用来接收子组件传来的右侧的显示/隐藏的标记
            }
        },
        methods: {

            /**
             * @desc 获取 leftContent 页面接收来的flag
             * */
            getLeftFlag(flag) {
                this.leftFlag = flag;
            },

            /**
             * @desc 点击图标时，出现左侧的盒子
             * */
            showLeftContent() {
                this.leftFlag = true; // 显示左侧
            },

            /**
             * @desc 获取 rightContent 页面接收来的flag
             * */
            getRightFlag(flag) {
                this.rightFlag = flag;
            },

            /**
             * @desc 点击图标时，出现右侧的盒子
             * */
            showRightContent() {
                this.rightFlag = true; // 显示左侧
            },

            onWindowResize() {
                // const w = 1920
                // const h = 1080
                // const scaleW = document.body.clientWidth / w
                // const scaleH = document.body.clientHeight / h
                // const appDom = document.querySelector(".main") || null
                // console.log(appDom)
                // appDom.style.cssText = `transform: scale(${scaleW})`
                // // appDom.style.cssText = `transform: scale(${scaleW}, ${scaleH})`;
            }
        },
        mounted() {
            this.onWindowResize()
            setTimeout(() => {
                this.onWindowResize()
            }, 100)
        },
        created() {
            /**
             * 获取 右上角的时间
             * */
            setInterval(() => {
                this.currentTime = new Date();
            }, 1000)
            window.addEventListener('resize', this.onWindowResize)
        },
        destroyed() {
            clearTimeout(this.timer)
            window.removeEventListener('resize', this.onWindowResize)
        }
    }
</script>

<style lang="scss" scoped>
    .main {
        position: relative;
        height: 100%;

        .main-header {
            position: fixed;
            height: 80px;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: 700 !important;
            /*margin: auto;*/
        }

        .main-content {
            position: relative;
            height: 100%;
            /*top: 80px;*/

            .user-class {
                width: 350px;
                position: absolute;
                left: 10px;
                top: 60px;
                z-index: 862 !important;

                .el-select {
                    width: 100%;
                }
            }

            .center-map {
                width: 100%;
                height: 100%;
                position: absolute;
                // top: -30px;
            }

            .left-content {
                z-index: 999 !important;
                position: absolute;
                left: 0;
                top: 110px;
                margin: 0 5px;
                padding: 2px;
                width: 450px;
                height: calc(100% - 150px);
                /*background-image: url("../../public/img/base/houseDaFu/pubBg.png");*/
                /*background-repeat: no-repeat;*/

                .is-show-left {
                    width: 50px;
                    height: 34px;
                    cursor: pointer;
                    background-image: url("../../public/img/base/gohome.png");
                }
            }

            .timer-box {
                width: 476px;
                height: 30px;
                position: absolute;
                right: 0;
                top: 70px;
                color: #fff;
                text-align: center;
                font-size: 22px;
                letter-spacing: 3px;
                z-index: 1000 !important;
                background-image: url("../../public/img/base/houseDaFu/timeBoxBg.png");

                .data-view-time-text {
                    margin-left: 48px;
                }
            }

            .right-content {
                z-index: 888 !important;
                position: absolute;
                right: 0;
                top: 110px;
                /*width: 450px;*/
                height: calc(100% - 150px);

                .is-show-right {
                    width: 50px;
                    height: 34px;
                    cursor: pointer;
                    transform: rotate(180deg);
                    background-image: url("../../public/img/base/gohome.png");
                }
            }

        }
    }

</style>

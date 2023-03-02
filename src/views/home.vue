<template>
    <div class="main">
        <!-- 标题头 -->
        <div class="main-header">
            <DataViewHeader/>
        </div>

        <div class="main-content">
            <!-- 地图 -->
            <div class="center-map">
                <centerMap ref="centerMap"/>
            </div>
        </div>
    </div>
</template>

<script>
    import DataViewHeader from "@/components/DataViewHeader";
    import centerMap from "@/views/centerMap/centerMap";

    export default {
        name: 'home',
        components: {DataViewHeader, centerMap}
    }
</script>

<style lang="scss" scoped>
    .main {
        position: relative;
        height: 100%;
        /*width: 1920px;*/
        /*height: 1080px;*/
        /*overflow: hidden;*/
        /*transform-origin: left top;*/
        /*pointer-events: none;*/

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
                z-index: 888 !important;
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

    /*/deep/ .el-select__tags {*/
    /*    flex-wrap: unset;*/
    /*    overflow: auto;*/
    /*}*/
</style>

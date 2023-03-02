<template>
    <el-dialog :modal-append-to-body='false' class="edit-dialog dialog dashboard"
               :append-to-body="true"
               :visible.sync="visible" :title="title"
               width="750px"
               v-elDragDialog
               style="pointer-events: auto;"
               :before-close="hideDialog">
        <template>
            <div class="form-box">
                <el-form :model="formData" class="">
                    <div class="form-box-header"> {{ formData.housename }}</div>
                    <el-form-item label="地址：">
                        {{ formData.address }}
                    </el-form-item>
                    <el-form-item label="所属区域：">
                        {{ formData.city }}
                    </el-form-item>
                    <el-form-item label="单价：">
                        {{ formData.houseprize }}元/㎡
                    </el-form-item>
                    <el-form-item label="房屋总价：">
                        {{ formData.totalprize }}万/套
                    </el-form-item>
                    <el-form-item label="房屋照片：">
                        <el-image
                                style="width: 100px; height: 100px;"
                                :src="formData.piclist?formData.piclist:''"
                                :preview-src-list="[formData.piclist]">
                        </el-image>
                    </el-form-item>

                    <el-form-item label="销售员：">
                        {{ formData.sellname }}
                    </el-form-item>

                    <el-form-item label="销售员联系方式：">
                        {{ formData.sellphone }}
                    </el-form-item>
                </el-form>
            </div>
        </template>
    </el-dialog>
</template>

<script>
    import {getHouseDetail} from "@/api/houseModule";

    export default {
        name: "projectBasicInfoDialog",
        components: {},
        filters: {},
        data() {
            return {
                visible: false,
                title: '',
                needId: '',
                formData: {},
            }
        },
        watch: {},
        methods: {
            showDialog(data) {
                this.title = data.title;
                this.needId = data.id;
                this.visible = true;
                this.getDetail();
            },
            hideDialog() {
                this.visible = false;
                this.formData = {};
            },

            getDetail() {
                getHouseDetail({id: this.needId}).then(res => {
                    console.log(res)
                    if (res.data.status === 200) {
                        this.formData = res.data.data[0]
                    } else {
                        this.$message.warning("网络异常,未获取到数据!");
                    }
                })
            },
        },
    }
</script>

<style lang="scss" scoped>
    .public-header {
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

    .form-box {
        .form-box-header {
            color: #fff;
            font-size: 18px;
            padding: 10px 0 10px 0;
        }

        ::v-deep .el-form-item {
            margin-bottom: 11px;
        }

        ::v-deep .el-form-item__label {
            color: #52daea;
        }

        ::v-deep .el-form-item__content {
            color: #fff;
        }

        .device-box {
            margin-top: 10px !important;
            line-height: 30px;

            p {
                width: 100%;
                height: 30px;
                color: #52daea;
                text-decoration: underline;
                cursor: pointer;
            }

            p2 {
                width: 300px;
                height: 30px;
                color: #e9707e;
                text-decoration: underline;
                cursor: pointer;
                text-indent: 2em;
            }

            p3 {
                width: 300px;
                height: 30px;
                color: #52daea;
                text-decoration: underline;
                cursor: pointer;
                text-indent: 2em;
            }
        }
    }
</style>

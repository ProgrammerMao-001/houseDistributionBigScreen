<template>
    <div class="data-view-header">
        <!-- 图片不带文字的 -->
        <div @click="showDialog" class="data-view-title">{{formData.title}}</div>
        <el-button
                style="position: absolute;right: 50px;top: 20px;background-color: #072b5d!important;border: transparent!important;"
                @click="logOut()"> 退出登陆
        </el-button>

        <el-dialog
                title="自定义大屏标题"
                :visible.sync="visible"
                width="40%"
                :before-close="hideDialog"
                :modal-append-to-body='false'
                :append-to-body="true">
            <div style="width: 90%;margin-top: 20px">
                <el-form :rules="formRules" ref="form" :model="formData" label-width="120px">
                    <el-form-item prop="title" label="标题名称：">
                        <el-input v-model="formData.title" placeholder="请输入标题"></el-input>
                    </el-form-item>
                </el-form>
            </div>
            <span slot="footer" class="dialog-footer">
            <el-button @click="hideDialog">取 消</el-button>
            <el-button type="primary" @click="submitForm">确 定</el-button>
          </span>
        </el-dialog>
    </div>
</template>

<script>
    import {getTitleList, updateTitleList} from "@/api/titleModule";

    export default {
        name: 'DataViewHeader',
        data() {
            return {
                visible: false,
                formData: {
                    id: '',
                    title: '', // 标题
                },
                formRules: {
                    title: [
                        {required: true, validator: this.checkTitle},
                    ],
                }

            }
        },
        methods: {
            /**
             * 退出登陆
             * */
            logOut() {
                this.$confirm('此操作将退出登陆该账号, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    localStorage.clear();
                    this.$router.push('/login');
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消'
                    });
                });
            },

            /**
             * 获取 大屏标题
             * */
            getSystemTitle() {
                getTitleList({}).then(res => {
                    if (res.data.status === 200) {
                        this.formData = res.data.data[0]
                    } else {
                        this.$message.warning('网络异常，请稍后重试。')
                    }
                })
            },

            /**
             * 保存 标题
             * */
            submitForm() {
                const formComponent = this.$refs['form'];
                formComponent.validate((valid) => {
                    if (!valid) {
                        return;
                    } else {
                        console.log(this.formData)
                        updateTitleList(this.formData).then(res => {
                            if (res) {
                                this.$message.success('修改成功！');
                                this.hideDialog();
                                this.getSystemTitle();
                            } else {
                                this.$message.warning(res.data.msg);
                            }
                        })
                    }
                })
            },

            /**
             * 打开 弹窗
             * */
            showDialog() {
                this.visible = true;
            },

            /**
             * 关闭 弹窗
             * */
            hideDialog() {
                this.visible = false;
                this.formData = {};
                this.$refs.form.resetFields()
            },

            /**
             * 表单规则验证
             * */
            checkTitle(rule, value, callback) {
                if (!value) {
                    callback(new Error('标题名称不能为空'));
                } else {
                    if (value.length > 14) {
                        callback(new Error('标题名称不能超过14个字符'));
                    } else {
                        callback();
                    }
                }
            }
        },
        mounted() {
            this.getSystemTitle();
        }
    }
</script>

<style lang="scss" scoped>
    .data-view-header {
        height: 80px;
        /*background-image: url("../../public/img/base/headerOne.png");*/
        background-image: url("../../public/img/base/header.png");
        background-repeat: no-repeat;
        background-position: center;
        width: 100%;

        .data-view-title {
            width: 642px;
            margin: 0 auto;
            cursor: pointer;
            font-size: 34px;
            font-weight: bolder;
            /*color: #D7F0FB;*/
            line-height: 55px;
            text-align: center;
            letter-spacing: 4px;
            background-image: -webkit-linear-gradient(bottom, #d8f2ff, #84d0ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    }

    ::v-deep .el-form-item__label {
        color: #fff !important;
    }

    ::v-deep .el-dialog__footer {
        padding: 0px 20px 0 !important;
    }

</style>

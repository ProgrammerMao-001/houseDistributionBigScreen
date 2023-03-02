<!-- 用户信息弹窗 -->
<template>
    <el-dialog
            title="用户信息"
            :visible.sync="dialogVisible"
            width="50%"
            :modal-append-to-body='false' class="edit-dialog dialog dashboard"
            :append-to-body="true" :close-on-click-modal="false"
            :before-close="hideDialog">

        <div class="main-user-dialog">
            <el-form :model="formData" :rules="formRules" ref="form" label-width="100px" class="">
                <el-row :gutter="24">
                    <el-col :span="24">
                        <el-form-item label="用户名：" prop="username">
                            <el-input disabled v-model="formData.username"
                                      size="small"></el-input>
                        </el-form-item>
                    </el-col>

                    <el-col :span="24">
                        <el-form-item label="密码：" prop="password">
                            <el-input type="password"
                                      v-model="formData.password" size="small"></el-input>
                        </el-form-item>
                    </el-col>

                    <el-col :span="24">
                        <el-form-item label="头像：" prop="fileList">
                            <auto-upload-comp :fileList="fileList"
                                              @on-response="handleRemoveFile"
                                              @getFileList="getFileList"
                                              @getFullPath="getFullPath"
                                              :limit="1"
                                              ref="uploadImg" name="avater"/>
                        </el-form-item>
                    </el-col>
                </el-row>
            </el-form>
        </div>

        <span slot="footer" class="dialog-footer">
    <el-button @click="hideDialog">取 消</el-button>
    <el-button type="primary" @click="submitEdit">确 定</el-button>
  </span>
    </el-dialog>
</template>

<script>
    import autoUploadComp from "@/components/autoUploadComp";
    import {getUserDetail, updateUser} from "@/api/loginModule";

    export default {
        name: "userDialog",
        components: {autoUploadComp},
        data() {
            return {
                dialogVisible: false,
                fileList: [],
                formData: {},
                formRules: {
                    password: [
                        {
                            required: true,
                            validator: this.validatePassword,
                            trigger: 'blur'
                        }
                    ],
                    fileList: [
                        {
                            required: true,
                            // message: '请上传图片',
                            trigger: 'blur',
                            validator: this.validateFileList,
                        }
                    ],
                }
            };
        },
        methods: {
            showDialog(data) {
                this.getUserDetail(data)
                this.dialogVisible = true
            },
            hideDialog() {
                this.dialogVisible = false
                this.$refs.form.resetFields();
                this.$parent.reGetUserInfo()
            },

            /**
             * @desc 密码框的校验
             * 只能输入十个字符，英文和数字组成
             **/
            validatePassword(rule, value, callback) {
                if (value === '') {
                    callback(new Error('请输入密码'));
                } else if (value && /^(?=.*[a-zA-Z])(?=.*\d).+$/.test(value) == false) {
                    callback(new Error('密码必须由英文和数字组成'));
                } else if (value && value.length > 10) {
                    callback(new Error('密码的长度不能大于10位'));
                }
                callback();
            },

            /**
             * @desc 检测是否上传头像
             **/
            validateFileList(rule, value, callback) {
                if (this.fileList.length === 0) {
                    callback(new Error('请先上传头像'));
                } else {
                    callback();
                }
            },

            /**
             * 获取用户详情接口
             * */
            getUserDetail(id) {
                getUserDetail({id}).then(res => {
                    if (res.data.status === 200) {
                        this.formData = res.data.data[0]
                        this.fileList = [{
                            name: res.data.data[0].picname,
                            url: res.data.data[0].headimg
                        }]
                    }
                })
            },

            /**
             * 点击确定 --- 编辑用户信息
             * */
            submitEdit() {
                this.$confirm('是否确认编辑用户信息?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.updateUser()
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消修改'
                    });
                });
            },

            updateUser() {
                (this.$refs.form).validate((valid) => {
                    if (valid) {
                        updateUser(this.formData).then(res => {
                            if (res.status === 200) {
                                this.$message.success('修改成功,请重新登陆！')
                                this.hideDialog()
                                this.$router.push("/login")
                                localStorage.clear()
                            } else {
                                this.$message.error('网络错误，请稍后再试！')
                            }
                        })
                    } else {
                        return false;
                    }
                });
            },

            /* 以下是图片上传相关的代码 */

            handleRemoveFile() {
                this.fileList = []
            },

            getFileList(data) {
            },

            getFullPath(data) {
                this.formData.headimg = data.url
                this.fileList.push(data)
            },
            /* 以上是图片上传相关的代码 */
        }
    }
</script>

<style lang="scss" scoped>

</style>

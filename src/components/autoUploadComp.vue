<template>
    <div class="upload">
        <el-upload
                ref="upload"
                list-type="picture-card"
                :action="actionUrl"
                :class="{hide:isUpload}"
                :auto-upload="true"
                :http-request="upload"
                :limit="limit"
                :file-list="fileList"
                :accept="accept"
                :name="name"
                :on-change="handleChange"
                :on-exceed="handleExceed"
                :on-success="handleSuccess"
                :on-remove="handleRemove"
        >
            <i slot="default" class="el-icon-plus"></i>
            <div slot="file" slot-scope="{ file }">
                <img class="el-upload-list__item-thumbnail" :src="file.url" alt=""/>
                <span class="el-upload-list__item-actions">
                     <span
                             class="el-upload-list__item-preview"
                             @click="handlePictureCardPreview(file)"
                     >
            <i class="el-icon-zoom-in"></i>
          </span>
          <span
                  v-if="!disabled"
                  class="el-upload-list__item-delete"
                  @click="handleRemove(file)"
          >
            <i class="el-icon-delete"></i>
                    </span>
                 </span>
            </div>
        </el-upload>
        <el-dialog :modal-append-to-body='false' class="edit-dialog dialog dashboard"
                   :append-to-body="true" :visible.sync="dialogVisible">
            <img width="100%" :src="dialogImageUrl" alt=""/>
        </el-dialog>
    </div>
</template>

<script>
    import axios from 'axios';

    export default {
        name: "autoUploadComp",
        props: {
            accept: {},
            limit: {},
            name: {},
            fileList: {},
        },
        data() {
            return {
                dialogImageUrl: "",
                dialogVisible: false,
                disabled: false,
                isUpload: false,
                actionUrl: axios.defaults.baseURL + '/api/upload'
            }
        },
        methods: {
            handleChange(file, fileList) {
                // ????????????????????????????????????
                this.isUpload = fileList.length >= this.limit
                // ???????????????????????????false,before-upload????????????????????????on-change?????????????????????????????????
                const isJPG = ~["image/jpeg", "image/png"].indexOf(file.raw.type);
                // const isLt2M = file.raw.size / 1024 / 1024 < 2;
                if (!isJPG) {
                    this.$message.error("????????????????????? jpg ??????!")
                }
                // if (!isLt2M) {
                //     this.$message.error("???????????????????????????????????? 2MB!")
                // }
                if (!isJPG) {
                    // ??????????????????????????????
                    this.handleRemove(file)
                }
            },

            // ????????????
            handleRemove(file) {
                // let fileList = (this.$refs.upload).uploadFiles;
                // let index = fileList.findIndex((fileItem) => {
                //     return fileItem.uid === file.uid;
                // });
                // fileList.splice(index, 1);

                // ???????????????????????????fileList
                this.$emit('on-response'); // ??????????????????????????????????????????????????????????????????
                // ???????????????????????????????????????????????????
                setTimeout(() => {
                    this.isUpload = false
                }, 1000)
            },

            // ????????????
            handlePictureCardPreview(file) {
                this.dialogImageUrl = file.url;
                this.dialogVisible = true;
            },

            // ???????????????????????????
            handleExceed(file, fileList) {
                this.$message.error("????????????????????????");
            },

            // ???????????????????????????
            handleSuccess(file, fileList) {
                this.fileList.push({
                    name: fileList.name,
                    url: fileList.url
                })
                console.log(file, fileList)
                // ??????????????????????????? getFileList ??????????????????
                this.$emit('getFileList', this.fileList)
            },

            async upload() {
                // ????????????multer??????????????????????????????formdata???????????????
                const formData = new FormData();
                // ???????????????????????????
                const file = (this.$refs.upload).uploadFiles;
                // ???????????????
                const headerConfig = {
                    headers: {"Content-Type": "multipart/form-data"}
                };
                // ?????? ??????????????????
                // ??????????????????????????????????????????????????? "file"
                file.forEach((item) => {
                    formData.append("file", item.raw);
                });
                let {data: res} = await (this).$axios.post(
                    "/api/upload",
                    formData,
                    headerConfig
                ).then((res) => {
                    // ??????????????????????????? getFullPath ??????????????????
                    let data = {
                        name: res.data.resData.name,
                        url: axios.defaults.baseURL + 'api/getImg?url=' + res.data.resData.url
                    }
                    this.$emit('getFullPath', data)
                });
            },
        },
        created() {
        }
    }
</script>

<style lang="scss" scoped>
    // ???????????????none????????????????????????????????????
    ::v-deep .hide .el-upload--picture-card {
        display: none;
    }

    .avatar-uploader .el-upload {
        border: 1px dashed #d9d9d9;
        border-radius: 6px;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

    .avatar-uploader-icon:hover {
        border-color: #409EFF !important;
    }

    .avatar-uploader-icon {
        font-size: 28px;
        color: #8c939d;
        width: 80px;
        height: 80px;
        line-height: 80px;
        text-align: center;
        border: 1px dashed #d9d9d9;
    }

    .avatar {
        width: 120px;
        height: 120px;
        display: block;
    }
</style>


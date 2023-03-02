<template>
    <div class="lbox1">
        <el-image
                style="width: 50px; height: 50px;border-radius: 50%"
                :src="userInfo.headimg"
                :preview-src-list="[userInfo.headimg]">
        </el-image>

        <span> {{ userInfo.username }} </span>

        <el-button size="small" style="height: 30px" @click="showUserDialog"> 查看</el-button>
        <userDialog ref="userDialog"/>
    </div>
</template>

<script>
    import userDialog from "@/views/leftContent/userDialog";

    export default {
        name: "lBox1",
        components: {userDialog},
        data() {
            return {
                userInfo: {}
            }
        },
        methods: {
            showUserDialog() {
                console.log(this.userInfo)
                this.$refs.userDialog.showDialog(this.userInfo.id)
            },

            reGetUserInfo() {
                this.userInfo = JSON.parse(localStorage.getItem('userInfo'))
            }
        },
        created() {
            this.userInfo = JSON.parse(localStorage.getItem('userInfo'))
        }
    }
</script>

<style lang="scss" scoped>
    .lbox1 {
        width: 96%;
        margin: 10px auto;
        height: 60px;
        display: flex;
        align-items: center;

        span {
            margin: 0 20px 0 10px;
            color: white;
        }
    }

</style>


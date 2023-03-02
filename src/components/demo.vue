<!-- 测试数据请求的页面 -->
<template>
    <div>

    </div>
</template>

<script>
    import { getTitleList } from "@/api/titleModule";

    export default {
        name: "demo",
        data() {
            return {

            }
        },
        methods: {

        },
        created() {
            getTitleList().then(res => {
                console.log(res)
            })
        }
    }
</script>

<style scoped>

</style>

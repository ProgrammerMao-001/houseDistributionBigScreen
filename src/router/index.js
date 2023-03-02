import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/home.vue'

Vue.use(VueRouter)

const routes = [
    {
        path: "/",
        name: "Home",
        component: Home,
        meta: {
            title: "太原市房屋数字化大屏",
        },
    },
    {
        path: "/login",
        name: "Login",
        meta: {
            title: "登陆注册",
        },
        component: () => import(/* webpackChunkName: "login" */ '../views/login/login.vue')
    },
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

// 导航守卫
// 使用 router.beforeEach 注册一个全局前置守卫，判断用户是否登陆(如果没登录就退出到登陆页面)
router.beforeEach((to, from, next) => {
    if (to.path === '/login') {
        next();
    } else {
        let userInfo = localStorage.getItem('userInfo');
        if (userInfo === null || userInfo === '' || userInfo === undefined || !userInfo) {
            next('/login');
        } else {
            next();
        }
    }
});
export default router

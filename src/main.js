import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios";
import ElementUI from 'element-ui'
import "element-ui/lib/theme-chalk/index.css";

Vue.config.productionTip = false
Vue.prototype.$axios = axios;
Vue.use(ElementUI);
// 引入全局css
import './assets/scss/style.scss';
/**
 * todo 路由发生变化修改页面title
 * 路由守卫
 * 刷新也不失效
 * 必须放在路由挂载前
 * */

router.beforeEach((to, from, next) => {
    if (to.meta.title) {
        document.title = to.meta.title;
    }
    next();
});

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')

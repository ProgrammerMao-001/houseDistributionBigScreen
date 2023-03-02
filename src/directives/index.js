/* todo 全局批量注册自定义指令 */
import elDragDialog from "./el-dragDialog"

// 自定义指令
const directives = {
  elDragDialog,
}

export default {
  install(Vue) {
    Object.keys(directives).forEach((key) => {
      Vue.directive(key, directives[key])
    })
  },
}

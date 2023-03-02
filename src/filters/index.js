import {formatDateFilter} from '@/filters/date'

const install = function(Vue) {
    Vue.filter('formatDate', formatDateFilter)
};

export default { install }

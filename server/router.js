// 用于配置对应路由
let express = require('express')
let router = express.Router()
let loginModule = require('./API/loginModule')
let picModule = require('./API/picModule')
let titleModule = require('./API/titleModule')
let houseModule = require('./API/houseModule')
let cityModule = require('./API/cityModule')

router.get('/', (req, res) => {
    res.send('express启动成功!');
})

/* 用户模块 */
router.get('/getPicCode', loginModule.getPicCode); // 图片验证码
router.post('/login', loginModule.login) // 登陆
router.post('/register', loginModule.register) // 注册
router.get('/getUserDetail', loginModule.getUserDetail) // 用户详情
router.get('/deleteUser', loginModule.deleteUser) // 注销用户
router.post('/updateUser', loginModule.updateUser) // 编辑用户

/* 图片模块 */
router.post('/upload', picModule.upload) // 图片上传
router.get('/getImg', picModule.getImg) // 图片预览（获取图片完整的地址）

/* 标题模块 */
router.get('/getTitleList', titleModule.getTitleList) // 获取大屏标题
router.post('/updateTitleList', titleModule.updateTitleList) // 编辑大屏标题

/* 房屋模块 */
router.get('/getHouseTableByCity', houseModule.getHouseTableByCity) // 获取大屏所有数据
router.get('/getHouseDetail', houseModule.getHouseDetail) // 获取单个数据详情

/* 区县模块 */
router.get('/getCityList', cityModule.getCityList) // 获取大屏所有数据

module.exports = router

// 用于配置对应路由
let express = require('express')
let router = express.Router()
let routerList = require('./API/routerList')
let loginList = require('./API/loginList')
let roleList = require('./API/roleList')
let uploadList = require('./API/upload')
let fixPeopleList = require('./API/fixPeopleList')
let roomlist = require('./API/roomlist')
let editRoomList = require('./API/editRoomList')
let willFixList = require('./API/willFixList')
router.get('/', (req, res) => {
    res.send('express启动成功!');
})

/* /sysManage/menuConfig 菜单配置模块 未使用，但接口有用（应该，没做测试） */
router.get('/getList', routerList.getList)
router.post('/addRouter', routerList.addRouter)
router.get('/deleteRouter', routerList.deleteRouter)
router.post('/updateRouter', routerList.updateRouter)
router.get('/getRouterListByNameUrl', routerList.getRouterListByNameUrl)
/* /sysManage/menuConfig 菜单配置模块 未使用，但接口有用（应该，没做测试） */

/* 用户管理 */
router.get('/getPicCode', loginList.getPicCode); // 图片验证码
router.post('/login', loginList.login) // 登陆
router.post('/register', loginList.register) // 注册
router.get('/getUserByUserName', loginList.getUserByUserName) // 用户管理 --- 所有的用户表数据（查询）
router.get('/getUserDetail', loginList.getUserDetail) // 用户管理 --- 用户的详情
router.get('/deleteUser', loginList.deleteUser) // 用户管理 --- 删除用户
router.post('/updateUser', loginList.updateUser) // 用户管理 --- 编辑用户
/* 用户管理 */

/* 角色管理 */
router.get('/getRoleListByName', roleList.getRoleListByName) // 角色管理 --- 所有角色表数据（查询）
/* 角色管理 */

/* 图片相关 */
router.post('/upload', uploadList.upload) // 图片上传
router.get('/getImg', uploadList.getImg) // 图片预览（获取图片完整的地址）
/* 图片相关 */

/* 维修工模块 */
router.get('/getFixPeopleListByName', fixPeopleList.getFixPeopleListByName) // 维修工列表（查询）
router.post('/addFixPeopleList', fixPeopleList.addFixPeopleList) // 新增维修工
router.post('/updateFixPeople', fixPeopleList.updateFixPeople) // 编辑维修工
router.get('/getFixPeopleDetail', fixPeopleList.getFixPeopleDetail) // 维修工详情
router.get('/delFixPeople', fixPeopleList.delFixPeople) // 删除维修工
/* 维修工模块 */

/* 寝室管理模块 */
router.get('/getRoomlistByRoomnumber', roomlist.getRoomlistByRoomnumber) // 寝室列表（查询）
router.post('/addRoomList', roomlist.addRoomList) // 新增寝室
router.post('/updateRoomList', roomlist.updateRoomList) // 编辑寝室
router.get('/deleteRoomList', roomlist.deleteRoomList) // 删除寝室
router.get('/getRoomDetail', roomlist.getRoomDetail) // 寝室详情
/* 寝室管理模块 */

/* 退寝申请 */
router.get('/getEditRoomListByApplicant', editRoomList.getEditRoomListByApplicant) // 退寝记录列表（查询）
router.get('/deleteEditRoomList', editRoomList.deleteEditRoomList) // 删除退寝记录
router.post('/addEditRoomList', editRoomList.addEditRoomList) // 新增退寝记录
/* 退寝申请 */

/* 维修模块 */
router.get('/getWillFixListByNameId', willFixList.getWillFixListByNameId) // 维修管理列表（查询）
router.get('/getWillFixDetail', willFixList.getWillFixDetail) // 维修单详情
router.get('/deleteWillFixList', willFixList.deleteWillFixList) // 删除维修单
router.post('/addWillFixList', willFixList.addWillFixList) // 新增维修单
router.post('/updateWillFixList', willFixList.updateWillFixList) // 编辑维修单
/* 维修模块 */

module.exports = router

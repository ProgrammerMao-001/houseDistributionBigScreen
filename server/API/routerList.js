// todo /sysManage/menuConfig 页面需要的接口数据 --- 配置菜单
// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")
// 获取所有数据
exports.getList = (req, res) => {
    let sql = 'select * from routerlist'
    db.query(sql, (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        res.send({
            status: 200,
            message: "success",
            data
        })
    })
}

// POST 添加数据
// todo will fix 如果表中存在待添加的数据，就抛错
// 需要传入的参数(必填) =》 名称：name、地址：url、图标：icon、id(null)、pid(如果选择了则传选中行对应的id，否则传null)
exports.addRouter = (req, res) => {
    let id = makeUuid()
    var sql = `INSERT INTO routerlist (name,url,icon,id,pid) VALUES (?,?,?,?,?)`
    db.query(sql, [req.body.name, req.body.url, req.body.icon, id, req.body.pid], (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        // data.affectedRows：bady的数据长度
        if (data.affectedRows > 0) {
            res.send({
                status: 200,
                message: 'success'
            })
        } else {
            res.send({
                status: 500,
                message: '服务器错误，请联系管理员。'
            })
        }
    })
}

// GET 删除数据
// 需要传入的参数 =》 id(必填)
exports.deleteRouter = (req, res) => {
    let sql = `DELETE FROM routerlist WHERE id = "${req.query.id}"`
    db.query(sql, (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        res.send({
            status: 200,
            message: 'success'
        })
    })
}

// POST 编辑数据
// 需要传入的参数 =》 名称：name、地址：url、图标：icon、pid(如果选择了则传选中行对应的id)、id(本项的id(必填))
exports.updateRouter = (req, res) => {
    var sql = 'UPDATE routerlist SET name = ?, url = ?, icon = ?, pid = ? where id = ?'
    db.query(sql, [req.body.name, req.body.url, req.body.icon, req.body.pid, req.body.id], (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        if (data.changedRows > 0) {
            res.send({
                status: 200,
                message: 'success'
            })
        } else {
            res.send({
                status: 500,
                message: '服务器错误，请联系管理员。'
            })
        }
    })
}

// GET 查询数据
// 需要传入的参数 =》 名称：name、地址：url（都不传则默认所有数据）
exports.getRouterListByNameUrl = (req, res) => {
    let sql = 'SELECT * FROM routerlist';
    let obj = req.query;
    if (!obj) sql = 'SELECT name,url FROM routerlist'
    if (obj.url && !obj.name) sql = `SELECT * FROM routerlist WHERE url = "${obj.url}"`
    if (obj.name && !obj.url) sql = `SELECT * FROM routerlist WHERE name = "${obj.name}"`
    if (obj.url && obj.name) sql = `SELECT * FROM routerlist WHERE name = "${obj.name}" AND url = "${obj.url}"`
    // console.log(sql)
    db.query(sql, (err, data, fields) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        res.send({
            status: 200,
            message: "success",
            data
        });
    })
}

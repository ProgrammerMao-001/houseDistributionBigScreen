// 维修模块的接口（申请维修、维修管理）
// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")

// GET 查询数据
// 需要传入的参数 =》 nameid：申请人的id （都不传则默认所有数据）
exports.getWillFixListByNameId = (req, res) => {
    let sql = 'SELECT * FROM willfixlist';
    let obj = req.query;
    if (obj.nameid) sql = `SELECT * FROM willfixlist WHERE nameid = "${obj.nameid}"`
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

// GET 获取维修单详情接口
// 需要传入的参数 =》 nameid：id
exports.getWillFixDetail = (req, res) => {
    // 根据条件查询数据库表单的数据
    const sql = `SELECT * FROM willfixlist WHERE id = '${req.query.id}'`
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

// GET 删除数据
// 需要传入的参数 =》 id(必填)
exports.deleteWillFixList = (req, res) => {
    let sql = `DELETE FROM willfixlist WHERE id = "${req.query.id}"`
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

// POST 新增
// 需要传入的参数(必填) =》
// id --- 后台生成
// 申请人：name
// 申请人id：nameid
// 申请人联系方式：namephone
// 维修工名称：fixname
// 维修工id：fixid
// 维修工联系方式：fixphone
// 时间：date --- 后台生成
// 图片：photo
// 申请原因：reason
// 房间号: room
// 状态: state （未通过、通过、拒绝）
exports.addWillFixList = (req, res) => {
    let id = makeUuid()
    const body = req.body
    // 插入数据
    const sqlint = 'INSERT INTO willfixlist SET ?'
    db.query(sqlint,
        {
            id: id,
            name: body.name,
            nameid: body.nameid,
            namephone: body.namephone,
            fixname: body.fixname,
            fixid: body.fixid,
            fixphone: body.fixphone,
            date: new Date().toLocaleString(),
            photo: body.photo,
            reason: body.reason,
            room: body.room,
            state: body.state,
        }, (err, result) => {
            if (err) return res.cc(err)
            if (!result.affectedRows) return res.cc('新增失败')
            res.send({
                status: 200,
                data: 'ok',
                message: '新增成功'
            })
        })
}


// POST 编辑数据
// 需要传入的参数(必填) =》
// id
// 申请人：name
// 申请人id：nameid
// 申请人联系方式：namephone
// 维修工名称：fixname
// 维修工id：fixid
// 维修工联系方式：fixphone
// 时间：date --- 后台生成
// 图片：photo
// 申请原因：reason
// 房间号: room
// 状态: state （未处理、通过、拒绝）
exports.updateWillFixList = (req, res) => {
    let sql = 'UPDATE willfixlist SET name = ?, nameid = ?, namephone = ?, fixname = ?, fixid = ?, fixphone = ?, date = ?, photo = ?, reason = ?, room = ?, state = ? where id = ?'
    let arr = [req.body.name, req.body.nameid, req.body.namephone, req.body.fixname, req.body.fixid, req.body.fixphone, new Date().toLocaleString(), req.body.photo, req.body.reason, req.body.room, req.body.state, req.body.id]
    db.query(sql, arr, (err, data) => {
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

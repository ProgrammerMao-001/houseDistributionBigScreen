// 维修工模块的接口
// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")

// GET 查询数据
// 需要传入的参数 =》 房间号：roomnumber （都不传则默认所有数据）
exports.getRoomlistByRoomnumber = (req, res) => {
    let sql = 'SELECT * FROM roomlist';
    let obj = req.query;
    if (obj.roomnumber) sql = `SELECT * FROM roomlist WHERE roomnumber = "${obj.roomnumber}"`
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


// POST 新增
// 需要传入的参数(必填) =》
// id --- 后台生成
// 房间号：roomnumber
// 房间单价：prize
// 房间实际可住人数：totalnumber
// 房间目前入住人数：nownumber
// 实际金额：totalprize = nownumber * prize（后台生成）
// 多个教师id字符串：ids
// 房间还能入住人数：cannumber = totalnumber - nownumber（后台生成）
// 多个教师字符串：teachers

exports.addRoomList = (req, res) => {
    let id = makeUuid()
    const body = req.body
    // 查询数据库 *(所有) 表单为 roomnumber 里 所有roomnumber   ? 为占位符代表条件
    const query = 'SELECT * FROM roomlist WHERE roomnumber=?'
    // ()  第一位为sql语句   第二位为占位符的条件
    db.query(query, body.roomnumber, (err, result) => {
        // err 为执行错误信息    result为数据
        if (err) return res.cc(err);
        // 判断影响行数  能查询到证明数据库表单里存在这个值
        if (result.length > 0) {
            res.send({
                status: 403,
                data: 'ok',
                message: '房间号已存在'
            })
        } else {
            // 插入数据
            const sqlint = 'INSERT INTO roomlist SET ?'
            db.query(sqlint,
                {
                    id: id,
                    roomnumber: body.roomnumber,
                    prize: body.prize,
                    totalnumber: body.totalnumber,
                    nownumber: body.nownumber,
                    totalprize: parseInt(body.nownumber) * parseInt(body.prize),
                    ids: body.ids,
                    cannumber: parseInt(body.totalnumber) - parseInt(body.nownumber),
                    teachers: body.teachers,
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
    })
}

// POST 编辑数据
// 需要传入的参数(必填) =》
// id
// 房间号：roomnumber
// 房间单价：prize
// 房间实际可住人数：totalnumber
// 房间目前入住人数：nownumber
// 实际金额：totalprize = nownumber * prize（后台生成）
// 多个教师id字符串：ids
// 房间还能入住人数：cannumber = totalnumber - nownumber（后台生成）
// 多个教师字符串：teachers

exports.updateRoomList = (req, res) => {
    var sql = 'UPDATE roomlist SET roomnumber = ?, prize = ?, totalnumber = ?, nownumber = ?, totalprize = ?, ids = ?, cannumber = ?, teachers = ? where id = ?'
    db.query(sql, [req.body.roomnumber, req.body.prize, req.body.totalnumber, req.body.nownumber, parseInt(req.body.nownumber) * parseInt(req.body.prize), req.body.ids, parseInt(req.body.totalnumber) - parseInt(req.body.nownumber), req.body.teachers, req.body.id], (err, data) => {
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


// GET 删除数据
// 需要传入的参数 =》 id(必填)
exports.deleteRoomList = (req, res) => {
    let sql = `DELETE FROM roomlist WHERE id = "${req.query.id}"`
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


// GET 获取单条用户详情接口
// 需要传入的参数 =》 id：id
exports.getRoomDetail = (req, res) => {
    // 根据条件查询数据库表单的数据
    const sql = `SELECT * FROM roomlist WHERE id = '${req.query.id}'`
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

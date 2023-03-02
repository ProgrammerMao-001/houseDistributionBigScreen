// 维修工模块的接口
// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")

// GET 查询数据
// 需要传入的参数 =》 名称：name （都不传则默认所有数据）
exports.getFixPeopleListByName = (req, res) => {
    let sql = 'SELECT * FROM fixpeoplelist';
    let obj = req.query;
    if (obj.name) sql = `SELECT * FROM fixpeoplelist WHERE name = "${obj.name}"`
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
// 姓名：name
// 性别：sex （默认 女）
// 工作年限：yearnumber
// 联系方式：phonenumber
exports.addFixPeopleList = (req, res) => {
    let id = makeUuid()
    const body = req.body
    // 查询数据库 *(所有) 表单为 fixpeoplelist 里 所有name   ? 为占位符代表条件
    const query = 'SELECT * FROM fixpeoplelist WHERE name=?'
    // ()  第一位为sql语句   第二位为占位符的条件
    db.query(query, body.name, (err, result) => {
        // err 为执行错误信息    result为数据
        if (err) return res.cc(err);
        // 判断影响行数  能查询到证明数据库表单里存在这个值
        if (result.length > 0) {
            // return res.cc('用户名已存在')
            res.send({
                status: 403,
                data: 'ok',
                message: '维修工已存在'
            })
        } else {
            // 插入数据
            const sqlint = 'INSERT INTO fixpeoplelist SET ?'
            db.query(sqlint,
                {
                    id: id,
                    name: body.name,
                    sex: body.sex || '女',
                    yearnumber: body.yearnumber,
                    phonenumber: body.phonenumber,
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

// GET 获取单条用户详情接口
// 需要传入的参数 =》 id：id
exports.getFixPeopleDetail = (req, res) => {
    // 根据条件查询数据库表单的数据
    const sql = `SELECT * FROM fixpeoplelist WHERE id = '${req.query.id}'`
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

// POST 编辑
// 需要传入的参数(必填) =》
// id
// 姓名：name
// 性别：sex （默认 女）
// 工作年限：yearnumber
// 联系方式：phonenumber
exports.updateFixPeople = (req, res) => {
    let sql = 'UPDATE fixpeoplelist SET name = ?, `sex` = ?, `yearnumber` = ?, `phonenumber` = ? where `id` = ?'
    let arr = [req.body.name, req.body.sex, req.body.yearnumber, req.body.phonenumber, req.body.id]
    db.query(sql, arr, (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        if (data.changedRows > 0) {
            console.log(sql)
            res.send({
                status: 200,
                message: 'success',
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
exports.delFixPeople = (req, res) => {
    let sql = `DELETE FROM fixpeoplelist WHERE id = "${req.query.id}"`
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

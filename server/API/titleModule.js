// 用于操作数据库
let db = require('../db/index')

// GET 查询数据
// 需要传入的参数 =》 名称：name （都不传则默认所有数据）
exports.getTitleList = (req, res) => {
    let sql = 'SELECT * FROM titlelist';
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


// POST 编辑数据
// 需要传入的参数(必填) =》
// id
// 标题 title
exports.updateTitleList = (req, res) => {
    var sql = 'UPDATE titlelist SET title = ? where id = ?'
    db.query(sql, [req.body.title, req.body.id], (err, data) => {
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

// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")

// GET 获取太原市下面的所有区的数据
exports.getCityList = (req, res) => {
    let sql = 'SELECT * FROM citylist';
    let obj = req.query;
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

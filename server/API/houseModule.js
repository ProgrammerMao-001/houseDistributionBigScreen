// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")

// GET 根据城市名查询数据
// 需要传入的参数 =》 名称：city （都不传则默认所有数据）
exports.getHouseTableByCity = (req, res) => {
    let sql = 'SELECT * FROM housetable';
    let obj = req.query;
    if (obj.city) sql = `SELECT * FROM housetable WHERE city = "${obj.city}"`
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

// GET 根据销售名称查询数据
// 需要传入的参数 =》 名称：sellname （都不传则默认所有数据）
exports.getHouseTableBySellName = (req, res) => {
    let sql = 'SELECT * FROM housetable';
    let obj = req.query;
    if (obj.sellname) sql = `SELECT * FROM housetable WHERE sellname = "${obj.sellname}"`
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

// GET 获取单个点位的详情接口
// 需要传入的参数 =》 id：id
exports.getHouseDetail = (req, res) => {
    // 根据条件查询数据库表单的数据
    const sql = `SELECT * FROM housetable WHERE id = '${req.query.id}'`
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

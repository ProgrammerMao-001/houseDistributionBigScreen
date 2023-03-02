// 退寝申请
// 用于操作数据库
let db = require('../db/index')
const makeUuid = require('../utils/makeUuid')

// GET 查询数据
// 需要传入的参数 =》 申请人名称：applicant （都不传则默认所有数据）
exports.getEditRoomListByApplicant = (req, res) => {
    let sql = 'SELECT * FROM editroomlist';
    let obj = req.query;
    if (obj.applicant) sql = `SELECT * FROM editroomlist WHERE applicant = "${obj.applicant}"`
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
// 申请人：applicant
// 申请人联系方式：applicanphone
// 申请人id：applicantid
// 状态：state (后台写入 --- 成功)
exports.addEditRoomList = (req, res) => {
    let id = makeUuid()
    const body = req.body
    // 插入数据
    const sqlint = 'INSERT INTO editroomlist SET ?'
    db.query(sqlint,
        {
            id: id,
            roomnumber: body.roomnumber,
            applicant: body.applicant,
            applicanphone: body.applicanphone,
            applicantid: body.applicantid,
            state: '成功',
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

// GET 删除数据
// 需要传入的参数 =》 id(必填)
exports.deleteEditRoomList = (req, res) => {
    let sql = `DELETE FROM editroomlist WHERE id = "${req.query.id}"`
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

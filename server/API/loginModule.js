// 用于操作数据库
let db = require('../db/index')
let makeUuid = require("../utils/makeUuid")
let makeToken = require("../utils/makeToken")
let flatten = require("../utils/flatten")

// 加载图片验证码模块
const svgCaptcha = require("svg-captcha")

// GET 图片验证码接口
exports.getPicCode = (req, res) => {
    // 设置字母随机验证码相关属性
    let options = {
        size: 4, // 验证码长度
        noise: 3, // 干扰线2条
        color: true, // 文字颜色
        background: "#f5f7fa", // 验证码图片背景颜色
        // ignoreChars: '0o1i', // 验证码字符中排除 0o1i
        width: 94, // width of captcha
        height: 34, // height of captcha
        fontSize: 50, // captcha text size
        charPreset: '123456789' // random character preset
        // 数字的时候，设置下面属性。最大，最小，加或者减
        // mathMin: 1,
        // mathMax: 30,
        // mathOperator: "+",
    }
    //这里可以分为字母和数字随机验证码和数字算数随机验证码,
    //如果想尝试数字算数随机验证码可以将下一行取消注释,将数字算数验证码解开注释即可
    let captcha = svgCaptcha.create(options) //字母和数字随机验证码
    // let captcha = svgCaptcha.createMathExpr(options) //数字算数随机验证码
    let {text, data} = captcha
    // text是指产生的验证码，data指svg的字节流信息
    res.type("svg")
    res.send({
        img: captcha.data,
        str: captcha.text
    })
}

// POST 注册的接口
// 需要传入的参数(必填) =》
// id --- 后台生成
// 用户名：username
// 密码：password
// 头像：headimg --- https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg
exports.register = (req, res) => {
    let id = makeUuid()
    let token = makeToken()
    const body = req.body
    // 查询数据库 *(所有) 表单为 userlist 里 所有username   ? 为占位符代表条件
    const query = 'SELECT * FROM userlist WHERE username=?'
    // ()  第一位为sql语句   第二位为占位符的条件
    db.query(query, body.username, (err, result) => {
        // err 为执行错误信息    result为数据
        if (err) return res.cc(err);
        // 判断影响行数  能查询到证明数据库表单里存在这个值
        if (result.length > 0) {
            // return res.cc('用户名已存在')
            res.send({
                status: 403,
                data: 'ok',
                message: '用户名已存在'
            })
        } else {
            // 插入数据
            const sqlint = 'INSERT INTO userlist SET ?'
            db.query(sqlint,
                {
                    id: id,
                    username: body.username,
                    password: body.password,
                    headimg: body.headimg || 'https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg',
                }, (err, result) => {
                    if (err) return res.cc(err)
                    if (!result.affectedRows) return res.cc('注册失败')
                    res.send({
                        status: 200,
                        data: 'ok',
                        message: '注册成功'
                    })
                })
        }
    })
}

// POST 登陆的接口
exports.login = (req, res) => {
    let {
        username,
        password
    } = req.body;
    // 查询语句
    let sql = 'SELECT * FROM userlist WHERE username = ?'
    db.query(sql, [username], (err, data) => {
        if (err) {
            return res.send('错误：' + err.message)
        }
        if (!data.length) {
            return res.send({
                status: 101404,
                msg: '账号不存在'
            })
        } else {
            if (data[0].password === password) {
                return res.send({
                    status: 200,
                    msg: '登录成功',
                    userInfo: data[0]
                })
            }
            return res.send({
                status: 101101,
                msg: '密码错误'
            })
        }
    })
}

// POST 编辑用户
// 需要传入的参数(必填) =》
// id --- (必填)
// 用户名：username
// 密码：password
// 头像：headimg --- https://img-blog.csdnimg.cn/img_convert/2e1955b703679764792778c8efb15617.jpeg（默认的）
exports.updateUser = (req, res) => {
    console.log(req.body)
    let sql = 'UPDATE userlist SET username = ?, `headimg` = ?, `password` = ? where `id` = ?'
    let arr = [req.body.username, req.body.headimg, req.body.password, req.body.id]
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

// GET 获取单条用户详情接口
// 需要传入的参数 =》 id：id
exports.getUserDetail = (req, res) => {
    // 根据条件查询数据库表单的数据
    const sql = `SELECT * FROM userlist WHERE id = '${req.query.id}'`
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

// GET 用户注销
// 需要传入的参数 =》 id(必填)
exports.deleteUser = (req, res) => {
    let sql = `DELETE FROM userlist WHERE id = "${req.query.id}"`
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

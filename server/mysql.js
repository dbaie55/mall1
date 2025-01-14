//连接数据库
const mysql = require('mysql')

//创建数据库连接
const client = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Qq1051459394',
    database: 'db_mall',
    // port:'3306'
})

//封装数据库操作语句 sql语句 参数数组arr  callback成功函数结果
function sqlFn(sql, arr, callback) {
    client.query(sql, arr, function (error, result) {
        if (error) {
            console.log(error);
            console.log('数据库语句错误');
            return;
        }
        callback(result)
    })
}
// 测试数据库是否连接成功
client.connect(function (err) {
    if (err) {
        console.error('数据库连接失败: ' + err.stack);
        return;
    }
    console.log('数据库连接成功，连接ID为: ' + client.threadId);
});

module.exports = sqlFn

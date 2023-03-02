/* 生成id */
module.exports = function makeToken() {
  return Number(Math.random().toString().substr(3, 6) + Date.now()).toString(
    36
  );
};

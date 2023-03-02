module.exports = function makeToken() {
    return 'token-' + Number(Math.random().toString().substr(3, 30) + Date.now()).toString(36);
}

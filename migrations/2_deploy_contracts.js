const Pool = artifacts.require('Pool');
module.exports = function (deployer, network, accounts) {
  //const initialAccount = accounts[0];
  deployer.deploy(Pool);

};

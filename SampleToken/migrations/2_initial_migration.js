var SampleToken = artifacts.require("SampleToken");

module.exports = function(deployer) {
  deployer.deploy(SampleToken, "PV First Token", "PVFT", 10000, 18);
}
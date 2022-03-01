const ERC721preset = artifacts.require("ERC721PresetMinterPauserAutoId");

module.exports = function(deployer) {
    deployer.deploy(ERC721preset,"Patito Feo","PF","https://gateway.pinata.cloud/ipfs/QmXQzXW3gETFdoWR1JJHCpbcBG9nFw8f2XEtLPMckdFMX7");
}
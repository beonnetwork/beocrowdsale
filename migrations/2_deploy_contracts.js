const BEOCrowdsaleFactory = artifacts.require('BEOCrowdsaleFactory.sol')
const BEORefundableCrowdsaleFactory = artifacts.require('BEORefundableCrowdsaleFactory.sol')

module.exports = deployer => {
  const args = process.argv.slice()
  deployer.deploy(BEOCrowdsaleFactory)
  deployer.deploy(BEORefundableCrowdsaleFactory)
}

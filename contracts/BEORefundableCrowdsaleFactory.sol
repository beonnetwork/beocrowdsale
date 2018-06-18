pragma solidity ^0.4.15;
import "./Factory.sol";
import "./BEORefundableCrowdsale.sol";

contract BEORefundableCrowdsaleFactory is Factory {

    function create(uint256 _openingTime,
      uint256 _closingTime,
      uint256 _rate,
      address _wallet,
      uint256 _cap,
      ERC20 _token,
      uint256 _goal)
        public
        returns (address crowdsale)
    {
        crowdsale = new BEORefundableCrowdsale(_openingTime, _closingTime, _rate, _wallet, _cap, _token, _goal);
        register(crowdsale);
    }

}

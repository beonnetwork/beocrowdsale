pragma solidity ^0.4.15;
import "./Factory.sol";
import "./BEOCrowdsale.sol";

contract BEOCrowdsaleFactory is Factory {

    function create(uint256 _rate,
      address _wallet,
      uint256 _cap,
      ERC20 _token)
        public
        returns (address crowdsale)
    {
        crowdsale = new BEOCrowdsale(_rate, _wallet, _cap, _token);
        register(crowdsale);
    }

}

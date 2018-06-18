pragma solidity ^0.4.24;

import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/IndividuallyCappedCrowdsale.sol";
import "zeppelin-solidity/contracts/math/SafeMath.sol";
import "zeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";

contract BEOCrowdsale is CappedCrowdsale, IndividuallyCappedCrowdsale, WhitelistedCrowdsale {
    using SafeERC20 for ERC20;
    using SafeMath for uint256;
      
    constructor(
      uint256 _rate,
      address _wallet,
      uint256 _cap,
      ERC20 _token
    )
      public
      Crowdsale(_rate, _wallet, _token)
      CappedCrowdsale(_cap)
    {

    }

}

pragma solidity ^0.4.24;

import "zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/IndividuallyCappedCrowdsale.sol";
import "zeppelin-solidity/contracts/math/SafeMath.sol";
import "zeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";

contract BEORefundableCrowdsale is RefundableCrowdsale, CappedCrowdsale, IndividuallyCappedCrowdsale, WhitelistedCrowdsale {
    using SafeERC20 for ERC20;
    using SafeMath for uint256;
      
    constructor(
      uint256 _openingTime,
      uint256 _closingTime,
      uint256 _rate,
      address _wallet,
      uint256 _cap,
      ERC20 _token,
      uint256 _goal
    )
      public
      Crowdsale(_rate, _wallet, _token)
      CappedCrowdsale(_cap)
      TimedCrowdsale(_openingTime, _closingTime)
      RefundableCrowdsale(_goal)
    {
      //As goal needs to be met for a successful crowdsale
      //the value needs to less or equal than a cap which is limit for accepted funds
      require(_goal <= _cap);
    }

}

pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract StupidToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function StupidToken(address _owner)  UpgradeableToken(_owner) {
    name = "StupidToken";
    symbol = "STPD";
    totalSupply = 30000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}
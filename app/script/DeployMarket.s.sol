// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Marketplace.sol";

contract DeployMarket is Script {

    function run() public {
        vm.startBroadcast();


        // Deploy NFTMarket
        NFTMarket nftMarket = new NFTMarket(address(moonToken));
        console.log("NFTMarket deployed to:", address(nftMarket));


        vm.stopBroadcast();
    }
}
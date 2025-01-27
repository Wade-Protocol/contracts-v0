// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IRegistry {
    event UpdaterAdded(address indexed updater);
    event UpdaterRemoved(address indexed updater);
    event UserContractUpdated(address indexed user, address indexed contractAddress);

    function addressToUserContracts(address user) external view returns (address);
    function trustedUpdaters(uint256 index) external view returns (address);
    function isTrustedUpdater(address updater) external view returns (bool);
    function addTrustedUpdater(address updater) external;
    function removeTrustedUpdater(address updater) external;
    function setUserContract(address user, address contractAddress) external;
}

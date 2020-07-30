pragma solidity ^0.5.0;

interface ISynthetix {
    function effectiveValue(bytes32 sourceCurrencyKey, uint256 sourceAmount, bytes32 destinationCurrencyKey) external view returns (uint256);
    function exchange(bytes32 sourceCurrencyKey, uint256 sourceAmount, bytes32 destinationCurrencyKey) external returns (bool);
    function collateralisationRatio(address issuer) external view returns (uint256);
    function totalIssuedSynths(bytes32 currencyKey) external view returns (uint256);
    function getSynth(bytes32 currencyKey) external view returns (address);
    function debtBalanceOf(address issuer, bytes32 currencyKey) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}
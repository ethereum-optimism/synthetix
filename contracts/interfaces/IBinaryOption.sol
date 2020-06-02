pragma solidity >=0.4.24;

import "../interfaces/IBinaryOptionMarket.sol";
import "../interfaces/IERC20.sol";

interface IBinaryOption {
    function market() external view returns (IBinaryOptionMarket);
    function bidOf(address account) external view returns (uint);
    function totalBids() external view returns (uint);

    function price() external view returns (uint);
    function claimableBy(address account) external view returns (uint);
    function totalClaimable() external view returns (uint);
    function totalExercisable() external view returns (uint);
}
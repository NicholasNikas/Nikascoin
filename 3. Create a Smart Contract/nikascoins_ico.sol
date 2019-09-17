// Nikascoins ICO

// Version of compiler
pragma solidity ^0.5.1;

contract nikascoin_ico {
    
    // Introducing the maximum number of Nikascoins available for sale
    uint public max_nikascoins = 1000000;
    
    // Introducing the USD to Nikascoins conversion rate
    uint public usd_to_nikascoins = 1000;
    
    // Introducing the total number of Nikascoins that have been bought by the investors
    uint public total_nikascoins_bought = 0;
    
    // Mapping from the investor address to its equity in Nikascoins and USD
    mapping(address => uint) equity_nikascoins;
    mapping(address => uint) equity_usd;
    
    // Checking if an investor can buy Nikascoins
    modifier can_buy_nikascoins(uint usd_invested){
        require(usd_invested * usd_to_nikascoins + total_nikascoins_bought <= max_nikascoins);
        _;
    }
    
    // Getting the equity in Nikascoins of an investor
    function equity_in_nikascoins(address investor) external view returns(uint) {
        return equity_nikascoins[investor];
    }
    
    // Getting the equity in USD of an investor
        function equity_in_usd(address investor) external view returns(uint) {
        return equity_usd[investor];
    }
    
    // Buying Nikascoins
    function buy_nikascoins(address investor, uint usd_invested) external
    can_buy_nikascoins(usd_invested) {
        uint nikascoins_bought = usd_invested * usd_to_nikascoins;
        equity_nikascoins[investor] += nikascoins_bought;
        equity_usd[investor] = equity_nikascoins[investor] / 1000;
        total_nikascoins_bought += nikascoins_bought;
    }
    
    // Selling Nikascoins
    function sell_nikascoins(address investor, uint nikascoins_sold) external {
        equity_nikascoins[investor] -= nikascoins_sold;
        equity_usd[investor] = equity_nikascoins[investor] / 1000;
        total_nikascoins_bought -= nikascoins_sold;
    }
    
} // End of contract

















//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;


contract StoreToken {
    string public storeName = "GoFresh";
    uint public totalProfits = 0;

    uint public constant TAX_RATE = 9;
    uint[6] public ID = [1,2,3,4,5,6];
    uint[6] public BASE_PRICES = [14,41,1,76,18,10];
    uint[6] public SALE_PRICES = [19,45,2,89,23,12];

    function viewPrice(uint itemID) public view returns(uint){
         if (itemID-1 < 6 && itemID-1 >= 0) {
              return SALE_PRICES[itemID-1];
        } else {
              return 0;
        }
    }

     function viewProfits() public view returns(uint){
            return totalProfits;
    }

//Tax Amounts are truncated becuase of the usage of uint rather than int. GoFresh receives taxes as profit as well.
    function buyItem(uint itemID) public returns (bool){
        bool purchaseStatus;
        if (itemID-1 < 6 && itemID-1 >= 0) {
        uint taxAmount = (SALE_PRICES[itemID-1]*TAX_RATE)/100 ;
        uint totalPrice = taxAmount + SALE_PRICES[itemID-1];
        uint profitAmount = totalPrice - BASE_PRICES[itemID-1];
        totalProfits += profitAmount;
        purchaseStatus = true;
        } else {
            purchaseStatus = false;
        }
        return purchaseStatus;
    }   

    function returnItem(uint itemID) public returns (bool){
        bool returnStatus;
        if (itemID-1 < 6 && itemID-1 >= 0) {
        uint taxAmount  = (SALE_PRICES[itemID-1]*TAX_RATE)/100;
        uint totalPrice = taxAmount + SALE_PRICES[itemID-1];
        uint returnAmount = totalPrice - BASE_PRICES[itemID-1];
        totalProfits -= returnAmount;
            returnStatus = true;
        } else {
            returnStatus = false;
        }
        return returnStatus;
    }


}
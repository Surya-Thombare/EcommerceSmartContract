// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Ecommerce{

    struct Product{
        string title;
        string decs;
        address payable seller;
        uint producId;
        uint price;
        address buyer;
        bool delivered;
    }
    uint counter = 1;

    Product[] public products;

    function registerProduct(string memory _title, string memory _desc, uint _price) public{
        require(_price>0, "Price should be greter than 0")

        Product memory tempProduct;

        tempProduct.title = _title;
        tempProduct.desc = _desc;
        tempProduct.price = _price *10**18;
        tempProduct.seller =payable(msg.sender);
        tempProduct,producId = counter;


        products.push(tempProduct);

        counter++;
    }


}
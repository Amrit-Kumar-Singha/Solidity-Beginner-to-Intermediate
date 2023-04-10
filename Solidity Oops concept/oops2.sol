// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Book{
    uint length;
    uint breadth;
    uint height;
    uint random;

    constructor(uint _random){
        random=_random;
    }

    function setBook(uint _length,uint _breadth, uint _height) public{
        length=_length;
        breadth=_breadth;
        height=_height;
    }

    function getBook() public view returns(uint,uint,uint){
        return (length,breadth,height);
    }
}

contract demo{
    Book obj= new Book(20);

    function setBook(uint _length,uint _breadth, uint _height) public {
        obj.setBook(_length,_breadth,_height);
    }

    function getBook() public view returns(uint,uint,uint){
        return (obj.getBook());
    }

    function returnBook()public view returns(Book){
        return obj;
    }
}

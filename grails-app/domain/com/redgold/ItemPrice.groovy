package com.redgold

class ItemPrice
{
    Item item
    BigDecimal price
    Long volumeAmount
    String volumeUnit

    static constraints ={
        item nullable: false, unique: true
        price nullable: false
        volumeAmount nullable: false
        volumeUnit nullable: false, maxSize: 5
    }
}
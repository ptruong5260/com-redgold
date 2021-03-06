package com.redgold

class Item
{
    String name
    String shortDescription
    String description
    String image
    String label
    Date dateCreated
    Date lastUpdated

    static constraints ={
        name nullable: false, maxSize: 200, unique: true
        shortDescription nullable: false, maxSize: 5000
        image nullable: true, maxSize: 5000
        description nullable: false, maxSize: 5000
        label nullable: true, maxSize: 20
    }

    public ItemPrice getItemPrice()
    {
        return ItemPrice.findByItem( this )
    }
}
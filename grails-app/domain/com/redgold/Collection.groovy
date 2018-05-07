package com.redgold

class Collection
{
    String name
    String identifier
    String image

    static constraints ={
        name nullable: false, maxSize: 100
        identifier nullable: false, maxSize: 100, unique: true
        image nullable: true, maxSize: 5000
    }

    public List<Item> getItems()
    {
        return CollectionItem.findAllByCollection( this ).collect{ it.item }
    }
}
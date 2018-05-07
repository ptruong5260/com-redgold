package com.redgold

class CollectionItem
{
    Collection collection
    Item item

    static constraints ={
        collection nullable: false
        item nullable: false, unique:['collection']
    }
}
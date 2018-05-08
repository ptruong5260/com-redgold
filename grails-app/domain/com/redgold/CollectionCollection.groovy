package com.redgold

class CollectionCollection
{
    Collection parentCollection
    Collection childCollection
    Integer orden

    static constraints ={
        parentCollection nullable: false
        childCollection nullable: false, unique:['parentCollection']
        orden nullable: true
    }
}
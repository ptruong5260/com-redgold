package com.redgold

class Item
{
    String name
    String shortDescription
    String description
    String image
    Date dateCreated
    Date lastUpdated

    static constraints ={
        name nullable: false, maxSize: 200
        shortDescription nullable: false, maxSize: 5000
        image nullable: true, maxSize: 5000
        description nullable: false, maxSize: 5000
    }
}
package com.redgold

class FeatureItem
{
    String imageBanner
    String description
    String imageTitle
    Item item

    static constraints ={
        imageBanner nullable: true, maxSize: 5000
        description nullable: true, maxSize: 5000
        imageTitle nullable: true, maxSize: 5000
        item nullable: false
    }
}
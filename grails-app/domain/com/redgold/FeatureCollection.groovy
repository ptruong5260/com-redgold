package com.redgold

class FeatureCollection
{
    String imageBanner
    String description
    String imageTitle
    Collection collection

    static constraints ={
        imageBanner nullable: true, maxSize: 5000
        description nullable: true, maxSize: 5000
        imageTitle nullable: true, maxSize: 5000
        collection nullable: false
    }
}
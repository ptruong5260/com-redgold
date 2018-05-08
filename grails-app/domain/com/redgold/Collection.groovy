package com.redgold

class Collection
{
    String name
    String identifier
    String image
    CollectionType collectionType
    Integer orden

    static constraints ={
        name nullable: false, maxSize: 100
        identifier nullable: false, maxSize: 100, unique: true
        image nullable: true, maxSize: 5000
        collectionType nullable: true
        orden nullable: true
    }

    public List<Item> getItems()
    {
        return CollectionItem.findAllByCollection( this ).collect{ it.item }
    }

    public List<Collection> getChildCollectionList()
    {
        return CollectionCollection.findAllByParentCollection(this, [sort:"orden", order:"asc"])
                .collect{ CollectionCollection collectionCollection ->
            collectionCollection.childCollection
        }
    }
}
package com.redgold

class CollectionService
{
    public List<Collection> getCollectionByMenuType()
    {
        return Collection.findAllByCollectionType(CollectionType.MENU, [sort:"orden", order:"asc"])
    }
}
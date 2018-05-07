package com.redgold

class CollectionController
{
    def show()
    {
        Collection collection = Collection.get(params.collectionId)
        return [collection: collection]
    }
}
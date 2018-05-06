package com.redgold

class ItemController {

    def show() {
        Item item = Item.get(params.itemId)
        return [item: item]
    }
}

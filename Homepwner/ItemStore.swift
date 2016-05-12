//
//  ItemStore.swift
//  Homepwner
//
//  Created by Jigesh Parekh on 5/10/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item) {
            allItems.removeAtIndex(index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.removeAtIndex(fromIndex)
        
        allItems.insert(movedItem, atIndex: toIndex)
    }

}

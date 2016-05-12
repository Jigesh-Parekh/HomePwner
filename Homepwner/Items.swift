//
//  Items.swift
//  Homepwner
//
//  Created by Jigesh Parekh on 5/10/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: NSDate
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = NSDate()
        self.itemKey = NSUUID().UUIDString
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluff", "Rust", "Shine"]
            let noun = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            //let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(noun.count))
            let randomName = noun[Int(idx)]
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        }else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
}
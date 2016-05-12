//
//  ImageStore.swift
//  Homepwner
//
//  Created by Jigesh Parekh on 5/12/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import UIKit

class ImageStore: NSObject {
    let cache = NSCache()
    
    func setImage(image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key)
    }
    
    func imageForKey(key: String)  -> UIImage? {
        return cache.objectForKey(key) as? UIImage
    }
    
    func deleteImageForKey(key: String) {
        cache.removeObjectForKey(key)
    }
}

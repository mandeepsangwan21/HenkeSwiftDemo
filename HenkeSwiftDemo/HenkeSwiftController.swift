//
//  HenkeSwiftController.swift
//  HenkeSwiftDemo
//
//  Created by SitesSimply PTY. LTD on 14/01/2016.
//  Copyright © 2016 SitesSimply PTY. LTD. All rights reserved.
//

import Foundation
import Haneke

class HenkeSwiftController : NSObject {
    
    class var sharedInstance: HenkeSwiftController {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: HenkeSwiftController? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = HenkeSwiftController()
        }
        return Static.instance!
    }
    
    
    func downloadImage(imageURL:String , imageView : UIImageView )  {
       
        let cache = Shared.imageCache
        let URL = NSURL(string: imageURL)
        if(URL != nil) {
        let fetcher = NetworkFetcher<UIImage>(URL: URL!)
        cache.fetch(fetcher: fetcher).onSuccess { image in
            // Do something with image
            imageView.image = image
            }
        }
        
      }
}
    

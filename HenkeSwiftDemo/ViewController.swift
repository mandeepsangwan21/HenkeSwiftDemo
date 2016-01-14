//
//  ViewController.swift
//  HenkeSwiftDemo
//
//  Created by SitesSimply PTY. LTD on 14/01/2016.
//  Copyright © 2016 SitesSimply PTY. LTD. All rights reserved.
//

import UIKit
import Haneke
class ViewController: UIViewController {

    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imagewView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        HenkeSwiftController.sharedInstance.downloadImage("https://upload.wikimedia.org/wikipedia/commons/3/38/Shaded_silver_Persian_Cat_Missionhill_Cosmic_Rainstorm.jpg",imageView: self.imageView1)
        HenkeSwiftController.sharedInstance.downloadImage("http://www.catbreedslist.com/uploads/allimg/cat-pictures/Persian-Cat-3.jpg",imageView: self.imageView2)
        HenkeSwiftController.sharedInstance.downloadImage("http://www.catbreedslist.com/uploads/allimg/cat-pictures/Persian-Cat-4.jpg",imageView: self.imagewView3)
        HenkeSwiftController.sharedInstance.downloadImage("http://www.gatewaytrackingclub.com/wp-content/uploads/2015/10/Persian-cat.jpg",imageView: self.imageView4)
        HenkeSwiftController.sharedInstance.downloadImage("http://us.cdn2.123rf.com/168nwm/isselee/isselee1112/isselee111200447/11612824-persian-cat-sitting-in-front-of-white-background.jpg",imageView: self.imageView5)
        HenkeSwiftController.sharedInstance.downloadImage("http://d.fastcompany.net/multisite_files/fastcompany/imagecache/1280/poster/2013/09/3017532-poster-persian.jpg",imageView: self.imageView6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


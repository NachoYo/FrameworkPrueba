//
//  ViewController.swift
//  FrameworkPrueba
//
//  Created by lvinaspe on 11/12/2021.
//  Copyright (c) 2021 lvinaspe. All rights reserved.
//

import UIKit
import FrameworkPrueba

class ViewController: UIViewController {

    @IBOutlet var imagePrueba: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log = Logger()
        log.printLog()
        let framewordBundle = Bundle(for: Logger.self)
        let path = framewordBundle.path(forResource: "FrameworkPrueba", ofType: "bundle")
        let resourcesBundle = Bundle(path: path!)
        if #available(iOS 13.0, *) {
            let image = UIImage(named: "llave.png", in: resourcesBundle, with: nil)
            print(image)
            self.imagePrueba.image = image
        } else {
            // Fallback on earlier versions
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


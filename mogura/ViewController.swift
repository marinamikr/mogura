//
//  ViewController.swift
//  mogura
//
//  Created by 原田摩利奈 on 2021/01/05.
//  Copyright © 2021 原田摩利奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mogura1:CustomButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mogura1.showMogura()
    }


}


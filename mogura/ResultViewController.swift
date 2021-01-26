//
//  ResultViewController.swift
//  mogura
//
//  Created by 原田摩利奈 on 2021/01/26.
//  Copyright © 2021 原田摩利奈. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    var total = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = String(total)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

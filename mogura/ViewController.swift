//
//  ViewController.swift
//  mogura
//
//  Created by 原田摩利奈 on 2021/01/05.
//  Copyright © 2021 原田摩利奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mogura1: CustomButton!
    @IBOutlet var mogura2: CustomButton!
    @IBOutlet var mogura3: CustomButton!
    @IBOutlet var total: UILabel!
    @IBOutlet var time: UILabel!
    
    var timer = Timer()
    var count = 30
    var count1 = 0
    var count2 = 0
    var count3 = 0
    
    var totalCount = 0
    
    @IBAction func tap1(){
        mogura1.hideMogura()
        count1 = count1 + 1
        countTotal()
    }
    
    @IBAction func tap2(){
        mogura2.hideMogura()
        count2 = count2 + 1
        countTotal()
    }
    
    @IBAction func tap3(){
        mogura3.hideMogura()
        count3 = count3 + 1
        countTotal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.count -= 1
            self.time.text = String(self.count)
            if [true,false].randomElement()! {
                self.mogura1.showMogura()
            } else if [true,false].randomElement()! {
                self.mogura2.showMogura()
            } else {
                [true,false].randomElement()!
                self.count3 = self.count3 + 1
            }
        })
    }
    
    func countTotal() {
        totalCount = count1 + count2 + count3
        total.text = String(totalCount)
        print(totalCount)
    }
    
}


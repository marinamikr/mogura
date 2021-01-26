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
    @IBOutlet var mogura4: CustomButton!
    @IBOutlet var mogura5: CustomButton!

    @IBOutlet var total: UILabel!
    @IBOutlet var time: UILabel!
    
    var timer = Timer()
    var count = 10
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0
    
    var totalCount = 0
    
    @IBAction func tap1(){
        if mogura1.imageView?.image != nil {
            mogura1.hideMogura()
            count1 = count1 + 1
            countTotal()
        }
    }
    
    @IBAction func tap2(){
        if mogura2.imageView?.image != nil {
            mogura2.hideMogura()
            count2 = count2 + 1
            countTotal()
        }
    }
    
    @IBAction func tap3(){
        if mogura3.imageView?.image != nil {
            mogura3.hideMogura()
            count3 = count3 + 1
            countTotal()
        }
    }
    @IBAction func tap4(){
        if mogura4.imageView?.image != nil {
            mogura4.hideMogura()
            count4 = count4 + 1
            countTotal()
        }
    }
    @IBAction func tap5(){
        if mogura5.imageView?.image != nil {
            mogura5.hideMogura()
            count5 = count5 + 1
            countTotal()
        }
    }
    
    
    @IBAction func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.count -= 1
            self.time.text = String(self.count)
            if [true,false,false,false].randomElement()! {
                self.mogura1.showMogura()
            }
            if [true,false,false,false].randomElement()! {
                self.mogura2.showMogura()
            }
            if [true,false,true,false].randomElement()! {
                self.mogura3.showMogura()
            }
            if [true,true,false,true].randomElement()! {
                self.mogura4.showMogura()
            }
            if [true,false,true,false].randomElement()! {
                self.mogura5.showMogura()
            }
            if self.count == 0 {
                timer.invalidate()
                self.time.text = "0"
                self.segue()
            }
            
        })
    }
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
    }
    
    func countTotal() {
        totalCount = count1 + count2 + count3 + count4 + count5
        total.text = String(totalCount)
//        print(totalCount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result" {
            let result = segue.destination as? ResultViewController
            result?.total = totalCount
        }
    }
    
    func segue() {
        performSegue(withIdentifier: "result", sender: nil)
        print(timer)
    }
    
}

//
//  CustomButton.swift
//  mogura
//
//  Created by 原田摩利奈 on 2021/01/05.
//  Copyright © 2021 原田摩利奈. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        customDesign()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customDesign()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customDesign()
    }
    
    private func customDesign() {
        backgroundColor = UIColor.white
        setTitleColor( UIColor.brown, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        layer.cornerRadius = 45.0
        layer.borderColor =  UIColor.brown.cgColor
        layer.borderWidth = 2
    }
    
    func showMogura() {
        let image = UIImage(named: "mogu.jpg")
        setImage(image, for: .normal)
        imageView?.contentMode = .scaleToFill
        tintColor = .clear
    }
    
    func hideMogura() {
        setImage(nil, for: .normal)
    }
}

//
//  UIButton+Design.swift
//  TravelApp
//
//  Created by Julieta Ignatova on 11/23/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit
extension UIButton {
    
    func designButton(borderWidth:CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.2019672161, green: 0.5023785838, blue: 0.8136941386, alpha: 1)) {
    layer.cornerRadius = frame.height / 2
    clipsToBounds = true
    
    layer.borderWidth = borderWidth
    layer.borderColor = borderColor.cgColor
 }
}

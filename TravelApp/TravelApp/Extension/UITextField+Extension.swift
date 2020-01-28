//
//  UITextField+Extension.swift
//  TravelApp
//
//  Created by Julieta Ignatova on 11/23/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

extension UITextField {
    func addRightView(image: UIImage, isSecure: Bool = false) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "66880"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "18-hide-512-2"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        } else {
             rightView = imageView
        }
        
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}

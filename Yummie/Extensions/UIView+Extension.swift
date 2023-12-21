//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 21.12.2023.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat { // storyboardda gözükmesi için
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

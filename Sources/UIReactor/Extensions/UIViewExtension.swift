//
//  UIViewExtension.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/2/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    public func addSubViews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
    
    public func addShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.08
        self.layer.shadowRadius = 20
        self.layer.shadowOffset = CGSize(width: 2.0, height: 1.0)
    }
}

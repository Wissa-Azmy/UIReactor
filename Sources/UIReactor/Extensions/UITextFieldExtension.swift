//
//  UITextField_extention.swift
//  Patient Portal
//
//  Created by youssef  sultan on 3/25/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

extension UITextField {
    public func addPaddingLeftIcon(_ image: UIImage, padding: CGFloat) {
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        leftView = imageView
        leftView?.frame.size = CGSize(width: image.size.width + padding, height: image.size.height)
        leftViewMode = .always
    }
}

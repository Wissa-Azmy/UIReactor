//
//  AlertControllerExtention.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/2/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    func addActions(_ actions: UIAlertAction...) {
        for action in actions {
            self.addAction(action)
        }
    }
}

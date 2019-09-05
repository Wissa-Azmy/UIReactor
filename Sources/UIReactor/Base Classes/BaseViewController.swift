//
//  BaseViewController.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/2/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupNavigationBar()
    }

    func setupNavigationBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.title = "Medication"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.08914274722, green: 0.1213926896, blue: 0.2849592865, alpha: 1) , NSAttributedString.Key.font: UIFont(name: "AraJozoor-Regular", size: 16)!]
        
        let notificationBtn = UIButton(type: .custom)
        notificationBtn.setImage(UIImage(named: "blueNotificationIcon"), for: .normal)
        notificationBtn.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: notificationBtn)
        
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0.7115641236, blue: 0.930534184, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
    }
}

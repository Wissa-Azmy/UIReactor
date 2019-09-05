//
//  UIHelperService.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 7/22/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

public class UIReactor {
    // MARK: - UI Components setup
    public class func fuseBtn(btnType: UIButton.ButtonType, title : String, titleColor : UIColor, cornerRadius : CGFloat, font : CGFloat, backgroundColor : UIColor) -> UIButton {
        let button = UIButton(type: btnType)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont(name: "AraJozoor-Regular", size: font)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = backgroundColor
        return button
    }
    
    public class func fuseTxtField(placeholder : String, imageName : String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 18
        textField.layer.borderColor = #colorLiteral(red: 0.9128934145, green: 0.9176079035, blue: 0.930550158, alpha: 1)
        textField.layer.borderWidth = 1
        textField.placeholder = placeholder
        textField.font = UIFont(name: "AraJozoor-Regular", size: 14)
        textField.textAlignment = .natural
        textField.clipsToBounds = true
        textField.addPaddingLeftIcon(UIImage(named: imageName)!, padding: 20)
        return textField
    }
    
    public class func fuseLabel(text: String = "", txtColor: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 12)) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textColor =  txtColor
        label.text = text
        label.numberOfLines = 0
        label.textAlignment = .natural
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

// MARK: - Navigation Methods
extension UIReactor {
    // REMOVE VIEW CONTROLLER FROM THE NAVIGATION STACK OF The Sender
    public static func popViewCotroller(sender: UIViewController) {
        sender.navigationController?.popViewController(animated: true)
    }
    
    @objc public static func segueToController(
        withName controllerName: String,
        from sender: UIViewController
    ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: controllerName) as UIViewController
        sender.navigationController?.pushViewController(destinationVC, animated: true)
    }
}

// MARK: - Alerts, ActionSheets and ActivityIndicator
extension UIReactor {
    public static func showActivityIndicator(on view: UIView, color: UIColor = .gray) -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
        activityIndicator.center = view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.color = color
        view.addSubview(activityIndicator)
    
        return activityIndicator
    }
    
    public static func presentRequiredFieldAlert(on sender: UIViewController, localizedTitle: String, localizedMsg: String) {
        let alert = UIAlertController(
            title: NSLocalizedString(localizedTitle, comment: ""),
            message: NSLocalizedString(localizedMsg, comment: ""),
            preferredStyle: .alert
        )
        let ok = UIAlertAction(
            title: NSLocalizedString("Ok", comment: ""),
            style: .cancel
        )
        
        alert.addAction(ok)
        sender.present(alert, animated: true, completion: nil)
    }
    
    public static func presentRequiredAlert(on sender: UIViewController, localizedTitle: String, localizedMsg: String) {
        let alert = UIAlertController(
            title: NSLocalizedString(localizedTitle, comment: ""),
            message: NSLocalizedString(localizedMsg, comment: ""),
            preferredStyle: .alert
        )
        let ok = UIAlertAction(
            title: NSLocalizedString("Ok", comment: ""),
            style: .cancel
        )
        
        alert.addAction(ok)
        sender.present(alert, animated: true, completion: nil)
    }
    
    public static func presentInternetConnectionAlert(on sender: UIViewController, indicator: UIActivityIndicatorView? = nil) {
        let dataLoadingAlert = UIAlertController(
            title: NSLocalizedString("requiredInternetAlertTitle", comment: ""),
            message: NSLocalizedString("requiredInternetAlertMsg", comment: ""),
            preferredStyle: .alert
        )
        let tryAgain = UIAlertAction(
            title: NSLocalizedString("tryAgainAlerAction", comment: ""),
            style: .default,
            handler: { (action) in sender.viewDidLoad() }
        )
        let cancel = UIAlertAction(
            title: NSLocalizedString("Cancel", comment: ""),
            style: .cancel, handler: nil
        )
        
        dataLoadingAlert.addActions(tryAgain, cancel)
        sender.present(dataLoadingAlert, animated: true, completion: {
            indicator?.stopAnimating()
        })
    }
}

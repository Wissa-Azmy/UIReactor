//
//  RoundedShadowView.swift
//  Patient Portal
//
//  Created by youssef  sultan on 4/15/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

class UITile: UIView {
    
    let containerView = UIView()
    let headerLbl = UILabel()
    let titleLbl = UILabel()
    let descriptionLbl = UILabel()
    var iconImgView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layoutView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutView() {
        // set the shadow of the view's layer
        layer.backgroundColor = UIColor.clear.cgColor
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 4.0
        layer.backgroundColor = #colorLiteral(red: 0, green: 0.7156304717, blue: 0.9302947521, alpha: 1)
        layer.cornerRadius = 8
        self.translatesAutoresizingMaskIntoConstraints = false
        
        // set the cornerRadius of the containerView's layer
        containerView.layer.cornerRadius = 5
        containerView.layer.masksToBounds = true
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.font = UIFont(name: "AraJozoor-Regular", size: 14)
        titleLbl.textColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        titleLbl.textAlignment = .natural
        
        headerLbl.translatesAutoresizingMaskIntoConstraints = false
        headerLbl.font = UIFont(name: "AraJozoor-Regular", size: 16)
        headerLbl.textColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        headerLbl.textAlignment = .center
        
        descriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        descriptionLbl.font = UIFont(name: "AraJozoor-Regular", size: 12)
        descriptionLbl.textColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        descriptionLbl.textAlignment = .natural
        descriptionLbl.numberOfLines = 0
        
        iconImgView.translatesAutoresizingMaskIntoConstraints = false
        iconImgView.contentMode = .scaleAspectFit
        
        addSubViews(containerView, headerLbl, titleLbl, descriptionLbl, iconImgView)
        
        // add constraints
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            headerLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            headerLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            titleLbl.topAnchor.constraint(equalTo: iconImgView.topAnchor),
            titleLbl.leadingAnchor.constraint(equalTo: iconImgView.trailingAnchor, constant: 10),
            
            descriptionLbl.bottomAnchor.constraint(equalTo: iconImgView.bottomAnchor),
            descriptionLbl.leadingAnchor.constraint(equalTo: iconImgView.trailingAnchor, constant: 10),
            descriptionLbl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            iconImgView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 10),
            iconImgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            iconImgView.heightAnchor.constraint(equalToConstant: 50),
            iconImgView.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}

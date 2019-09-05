//
//  BaseTableViewCell.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(){
        backgroundColor = .clear // very important
        layer.masksToBounds = false
        layer.shadowOpacity = 0.08
        layer.shadowRadius = 20
        layer.shadowColor = UIColor.black.cgColor
        
        // add corner radius on `contentView`
        self.contentView.backgroundColor = .white
        self.contentView.layer.cornerRadius = 8
    }
}

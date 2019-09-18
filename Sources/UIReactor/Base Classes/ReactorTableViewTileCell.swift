//
//  BaseTableViewCell.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

open class ReactorTableViewTileCell: UITableViewCell {
    let mainView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.clipsToBounds = false // this will make sure its children do not go out of the boundary
        return view
    }()

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        contentView.frame = contentView.frame.inset(by: margins)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func setupCell(){
        contentView.addSubview(mainView)
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

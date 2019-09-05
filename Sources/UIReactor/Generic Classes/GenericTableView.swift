//
//  GenericTableViewController.swift
//  Ana 57357
//
//  Created by Wissa Azmy on 9/2/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

class GenericTableView<T, Cell: UITableViewCell>: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    var items: [T]
    var configure: (Cell, T) -> Void
    var selectHandler: (T) -> Void
    
    init(items: [T], frame: CGRect, configure: @escaping (Cell, T) -> Void, selectHandler: @escaping (T) -> Void) {
        self.items = items
        self.configure = configure
        self.selectHandler = selectHandler
        super.init(frame: frame, style: .plain)
        self.dataSource = self
        self.delegate = self
        self.register(Cell.self, forCellReuseIdentifier: "Cell")
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.rowHeight = UITableView.automaticDimension
        // Allows a cell shadow and content to overflow outside the table and cell bounds
        self.clipsToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - TableView DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let item = items[indexPath.row]
        cell.selectionStyle = .none
        configure(cell, item)
        
        return cell
    }
    
    // MARK: - TableView Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        selectHandler(item)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.layer.masksToBounds = true
        
        let radius = cell.contentView.layer.cornerRadius
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: radius).cgPath
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath)
        cell!.contentView.backgroundColor = .lightGray
    }

    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath)

        UIView.animate(withDuration: 0.2) {
            cell!.contentView.backgroundColor = .white
        }
    }
}


//
//  UITableViewFooterAlwaysOnBottom.swift
//
//  Created by tybu on 09/09/2019.
//  Copyright © 2019 forK. All rights reserved.
//

import UIKit

extension UITableView : UITableViewDelegate {
    
    public func tableViewFooterAlwaysOnBottom(footer: UIView, tableView: UITableView, height: CGFloat = 80, bottomLayoutGuide:UILayoutSupport) -> Void {
        
        let tableFooter: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: height))
        tableFooter.backgroundColor = .clear
        tableView.tableFooterView = tableFooter
        
        let f: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: height))
        tableView.addSubview(f)
        f.translatesAutoresizingMaskIntoConstraints = false
        f.heightAnchor.constraint(equalToConstant: height).isActive = true
        f.trailingAnchor.constraint(equalTo: tableView.layoutMarginsGuide.trailingAnchor).isActive = true
        f.leadingAnchor.constraint(equalTo: tableView.layoutMarginsGuide.leadingAnchor).isActive = true

        let fcBottom: NSLayoutConstraint = f.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor)
        fcBottom.priority = UILayoutPriority(900.0)
        fcBottom.isActive = true
        
        let _fcTop: NSLayoutConstraint;
        _fcTop = f.topAnchor.constraint(greaterThanOrEqualTo: tableFooter.topAnchor)
        _fcTop.priority = UILayoutPriority(950.0)
        _fcTop.isActive = true
        
        f.addSubview(footer)
        f.centerXAnchor.constraint(equalTo: footer.centerXAnchor).isActive = true
        f.centerYAnchor.constraint(equalTo: footer.centerYAnchor).isActive = true
    }
    
}

    

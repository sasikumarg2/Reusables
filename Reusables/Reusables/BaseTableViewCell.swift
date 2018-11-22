//
//  BaseTableViewCell.swift
//  Reusables
//
//  Created by Pulse on 19/10/18.
//  Copyright © 2018 GS. All rights reserved.
//

import UIKit

class BaseTableViewCell<T:Codable>: UITableViewCell, NibReusable, Reusable{
    var model:T?
}

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String.init(describing: self) + "Id"
    }
}

protocol NibReusable: Reusable {
    static var nib: UINib { get }
}

extension NibReusable {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}

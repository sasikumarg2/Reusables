
//
//  Models.swift
//  Reusables
//
//  Created by Pulse on 19/10/18.
//  Copyright © 2018 GS. All rights reserved.
//

import Foundation
import UIKit

class ListTableViewCell:BaseTableViewCell<StudentModel> {
    
    override var model: StudentModel? {
        didSet {
            textLabel?.numberOfLines = 0
            textLabel?.text = (model?.name ?? "") + "\n" +  (model?.name ?? "")
        }
    }
}

struct StudentModel: Codable {
    var name = "Sasi"
}





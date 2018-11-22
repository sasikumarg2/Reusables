////
////  CellHelpers.swift
////  Reusables
////
////  Created by Pulse on 22/10/18.
////  Copyright © 2018 GS. All rights reserved.
////
//
//import UIKit
//
//extension UITableView {
//    func registerReusableCell<T: UITableViewCell>(_: T.Type) where T: NibReusable {
//        if let nib = T.nib {
//            self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
//        } else {
//            self.register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
//        }
//    }
//    
//    func dequeueReusableCell<T: UITableViewCell>(indexPath: NSIndexPath) -> T where T: Reusable {
//        return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as! T
//    }
//    
//    func registerReusableHeaderFooterView<T: UITableViewHeaderFooterView>(_: T.Type) where T: Reusable {
//        if let nib = T.nib {
//            self.register(nib, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
//        } else {
//            self.register(T.self, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
//        }
//    }
//    
//    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T? where T: Reusable {
//        return self.dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as! T?
//    }
//}
//
//extension UICollectionView {
//    func registerReusableCell<T: UICollectionViewCell>(_: T.Type) where T: Reusable {
//        if let nib = T.nib {
//            self.register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
//        } else {
//            self.register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
//        }
//    }
//    
//    func dequeueReusableCell<T: UICollectionViewCell>(indexPath: NSIndexPath) -> T where T: Reusable {
//        return self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as! T
//    }
//    
//    func registerReusableSupplementaryView<T: Reusable>(elementKind: String, _: T.Type) {
//        if let nib = T.nib {
//            self.register(nib, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
//        } else {
//            self.register(T.self, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
//        }
//    }
//    
//    func dequeueReusableSupplementaryView<T: UICollectionViewCell>(elementKind: String, indexPath: NSIndexPath) -> T where T: Reusable {
//        return self.dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as! T
//    }
//}

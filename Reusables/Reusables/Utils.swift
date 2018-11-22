//
//  Utils.swift
//  Reusables
//
//  Created by Pulse on 19/10/18.
//  Copyright © 2018 GS. All rights reserved.
//

import Foundation


struct Foo {
    
    // Instance Level
    var typeName: String {
        return String(describing: Foo.self)
    }
    
    // Instance Level - Alternative Way
    var otherTypeName: String {
        let thisType = type(of: self)
        return String(describing: thisType)
    }
    
    // Type Level
    static var typeName: String {
        Foo().typeName       // = "Foo"
        Foo().otherTypeName  // = "Foo"
        Foo.typeName 
        return String(describing: self)
    }
    
}



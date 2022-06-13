//
//  PersonAndMacbookClasses.swift
//  ARC Project Example
//
//  Created by Atheer Othman on 14/11/1443 AH.
//

import Foundation


class Person {
    var name: String
    var macBook: MacBook?
    
    init(name: String, macBook: MacBook?) {
        self.name = name
        self.macBook = macBook
    }
    
    deinit {
        print("\(name) is been deinitialaized")
    }
}


class MacBook {
    var name: String
    //  remove 'weak' to see memory behavior
    weak var owner: Person?
    
    init(name: String, owner: Person?){
        self.name = name
        self.owner = owner
    }
    
    deinit {
        // gets called when the macbook released from a memory
        print("Macbook named: \(name) is been deinitialaized")
    }
}

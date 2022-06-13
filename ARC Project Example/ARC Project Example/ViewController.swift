//
//  ViewController.swift
//  ARC Project Example
//
//  Created by Atheer Othman on 14/11/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var atheer: Person?
    var myMacBook: MacBook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        createObject()
        assignProperties()
    }

    func createObject(){
        atheer = Person(name: "Atheer", macBook: nil)
        myMacBook = MacBook(name: "My MacBook", owner: nil)
    }
    func assignProperties(){
        // create string reference that are going to couse retain cycle
        atheer?.macBook = myMacBook
        myMacBook?.owner = atheer
        
        atheer = nil
        myMacBook = nil
    }
}

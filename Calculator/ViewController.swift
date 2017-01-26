//
//  ViewController.swift
//  Calculator
//
//  Created by Jackson Inchalik on 1/26/17.
//  Copyright © 2017 Jackson Inchalik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct Stack{
        var items = [Int]()
        
        mutating func push(_ newItem: Int){
            items.append(newItem)
    }
        
    mutating func pop() -> Int? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


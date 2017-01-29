//  Name: Devin Smaldore
//  Date: 1-27-17
//  Class: csc2310
//  Comments: Calculator App
//  ViewController.swift
//  Calculator

import UIKit

//create stack of any element type
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ newItem: Element) {
        items.append(newItem)
    }
    
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    func top() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.last
    }
    
    func isEmpty() -> Bool? {
        return items.isEmpty
    }
}

class ViewController: UIViewController {

    @IBAction func addToNumStack(_ newOp: Int, sender: UIButton) {
        var numStack = Stack<Int>()
        
        numStack.push(newOp)
    }
    
    func addToOpStack(_ newOp: Character) {
        var opStack = Stack<Character>()
        
        if opStack.isEmpty()! {
            opStack.push(newOp)
        } else if opStack.top() == "+" || opStack.top() == "-" {
            opStack.push(newOp)
        } else if opStack.top() == "*" || opStack.top() == "/" {
            if newOp == "*" || newOp == "/" {
                opStack.push(newOp)
            } else {
                
            }
        }
        
        //opStack.push(newOp)
    }
    
    func doMath(_ operand1: Int, operand2: Int, operator1: Character) -> Int {
        var result = 0
        
        if operator1 == "+" {
            result = operand1 + operand2
        } else if operator1 == "-" {
            result = operand1 - operand2
        } else if operator1 == "*" {
            result = operand1 * operand2
        } else if operator1 == "/" {
            result = operand1 / operand2
        }
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func handleNumButtonPress(_ sender: UIButton) {
        
    }
    
}

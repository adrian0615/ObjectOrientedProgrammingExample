//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Duck is the protocol with CartoonDuck and Pond needing to conform to it.  Donald and Daffy are subclasses of CartoonDuck and inherit it's property but they also conform to Duck.
//The objects can be used interchangably if they have a common superclass.
//I also used Access Control to determine what can be manipulated outside of each class and what can not.  Found out that
//I think this is a solid example of OOP in Swift
//Includes Encapsulation, Inheritance, and Polymorphism
protocol Duck {
    func quack()
}

public class CartoonDuck: Duck {
    private var company: String
    
    public init(company: String) {
        self.company = company
    }
    
    func quack() {
        print("Duck Quack!")
    }
}

public class DonaldDuck: CartoonDuck {
    public override func quack() {
        print("Donald Quack Attack!")
    }
}

private class PondDuck: Duck {
    public func quack() {
        print("Quack Quack!")
    }
}

private class DaffyDuck: CartoonDuck {
    override func quack() {
        print("Daffy Quacks Because He Hates Buggs Bunny!")
    }
}




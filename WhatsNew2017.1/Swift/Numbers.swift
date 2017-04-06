//
// Created by Phil Nash on 06/04/2017.
// Copyright (c) 2017 JetBrains. All rights reserved.
//

import Foundation

class BaseNumber {
    let value : Int

    init(_ value: Int){
        self.value = value
    }
}

// Add dynamic keyword - show as new completion
extension BaseNumber {
    dynamic func printMe() {
        // write this using 'pv'
        print("value = \(value)")
    }
}

// Write this, show how prefix and postfix are completable
protocol Incrementable {
    static prefix func ++(x: Self) -> Self
    static postfix func ++(x: Self) -> Self
}


// Write this, then do ^I to show impls, cancel and do ^O to show overrides - override all
final class Number : BaseNumber, Incrementable, Equatable {
    override init(_ value: Int) {
        super.init(value)
    }

    // Add NSLog using logv
    // then change to type = (type(of: self))
    override func printMe() {
        NSLog("type = \(type(of: self))")
    }

    static prefix func ++(x: Number) -> Number {
        return Number( x.value +/* inc */1 )
    }

    static postfix func ++(x: Number) -> Number {
        return x
    }

    public static func ==(lhs: Number, rhs: Number) -> Bool {
        return false
    }
}


struct ComplexNumber : Incrementable {
    init(real: Int, imaginary: Int) {
    }

    //FIXME: make this work
    static prefix func ++(x: ComplexNumber) -> ComplexNumber {
        return x
    }

    static postfix func ++(x: ComplexNumber) -> ComplexNumber {
        return x
    }

}

let cn = ComplexNumber(real:2, imaginary:1)
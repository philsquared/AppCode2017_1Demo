//
// Created by Phil Nash on 06/04/2017.
// Copyright (c) 2017 JetBrains. All rights reserved.
//

import Foundation

//MARK: types: ----
class Animal {}
class 🐠 {}

// remove
func 🔥(_ animals: [Animal]) -> Any {
    return animals
}

func 🔥(_ v: 🐠) -> Any {
    return v
}


// MARK: usage: ----
// FIXME: implement 🔥 function
func 😃() {
    let 🐮 = Animal()
    let 🐷 = Animal()

    let 🍔 = 🔥([🐮,🐷])
    let 🍣 = 🔥(🐠())

    print("cooked = \(🍔), \(🍣)")
}

//TODO: implement other types we can cook

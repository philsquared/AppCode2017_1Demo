//
// Created by Phil Nash on 06/04/2017.
// Copyright (c) 2017 JetBrains. All rights reserved.
//

import Foundation

func takeObjCTypes( constant : Constants, error : ErrorDomain ) {

}

func useObjectiveCApi() {

    //Import Objective-C Constants as Swift Types
    //https://github.com/apple/swift-evolution/blob/master/proposals/0033-import-objc-constants.md
    takeObjCTypes( constant: .one, error: .POSIXErrorDomain )

    //Navigation from .attributes and .state, completion + translation
    //for NS_SWIFT_NAME, CF_SWIFT_NAME, swift_name (Proposal as example)
    let p = Proposal()
    print("p.name = \(p.name)") // pv
    p.attributes = .optional
    p.state = .implemented
}

//Referencing Objective-C key-paths
//https://github.com/apple/swift-evolution/blob/master/proposals/0062-objc-keypaths.md
func dynamicPerson() {
    class Person: NSObject {
        dynamic var firstName : String
        dynamic var lastName : String
        dynamic var friends: [Person] = []

        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }

        func f( other : NSObject ) {
            if other.responds(to: #selector(getter: Person.firstName)) {
                let path = #keyPath(Person.friends.firstName)
                usePath( path )
            }
        }
        func usePath(_ path : String) {}
    }
}

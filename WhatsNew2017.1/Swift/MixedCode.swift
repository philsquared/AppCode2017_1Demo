//
// Created by Phil Nash on 06/04/2017.
// Copyright (c) 2017 JetBrains. All rights reserved.
//

import Foundation

func takeObjCTypes( constant : Constants, error : ErrorDomain ) {

}

func useObjectiveCApi() {
    // TODO: write calls that use Objective-C API
}


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

//
//  Person.swift
//  RealmDemo
//
//  Created by Ngo Dang tan on 05/01/2021.
//

import Foundation
import RealmSwift
class Person: Object {
    @objc dynamic var firstName:String = ""
    @objc dynamic var lastName:String = ""
    @objc dynamic var age: Int = 0
}

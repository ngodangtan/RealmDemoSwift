//
//  ViewController.swift
//  RealmDemo
//
//  Created by Ngo Dang tan on 05/01/2021.
//

import UIKit
import RealmSwift
class ViewController: UIViewController {

    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

 
        
        delete()
        save()
        render()
        
        
    }
    
    func render() {
        let people = realm.objects(Person.self)
        for person in people {
            let firstName = person.firstName
            let lastName = person.lastName
            let fullName = "\(firstName) \(lastName)"
            
            print("\(fullName)")
        }
    }
    
    func save(){
        let joe = Person()
        joe.firstName = "Joe"
        joe.lastName = "Smith"
        
        
        let joe2 = Person()
        joe.firstName = "Joe2"
        joe.lastName = "Smith2"
        
        realm.beginWrite()
        realm.add(joe)
        realm.add(joe2)
        try! realm.commitWrite()
    }
    
    func delete(){
        realm.beginWrite()
        realm.delete(realm.objects(Person.self))
        try! realm.commitWrite()
    }


}


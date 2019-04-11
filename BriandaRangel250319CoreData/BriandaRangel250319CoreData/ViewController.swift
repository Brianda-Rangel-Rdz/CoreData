//
//  ViewController.swift
//  BriandaRangel250319CoreData
//
//  Created by Universidad Politecnica de Gómez Palacio on 25/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func registerUser(_ sender: Any) {
        let dictionary: [String: String] = ["email": "brianda.rr02@gmail.com", "password": "123", "username": "Brianda"]
        DBLocal.save(for: "User", attributes: dictionary)
        
        print(DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func retrieveUsers(_ sender: Any) {
        print(DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func updateUser(_ sender: Any) {
        let dictionary: [String: String] = ["email": "briandaRR@gmail.com", "password": "123", "username": "Brianda"]
        
        let predicate: NSPredicate = NSPredicate(format: "username = %@", "Brianda")
        DBLocal.save(for: "User", attributes: dictionary, where: predicate)
        
        print(DBLocal.retrieve(for: "User"))
    }
    
    @IBAction func deleteUser(_ sender: Any) {
       let predicate: NSPredicate = NSPredicate (format: "username = %@", "Brianda")
        DBLocal.delete(for: "User", where: predicate)
        
         print(DBLocal.retrieve(for: "User"))
    }
}


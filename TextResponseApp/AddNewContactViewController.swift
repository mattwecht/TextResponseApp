//
//  AddNewContactViewController.swift
//  TextResponseApp
//
//  Created by Matthew Wecht on 5/22/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class AddNewContactViewController: UIViewController {

    @IBOutlet var newName: UITextField!
    @IBOutlet var newNumber: UITextField!
    var previousVC = ContactsTableViewController()//allows access to the contact array

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNewContactTapped(_ sender: Any) {
        let contact = Contact()
       
        if let nameText = newName.text {
            contact.name = nameText//unwrap value
        }
        if let numberText = newNumber.text{
            contact.number = numberText
        }
        
        previousVC.contacts.append(contact)//adds in the new value to the array
        previousVC.tableView.reloadData()//reloads the table
        navigationController?.popViewController(animated: true)//pop view once 

    }
    
    
    
}

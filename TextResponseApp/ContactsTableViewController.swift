//
//  ContactsTableViewController.swift
//  TextResponseApp
//
//  Created by Matthew Wecht on 5/21/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var contacts : [Contact] = []//sets up empty array

    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = createContacts()
    }
    
    func createContacts() -> [Contact] {

      let sample = Contact()
        sample.name = "sally"
        sample.number = "215-356-0306"
        
    let sample2 = Contact()
        sample2.name = "Harry"
        sample2.number = "555-555-5555"
        
      return [sample, sample2]//returns array of contacts
    }//end createContacts function
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact.name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddNewContactViewController {
        addVC.previousVC = self
      }
        if let textVC = segue.destination as? SendTextTableViewController {
        if let contact = sender as? Contact {
            textVC.selectedContact = contact
            textVC.previousVC = self
        }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      let toDo = contacts[indexPath.row]

      performSegue(withIdentifier: "moveToText", sender: toDo)
    }
}

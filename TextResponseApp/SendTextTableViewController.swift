//
//  SendTextTableViewController.swift
//  TextResponseApp
//
//  Created by Matthew Wecht on 5/27/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class SendTextTableViewController: UITableViewController {
    
    var texts : [String] = []//sets empty array of texts
    var previousVC = ContactsTableViewController()
    var selectedContact = Contact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texts = createTexts()
        texts.append("Select text to send to: \(selectedContact.name)")

    }
    
    func createTexts() -> [String]{//tester function
        return ["Did ya put your name in the Goblet of Fire?!", "You can't be Serious", "Nope I'm Severus"]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count//sets rows = to number of texts
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let text = texts[indexPath.row]
      cell.textLabel?.text = text

      return cell
    }



}

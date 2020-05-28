//
//  AddNewTextViewController.swift
//  TextResponseApp
//
//  Created by Matthew Wecht on 5/28/20.
//  Copyright © 2020 Matthew Wecht. All rights reserved.
//

import UIKit

class AddNewTextViewController: UIViewController {

    @IBOutlet var NewTextField: UITextField!
    var previousVC = SendTextTableViewController()//allows access to the array

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func AddNewTextTapped(_ sender: Any) {
        var temp = "FAIL"
        if let newText = NewTextField.text{
            temp = newText
        }
        previousVC.texts.append(temp)
        previousVC.tableView.reloadData()//reloads the table
        navigationController?.popViewController(animated: true)//pop view once

    }
    

}

//
//  PersonDetailsViewController.swift
//  HW_2.7_TableView_Persons
//
//  Created by 1 on 09.06.2020.
//  Copyright © 2020 Anzhelika. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var telephoneLabel: UILabel!
    @IBOutlet var eMaiLabel: UILabel!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        telephoneLabel.text = person.fullName
       /* telephoneLabel.text = person.telephone
        eMaiLabel.text = person.eMail */
    }
}

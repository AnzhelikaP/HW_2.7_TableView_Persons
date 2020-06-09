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
    @IBOutlet var contactDetails: UINavigationItem!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        telephoneLabel.text = contact.telephone
        eMaiLabel.text = contact.eMail
        contactDetails.title = contact.fullName
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
            let backItem = UIBarButtonItem()
              backItem.title = "Person contacts"
              navigationItem.backBarButtonItem = backItem
       }
}

//
//  PersonFulllNameDetailsViewController.swift
//  HW_2.7_TableView_Persons
//
//  Created by 1 on 09.06.2020.
//  Copyright © 2020 Anzhelika. All rights reserved.
//

import UIKit

class PersonFullNameDetailsViewController: UIViewController, UITableViewDataSource {
    
    let contactList = DataManager.shared
    let details = DataManager.details
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - Заполняем таблицу с секциями

extension PersonFullNameDetailsViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count  // количество секций
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullName // заголовки секций
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details  // количество строк в секции
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = contactList[indexPath.row].telephone
        } else {
            cell.textLabel?.text = contactList[indexPath.row].eMail
        }
        return cell  // содержимое строки
    }
}

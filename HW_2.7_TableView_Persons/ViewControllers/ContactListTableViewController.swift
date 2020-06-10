//
//  ContactListTableViewController.swift
//  HW_2.7_TableView_Persons
//
//  Created by 1 on 09.06.2020.
//  Copyright © 2020 Anzhelika. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    //  Взяли массив контактов из класса DataManager
    var contactList = DataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Persons List"
    }
    
    // MARK: - Таблица контактов
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count // количество контактов
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        // полное имя контакта в ячейке
        cell.textLabel?.text = contactList[indexPath.row].fullName
        
        return cell
    }
    
    
    // MARK: - Передаем на экран PersonDetailsViewController контакт (элемент массива по тек. индексу)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let personDetailsVC = segue.destination as! PersonDetailsViewController
        personDetailsVC.contact = contactList[indexPath.row]
        
    }
}

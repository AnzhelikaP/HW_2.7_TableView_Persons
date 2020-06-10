//
//  Person.swift
//  HW_2.7_TableView_Persons
//
//  Created by 1 on 09.06.2020.
//  Copyright © 2020 Anzhelika. All rights reserved.
//

struct Person {
    var name: String
    var surName: String
    var eMail: String
    var telephone: String
    var fullName: String {
        "\(name)  \(surName)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        
        var names = ["Agatha",
                     "Joanna",
                     "Richard",
                     "Pamela",
                     "Carl",
                     "Lucas",
                     "Catherine",
                     "Kent",
                     "Constance",
                     "Dexter"]
        names.shuffle()
        
        var surNames = ["Gordon",
                        "Brian",
                        "Cook",
                        "Sheldon",
                        "Backer",
                        "Turner",
                        "Hardman",
                        "Waite",
                        "Sinclair",
                        "Nash-Williams"]
        surNames.shuffle()
        
        var eMails = ["sssss@gmail.com",
                      "send_mi@gmail.com",
                      "hello987@gmail.com",
                      "you555@gmail.com",
                      "234567985@gmail.com",
                      "gghfdjjk@gmail.com",
                      "Hardman@gmail.com",
                      "Waite@gmail.com",
                      "fghjk@gmail.com",
                      "Nash@gmail.com"]
        eMails.shuffle()
        
        var telephones = ["608-192-888",
                          "524-321-678",
                          "777-679-890",
                          "333-567-008",
                          "345-678-098",
                          "980-586-352",
                          "555-666-333",
                          "123-876-453",
                          "237-678-987",
                          "196-519-611"]
        telephones.shuffle()
        
        var persons = [Person]()
        for number in 0...9 {
            persons.append(Person(name: names[number], surName: surNames[number], eMail: eMails[number], telephone: telephones[number]))
        }
        
        return persons
        
    }
}


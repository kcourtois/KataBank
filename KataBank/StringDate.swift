//
//  StringDate.swift
//  KataBank
//
//  Created by Kévin Courtois on 15/12/2019.
//  Copyright © 2019 Kévin Courtois. All rights reserved.
//

import Foundation

extension Date {
    //Takes a string formated in a specific order and returns a date
    init?(dateString: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        if let date = dateFormatter.date(from: dateString) {
            self.init(timeInterval: 0, since: date)
        } else {
            return nil
        }
    }

    //Takes a date and returns a string formated in a specific order
    func dateToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
}

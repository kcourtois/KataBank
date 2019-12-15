//
//  Operation.swift
//  KataBank
//
//  Created by Kévin Courtois on 15/12/2019.
//  Copyright © 2019 Kévin Courtois. All rights reserved.
//

import Foundation

enum OperationType {
    case withdrawal, deposit, statement
}

struct Operation {
    let date: Date
    let type: OperationType
    let amount: Double
}

extension Operation: CustomStringConvertible {
    var description: String {
        switch type {
        case .withdrawal:
            return "\(date.dateToString()) || || \(amount)"
        case .deposit:
            return "\(date.dateToString()) || \(amount) || "
        case .statement:
            return  "\(date.dateToString()) || \(amount)"
        }
    }
}

//
//  Account.swift
//  KataBank
//
//  Created by Kévin Courtois on 15/12/2019.
//  Copyright © 2019 Kévin Courtois. All rights reserved.
//

import Foundation

class Account {
    private var balance: Double
    private var operations: [Operation]

    init() {
        self.balance = 0
        self.operations = []
    }

    func deposit(amount: Double, date: Date) {
        let deposit = Operation(date: date, type: .deposit, amount: amount)
        self.balance += amount
        self.operations.append(deposit)
    }

    func withdrawal(amount: Double, date: Date) {
        let deposit = Operation(date: date, type: .withdrawal, amount: amount)
        self.balance -= amount
        self.operations.append(deposit)
    }

    func statement() -> Operation {
        return Operation(date: Date(), type: .statement, amount: self.balance)
    }
}

extension Account: CustomStringConvertible {
    var description: String {
        var returnValue = "date || credit || debit || balance\n"
        var balance: Double = self.balance
        self.operations.sort(by: { $0.date.compare($1.date) == .orderedDescending })
        for operation in operations {
            returnValue += "\(operation) || \(balance)\n"
            switch operation.type {
            case .deposit:
                balance -= operation.amount
            case .withdrawal:
                balance += operation.amount
            default:
                break
            }
        }
        return returnValue
    }
}

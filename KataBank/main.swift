//
//  main.swift
//  KataBank
//
//  Created by Kévin Courtois on 15/12/2019.
//  Copyright © 2019 Kévin Courtois. All rights reserved.
//

import Foundation

let account = Account()

account.deposit(amount: 1000, date: Date(dateString: "10/01/2012")!)
account.deposit(amount: 2000, date: Date(dateString: "13/01/2012")!)
account.withdrawal(amount: 500, date: Date(dateString: "14/01/2012")!)

print(account)

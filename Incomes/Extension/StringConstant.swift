//
//  StringConstant.swift
//  Incomes
//
//  Created by Hiromu Nakano on 2020/06/22.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import Foundation

extension String {
    // MARK: - Common
    static var empty: Self { "" }
    static var zero: Self { "0" }
    static var all: Self { "All" }
    static var caution: Self { "Caution" }
    static var cautionDetail: Self { "This action cannot be undone." }
    static var delete: Self { "Delete" }

    // MARK: - Home
    static var homeTitle: Self { "Home" }

    // MARK: - Group
    static var groupTitle: Self { "Group" }

    // MARK: - Edit
    static var editTitle: Self { "Edit" }
    static var createTitle: Self { "Create" }
    static var information: Self { "Information" }
    static var date: Self { "Date" }
    static var content: Self { "Content" }
    static var income: Self { "Income" }
    static var expenditure: Self { "Expenditure" }
    static var label: Self { "Label" }
    static var repeatCount: Self { "Repeat" }
    static var save: Self { "Save" }
    static var duplicate: Self { "Duplicate" }
    static var create: Self { "Create" }
    static var cancel: Self { "Cancel" }

    // MARK: - Settings
    static var settingsTitle: Self { "Settings" }
    static var icloud: Self { "iCloud" }
    static var limitedTime: Self { "for a limited time" }

    // MARK: - Image SystemName
    static var homeIcon: Self { "calendar" }
    static var groupIcon: Self { "tag" }
    static var settingsIcon: Self { "gear" }
    static var createIcon: Self { "square.and.pencil" }
}
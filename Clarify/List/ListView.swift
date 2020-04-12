//
//  ListView.swift
//  Clarify
//
//  Created by Hiromu Nakano on 2020/04/10.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import SwiftUI

struct ListView: View {
    @Environment(\.managedObjectContext) var context

    private let items: ListItems

    init(of items: ListItems) {
        self.items = items
    }

    var body: some View {
        List {
            ForEach(items.value) { item in
                ListItemView(of: item)
            }.onDelete(perform: delete)
        }
    }

    private func delete(indexSet: IndexSet) {
        indexSet.forEach {
            if let item = items.value[$0].original {
                context.delete(item)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(of:
            ListItems(value: [
                ListItem(date: Date(),
                         content: "Content",
                         income: 999999,
                         expenditure: 99999,
                         balance: 9999999)
            ])
        )
    }
}

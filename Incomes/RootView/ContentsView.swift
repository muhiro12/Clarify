//
//  ContentsView.swift
//  Incomes
//
//  Created by Hiromu Nakano on 2020/04/14.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import SwiftUI

struct ContentsView: View {
    let items: ListItems

    var body: some View {
        NavigationRootView(title: "Contents",
                           sections: createSection(from: items))
    }

    private func createSection(from items: ListItems) -> [SectionItems] {
        var sectionItemsArray: [SectionItems] = [SectionItems(key: "", value: [items])]
        items.grouped { $0.content.first.string.uppercased() }.reversed().forEach { items in
            sectionItemsArray.append(
                SectionItems(key: items.key,
                             value: items.grouped { $0.content })
            )
        }
        return sectionItemsArray
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentsView(items:
            ListItems(key: "All",
                      value: [
                        ListItem(id: UUID(),
                                 date: Date(),
                                 content: "Content",
                                 income: 999999,
                                 expenditure: 99999,
                                 balance: 9999999)
            ])
        )
    }
}

//
//  HomeListItemNarrowView.swift
//  Clarify
//
//  Created by Hiromu Nakano on 2020/04/10.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import SwiftUI

struct HomeListItemNarrowView: View {
    let item: HomeListItem

    var body: some View {
        HStack {
            Text(item.date.MMdd)
                .frame(width: .conponentS)
            Divider()
            VStack(spacing: 0) {
                Text(item.content)
                    .font(.headline)
                HStack {
                    Spacer()
                    Text(self.item.income.asCurrency)
                        .frame(width: .conponentS)
                    Divider()
                    Text(self.item.expenditure.asCurrency)
                        .frame(width: .conponentS)
                    Spacer()
                }.font(.caption)
                    .foregroundColor(.secondary)

            }
            Divider()
            Text(item.balance.asCurrency)
                .frame(width: .conponentL)
                .foregroundColor(item.balance >= 0 ? .primary : .red)
        }
    }
}

struct HomeListItemNarrowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListItemNarrowView(item: HomeListItem(date: Date(),
                                                  content: "Content",
                                                  income: 999999,
                                                  expenditure: 99999,
                                                  balance: 9999999))
    }
}

//
//  HomeView.swift
//  Clarify
//
//  Created by Hiromu Nakano on 2020/04/10.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.managedObjectContext) var context

    @State private var isPresented = false

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            HomeListView()
            FloatingCircleButtonView {
                self.isPresented = true
            }
        }.sheet(isPresented: $isPresented) {
            CreateView()
                .environment(\.managedObjectContext, self.context)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

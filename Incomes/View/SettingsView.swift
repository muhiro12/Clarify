//
//  SettingsView.swift
//  Incomes
//
//  Created by Hiromu Nakano on 2020/06/24.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var modernStyle = ModernStyle()
    @State private var iCloud = ICloud()

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $modernStyle.isOn) {
                        Text(LocalizableStrings.modernStyle.localized)
                    }
                }
                Section(footer: Text(LocalizableStrings.limitedTime.localized)) {
                    Toggle(isOn: $iCloud.isOn) {
                        Text(LocalizableStrings.iCloud.localized)
                    }
                }
            }.selectedListStyle()
                .navigationBarTitle(LocalizableStrings.settingsTitle.localized)
                .navigationBarItems(trailing: Button(action: dismiss) {
                    Text(LocalizableStrings.done.localized)
                        .bold()
                })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - private

private extension SettingsView {
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif

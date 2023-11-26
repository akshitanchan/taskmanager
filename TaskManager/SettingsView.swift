//
//  SettingsView.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var selectedPriority = 0
    @AppStorage("isTaskRemindersEnabled") private var isTaskRemindersEnabled = true

    let priorities = ["Low", "Medium", "High"]

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

                Picker("Priority", selection: $selectedPriority) {
                    ForEach(0..<3) {
                        Text(priorities[$0])
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.horizontal, 20)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

                Toggle("Task Reminders", isOn: $isTaskRemindersEnabled)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
            .padding()
            .navigationTitle("Settings")
            .frame(minWidth: 300, maxWidth: 300, minHeight: 200, maxHeight: 200)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

#Preview {
    SettingsView()
}

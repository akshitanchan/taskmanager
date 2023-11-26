//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(after: .newItem) {
                Button("Add New Task") {
                }
                .keyboardShortcut(KeyEquivalent("t"), modifiers: .command)
            }
            CommandGroup(after: .newItem) {
                Button("Add New Group") {
                }
                .keyboardShortcut(KeyEquivalent("g"), modifiers: .command)
            }
        }
        
        Settings {
            SettingsView()
        }
    }
}

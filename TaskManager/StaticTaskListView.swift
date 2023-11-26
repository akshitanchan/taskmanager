//
//  TaskListView.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import SwiftUI

struct StaticTaskListView: View {
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                    .font(.system(size: 16))
                Text(task.title)
            }
            .padding(.vertical, 3)
        }.toolbar {
            ToolbarItemGroup {
                Button {
                } label: {
                    Label("New Task", systemImage: "plus")
                }
                .keyboardShortcut(KeyEquivalent("t"), modifiers: .command)
            }
        }
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}

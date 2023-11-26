//
//  TaskListView.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    @State private var selectedTask: Task? = nil
    @State private var inspectorIsShown: Bool = false
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task,
                     selectedTask: $selectedTask,
                     inspectorIsShown: $inspectorIsShown)
            .padding(.vertical, 3)
        }
        .navigationTitle("TaskManager")
        .inspector(isPresented: $inspectorIsShown) {
            Group {
                if let selectedTask = selectedTask {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Title: \(selectedTask.title)")
                        Text("Completed: \(selectedTask.isCompleted ? "Yes" : "No")")
                        Text("Due Date: \(selectedTask.dueDate)")
                        if let details = selectedTask.details {
                            Text("Details: \(details)")
                        } else {
                            Text("Details: No additional details")
                        }
                    }
                    .padding()
                    .frame(minWidth: 200, maxWidth: .infinity, alignment: .leading)
                } else {
                    Text("Nothing Selected")
                        .frame(minWidth: 75, maxWidth: .infinity)
                }
            }
        }
        .toolbar {
            ToolbarItemGroup {
                Button {
                    tasks.append(Task(title: "New Task"))
                } label: {
                    Label("New Task", systemImage: "plus")
                }
                .keyboardShortcut(KeyEquivalent("t"), modifiers: .command)
            }
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}

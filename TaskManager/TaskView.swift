//
//  TaskView.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: Task
    @Binding var selectedTask: Task?
    @Binding var inspectorIsShown: Bool
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .font(.system(size: 16))
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
            
            Button(action: {
                if inspectorIsShown {
                    inspectorIsShown = false
                } else {
                    inspectorIsShown = true
                    selectedTask = task
                }
            }, label: {
                Text("Details")
            })
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()), 
             selectedTask: .constant(nil), inspectorIsShown: .constant(false))
    .padding()
}

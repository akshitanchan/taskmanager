//
//  Task.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Visit the museum", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {[
        Task(title: "Attend morning meetings"),
        Task(title: "Submit project preliminary research", isCompleted: true),
        Task(title: "Spend 30 minutes reading book", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
        Task(title: "Listen to a podcast"),
        Task(title: "Watch the new Indiana Jones"),
        Task(title: "Work on the \"secret things\""),
        Task(title: "Clean and organise the pantry", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
        Task(title: "Backup important files on the computer"),
        Task(title: "Grocery shopping for dinner party", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
        Task(title: "Spend a few minutes journaling"),
        Task(title: "Set goals for the next day")
        ]
    }
}

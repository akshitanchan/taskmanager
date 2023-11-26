//
//  TaskGroup.swift
//  TaskManager
//
//  Created by Akshit Anchan on 11/26/23.
//

import Foundation

struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    let creationDate: Date
    var tasks: [Task]
    
    init(title: String, tasks: [Task] = []) {
        self.title = title
        self.creationDate = Date()
        self.tasks = tasks
    }
    
    static func example() -> TaskGroup {
        let task1 = Task(title: "Listen to a podcast")
        let task2 = Task(title: "Watch the new Indiana Jones")
        let task3 = Task(title: "Clean and organise the pantry")
        
        var group = TaskGroup(title: "Personal")
        group.tasks = [task1, task2, task3]
        return group
    }
    
    static func examples() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "Projects")
        let group3 = TaskGroup(title: "University")
        return [group1, group2, group3]
    }
}

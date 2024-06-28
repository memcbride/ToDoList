//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Mark McBride on 6/26/24.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
}

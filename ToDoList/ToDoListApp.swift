// ------------------------------------------------------
// Project: ToDoList
// File: ToDoListApp.swift
// Created by Mark McBride on 2024.09.05
// Last Updated:  2024.09.17
// GitHub: https://github.com/memcbride
// ------------------------------------------------------
// Copyright © 2024 by MacModeler.  All rights reserved.


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
    
    // Will allow us to find where our simulator data is stored
    // Gallaugher credits Stewart Lynch for this trick
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}

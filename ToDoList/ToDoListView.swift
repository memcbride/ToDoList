// ------------------------------------------------------
// Project: ToDoList
// File: ToDoListView.swift
// Created by Mark McBride on 2024.09.05
// Last Updated:  2024.09.05
// GitHub: https://github.com/memcbride
// ------------------------------------------------------
// Copyright © 2024 by MacModeler.  All rights reserved.


import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a Vacation"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}

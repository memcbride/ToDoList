//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Mark McBride on 6/26/24.
//

import SwiftUI

struct ToDoListView: View {
    
    var toDos = ["Learn Swift",
                 "Build App",
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
                .navigationTitle("To Do List")
                .navigationBarTitleDisplayMode(.automatic)
                .listStyle(.plain)
            }
        }
    }
}
    
#Preview {
    ToDoListView()
}

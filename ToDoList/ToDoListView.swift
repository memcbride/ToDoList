//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Mark McBride on 6/26/24.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    @Query var toDos: [ToDo]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos) { toDo in
                    HStack{
                        Image(systemName: toDo.isCompleted ? "checkmark.retangle" : "rectangle")
                            .onTapGesture {
                                toDo.isCompleted.toggle()
                            }
                        NavigationLink {
                            DetailView(toDo: toDo)
                        } label: {
                            Text(toDo.item)
                        }
                    }
                    .font(.title2)
                    .swipeActions {
                        Button("Delete", role: .destructive) {
                            modelContext.delete(toDo) 
                        }
                    }
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: ToDo())
                }
            }
        }
    }
}
    
    
#Preview {
    ToDoListView()
        .modelContainer(for: ToDo.self)
}

//
//  DetailView.swift
//  ToDoList
//
//  Created by Mark McBride on 6/26/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var toDosVM: ToDosViewModel
    @State var toDo: ToDo
    var newToDo = false
    
    var body: some View {
        List {
            TextField("Enter To Do here", text: $toDo.item)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                .listRowSeparator(.hidden)
            
            Toggle("Set Reminder", isOn: $toDo.reminderIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
            DatePicker("Date", selection: $toDo.dueDate)
                .listRowSeparator(.hidden)
                .padding(.bottom)
                .disabled(!toDo.reminderIsOn)
            
            Text("Notes:")
            TextField("Notes", text: $toDo.notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            
            Toggle("Completed", isOn: $toDo.isCompleted )
                .padding(.top)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    toDosVM.saveToDo(toDo: toDo, newToDo: newToDo)
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailView(toDo: ToDo())
            .environmentObject(ToDosViewModel())
    }
}

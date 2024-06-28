//
//  ToDoViewModel.swift
//  ToDoList
//
//  Created by Mark McBride on 6/27/24.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init() {
        // Temp Data here, will eventually load data in
        toDos.append(ToDo(id: UUID().uuidString, item: "Learn Swift"))
        toDos.append(ToDo(id: UUID().uuidString,item: "Build Apps"))
        toDos.append(ToDo(id: UUID().uuidString,item: "Change the World!"))
        toDos.append(ToDo(id: UUID().uuidString,item: "Take a Vacation"))
    }
    
    func saveToDo(toDo: ToDo) {
        // if new, append to toDoVM.todos else update the toDO that was passed in from the List
        if toDo.id == nil {
            var newToDo = toDo
            newToDo.id = UUID().uuidString
            toDos.append(newToDo)
        } else {
            if let index = toDos.firstIndex(where:  {$0.id == toDo.id}) {
                toDos[index] = toDo
            }
        }
    }
    
    func deleteToDo(indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    
    func moveToDo(fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

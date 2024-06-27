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
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change the World!"))
        toDos.append(ToDo(item: "Take a Vacation"))
    }
    
    func saveToDo(toDo: ToDo, newToDo: Bool) {
        // if new, append to toDoVM.todos else update the toDO that was passed in from the List
        if newToDo {
            toDos.append(toDo)
        } else {
            if let index = toDos.firstIndex(where:  {$0.id == toDo.id}) {
                toDos[index] = toDo
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

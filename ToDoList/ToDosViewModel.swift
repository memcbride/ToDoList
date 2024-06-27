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
}

//
//  ToDoViewModel.swift
//  ToDoList
//
//  Created by Mark McBride on 6/27/24.
//

import Foundation
import SwiftData

class ToDo: ObservableObject {
    var item = ""
    var reminderIsOn = false
    var dueDate = Date.now + (60*60*24)
    var notes = ""
    var isCompleted = false
}

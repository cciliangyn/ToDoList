//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Cecilia Nguyen on 5/16/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .padding(.horizontal)
            }
            Button {
                addToDo()
                self.showNewTask = false
            } label: {
                    Text("Save")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .padding()
            .buttonStyle(.borderedProminent)
       
            

        }
        .padding()
        
    }
    
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}
//
//#Preview {
//    NewToDoView()
//}

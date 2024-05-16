//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Cecilia Nguyen on 5/16/24.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .padding(.horizontal)
            }
            Button {

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
}

#Preview {
    NewToDoView()
}

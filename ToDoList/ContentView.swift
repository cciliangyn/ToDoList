//
//  ContentView.swift
//  ToDoList
//
//  Created by Cecilia Nguyen on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.system(size: 40))
                }
            }
            .padding(25.0)
            Spacer()
        }
        if showNewTask {
            NewToDoView()
        }
    }
}
    

#Preview {
    ContentView()
}

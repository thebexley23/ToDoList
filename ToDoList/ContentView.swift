//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/11/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false  // fixed typo
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40, weight: .bold))
                Spacer()
                Button(action: {
                    showNewTask = true
                }) {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()

            if showNewTask {
                NewToDo()
            }
        }
        Spacer ()
        List {
                ForEach (toDos) { toDoItem in
                        Text(toDoItem.title)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

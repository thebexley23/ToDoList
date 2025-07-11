//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 7/11/25.
//

import SwiftUI

struct NewToDo: View {
    var body: some View {
        VStack {
            Text("Task Title:")
            TextField("Enter text description here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is this important?")
            }

        }
        .padding()
    }
}

#Preview {
    NewToDo()
}

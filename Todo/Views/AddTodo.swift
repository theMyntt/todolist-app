//
//  AddTodo.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct AddTodo: View {
    @State var todoTitle = ""
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: TodoViewModel
    
    var body: some View {
        ScrollView {
            TextField("Type something here...", text: $todoTitle)
                .padding()
            Button(action: {
                viewModel.newItem(title: todoTitle)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Save")
                    .padding()
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            })
        }
        .padding()
        .navigationTitle("Add a Todo 🖋️")
    }
}

struct AddTodo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTodo()
        }
    }
}

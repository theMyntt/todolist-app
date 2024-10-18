//
//  ListView.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var viewModel: TodoViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.items) { item in
                ItemView(item: item)
            }
            .onDelete(perform: viewModel.deleteItem)
            .onMove(perform: viewModel.moveItem)
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton( ),
            trailing: NavigationLink("Add", destination: AddTodo()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(TodoViewModel())
    }
}

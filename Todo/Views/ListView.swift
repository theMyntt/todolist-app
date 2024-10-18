//
//  ListView.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct ListView: View {
    @State var items: [TodoModel] = [
        TodoModel(title: "First element", isCompleted: false),
        TodoModel(title: "Second element", isCompleted: true),
        TodoModel(title: "Third element", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ItemView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton( ),
            trailing: NavigationLink("Add", destination: AddTodo()))
    }
    
    func deleteItem(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

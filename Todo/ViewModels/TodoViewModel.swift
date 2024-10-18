//
//  TodoViewModel.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var items: [TodoModel] = []
    
    init() {
        seedItems()
    }
    
    func seedItems() {
        let newItems: [TodoModel] = [
            TodoModel(title: "First element", isCompleted: false),
            TodoModel(title: "Second element", isCompleted: true),
            TodoModel(title: "Third element", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func newItem(title: String) {
        let item: TodoModel = TodoModel(title: title, isCompleted: false)
        
        if (title != "") {
            items.append(item)
        }
    }
}

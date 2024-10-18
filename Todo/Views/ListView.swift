//
//  ListView.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First item",
        "Second item",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ItemView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton( ),
            trailing: NavigationLink("Add", destination: Text("Hello")))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

//
//  ItemView.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct ItemView: View {
    let item: TodoModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: TodoModel(title: "First element", isCompleted: false))
    }
}

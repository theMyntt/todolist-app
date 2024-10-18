//
//  ItemView.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import SwiftUI

struct ItemView: View {
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(title: "My Item")
    }
}

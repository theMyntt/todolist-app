//
//  TodoModel.swift
//  Todo
//
//  Created by Gabriel Araújo Lima on 18/10/24.
//

import Foundation

struct TodoModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

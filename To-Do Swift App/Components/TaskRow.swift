//
//  TaskRow.swift
//  To-Do Swift App
//
//  Created by Sayor Debbarma on 19/02/23.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: completed ?
                  "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do 1 hr coding", completed: true)
    }
}

//
//  AddTaskView.swift
//  To-Do Swift App
//
//  Created by Sayor Debbarma on 19/02/23.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Add a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter the task here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button{
                print("task added")
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hue: 0.297, saturation: 0.9, brightness: 0.565))
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color("AccentColor"))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}

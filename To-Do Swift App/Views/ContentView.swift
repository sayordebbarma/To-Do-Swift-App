//
//  ContentView.swift
//  To-Do Swift App
//
//  Created by Sayor Debbarma on 19/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color("AccentColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

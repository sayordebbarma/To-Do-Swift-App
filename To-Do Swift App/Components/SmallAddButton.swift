//
//  SmallAddButto.swift
//  To-Do Swift App
//
//  Created by Sayor Debbarma on 20/02/23.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack(){
            Circle()
                .frame(height: 50)
                .foregroundColor(Color(hue: 0.297, saturation: 0.959, brightness: 0.427))
            
            Text("+")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct SmallAddButto_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}

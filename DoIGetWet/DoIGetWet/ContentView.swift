//
//  ContentView.swift
//  DoIGetWet
//
//  Created by user286705 on 08.10.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Lübeck")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(Color(.white))

                    .frame(width: 200, height:200)
                    .background(Color(.red))    //Modifiers wrap previous Content into own Views
            }
        }
    }
}

#Preview {
    ContentView()
}

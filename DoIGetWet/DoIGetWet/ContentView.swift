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
            
            VStack(spacing: 8){
                Text("Lübeck, SH")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(Color(.white))

                    //.frame(width: 200, height:200)
                    //.background(Color(.red))    // Modifiers wrap previous Content into own Views
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    Text("11°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(Color.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

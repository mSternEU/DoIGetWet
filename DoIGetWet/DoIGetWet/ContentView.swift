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
                HStack{
                    TagesSpalte(wochentag: "FRI",
                                imageName: "cloud.sun.fill",
                                temperature: 12)
                    TagesSpalte(wochentag: "SAT",
                                imageName: "cloud.sun.fill",
                                temperature: 9)
                    TagesSpalte(wochentag: "SUN",
                                imageName: "cloud.sun.fill",
                                temperature: 11)
                    TagesSpalte(wochentag: "MON",
                                imageName: "cloud.sun.fill",
                                temperature: 30)
                    TagesSpalte(wochentag: "TUE",
                                imageName: "cloud.sun.fill",
                                temperature: 32)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct TagesSpalte: View {
    
    var wochentag: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(wochentag)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(Color.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            Text("\(temperature)°C")
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(Color.white)
        }
    }
}

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
            BackgroundView(topColor: .black, bottomColor: .gray)
            
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
                    Text("12°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(Color.white)
                }
                
                Spacer()
                
                HStack(spacing:22){
                    TagesSpalte(wochentag: "FRI",
                                imageName: "cloud.sun.fill",
                                temperature: 12)
                    TagesSpalte(wochentag: "SAT",
                                imageName: "tornado",
                                temperature: 9)
                    TagesSpalte(wochentag: "SUN",
                                imageName: "cloud.sun.fill",
                                temperature: 11)
                    TagesSpalte(wochentag: "MON",
                                imageName: "thermometer.sun.fill",
                                temperature: 30)
                    TagesSpalte(wochentag: "TUE",
                                imageName: "exclamationmark.triangle",
                                temperature: 32)
                }
                
                Spacer()
                
                Button{
                    print("tapped")
                }
                label:{
                    Text("Switch mode")
                        .frame(width: 280, height: 50)
                        .background(Color.yellow)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .cornerRadius(10.0)
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

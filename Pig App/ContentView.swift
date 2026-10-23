//
//  ContentView.swift
//  Pig App
//
//  Created by giovanni rodriguez on 10/22/26.
//

import SwiftUI

struct ContentView: View {
       @State private var turnScore = 0
       @State private var gameScore = 0
       @State private var dieValue = 1
        @State private var rotation = 0.0
       var body: some View {
           ZStack {
               Color.gray.opacity(0.25)
                   .ignoresSafeArea()

               VStack {
                   
                   CustomText(text: "Pig")
                   Image("Pig 1")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 150, height: 150)
                   
                   Image("Die\(dieValue)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .rotationEffect(.degrees(rotation))

                   
                   CustomText(text: "Turn Score: \(turnScore)")

                   HStack {
                       Button("Roll") {
                       }
                       .buttonStyle(CustomButtonStyle())
                       
                       Button("Hold") {
                           
                       }
                       .buttonStyle(CustomButtonStyle())
                   }
                   CustomText(text: "Game Score: \(gameScore)")

                   Spacer()
               }
           }    .padding()
       }
   }

   
   struct CustomText: View {
       let text: String

       var body: some View {
           Text(text)
               .font(.custom("Marker Felt", size: 28))
               .foregroundColor(.black)
       }
   }

#Preview {
    ContentView()
}

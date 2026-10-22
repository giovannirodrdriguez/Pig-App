//
//  ContentView.swift
//  Pig App
//
//  Created by giovanni rodriguez on 10/22/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack {
                Image("Pig 1").resizable().frame(width: 150, height: 150)
                Text("Pig")

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

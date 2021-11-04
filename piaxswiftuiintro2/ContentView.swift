//
//  ContentView.swift
//  piaxswiftuiintro2
//
//  Created by Bill Martensson on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var showReadmoreSheet = false
    @State var showReadmoreFull = false

    @State var showReadmoreNav = false

    
    @State var showEmptyFull = false

    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ReadmoreView(), isActive: $showReadmoreNav) {
                }
                
                EmptyView().fullScreenCover(isPresented: $showEmptyFull) {
                    ReadmoreView()
                }
                
                
                Text("Hello, world!")
                    .padding()
                    .navigationTitle("Start")
                
                Button(action: {
                    showReadmoreNav = true
                }) {
                    Text("En knapp")
                }
                .padding(.all)
                
                
                Button("Läs mera sheet") {
                    showReadmoreSheet = true
                }
                .padding(.all)
                .sheet(isPresented: $showReadmoreSheet) {
                    ReadmoreView()
                }

                Button("Läs mera full screen") {
                    showReadmoreFull = true
                }
                .padding(.all)
                .fullScreenCover(isPresented: $showReadmoreFull) {
                    ReadmoreView()
                }

                
                NavigationLink(destination: ReadmoreView()) {
                    Text("Läs mer nav")
                }
                
                
                
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

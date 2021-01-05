//
//  ContentView.swift
//  Game Store UI
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home().tabItem{
                Image("home")
            }
            
            Text("Globe").tabItem {
                Image("globe")
            }
            
            Text("cart").tabItem {
                Image("cart")
            }
            
            Text("Heart").tabItem {
                Image("heart")
            }
            
            Text("user").tabItem {
                Image("user")
            }
        }.accentColor(Color("Color"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

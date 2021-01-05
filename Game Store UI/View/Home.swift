//
//  Home.swift
//  Game Store UI
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct Home: View {
    
    @State var selected = "Games"

    var body: some View {
        VStack(spacing: 15) {
            HStack{
                Text("Game Store").fontWeight(.heavy).font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("search").renderingMode(.original)
                })
            }.padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(scorllist, id: \.self) { i in
                        Button(action: {
                            self.selected = i
                        }, label: {
                            Text(i).padding().foregroundColor(self.selected == i ? Color.black : Color.gray).overlay(
                                Capsule()
                                    .fill(self.selected == i ? Color("Color") : Color.clear)
                                    .frame(height: 5)
                                    .padding(.top, 30)
                            )
                        })
                    }
                }
            })
            
            middleView()
            bottomView()
        }.padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

// I already implemented samle data....

var scorllist = ["Games","Apps","Preorders","App Purchases"]

var toplist = ["s2","s1","s3"]

var infos = ["info1","info2","info3"]

var options = ["Information","Reviews"]

struct type : Identifiable {
    var id : Int
    var name : String
    var price : String
    var image : String
}

var bottomlist = [type(id: 0, name: "Tiny Guardians", price: "$29.99",image: "h1"),
  type(id: 1, name: "Kingdom Rush", price: "$15.99",image: "h2"),
  type(id: 2, name: "Dragon Heroes", price: "$9.99",image: "h3"),
  type(id: 3, name: "War Of Crown", price: "$19.99",image: "h4")]

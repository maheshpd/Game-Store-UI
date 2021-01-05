//
//  ExpandView.swift
//  Game Store UI
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct ExpandView: View {
    
    @Binding var show : Bool
    
    var body: some View {
        VStack{
            
            ZStack {
                Image("top").resizable().frame(height: 250)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "play.circle.fill").font(.largeTitle)
                }).foregroundColor(.white)
            }.overlay(
                VStack{
                    HStack{
                        Button(action: {
                            self.show.toggle()
                        }, label: {
                            Image(systemName: "chevron.left").font(.body)
                        }).foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("search")
                        }).foregroundColor(.white)
                    }.padding()
                    
                    Spacer()
                    
                }
            
            )
            
            ScrollView(.vertical, showsIndicators: false, content: {
                expandBottom()
            })
            
            
        }
    }
}

struct ExpandView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandView(show: .constant(true))
    }
}

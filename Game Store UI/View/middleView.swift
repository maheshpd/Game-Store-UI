//
//  middleView.swift
//  Game Store UI
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct middleView: View {
    
    @State var show = false
    
    var body: some View {
        VStack(spacing: 15) {
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(toplist, id: \.self) { i in
                        Image(i).renderingMode(.original).onTapGesture {
                            self.show.toggle()
                        }
                    }
                }
            }).padding(.vertical, 15)
            
            HStack(spacing: 15) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("cards").renderingMode(.original)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("puzzle").renderingMode(.original)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("punch").renderingMode(.original)
                })
            }
        }.sheet(isPresented: self.$show, content: {
            ExpandView(show: self.$show)
        })
    }
}

struct middleView_Previews: PreviewProvider {
    static var previews: some View {
        middleView()
    }
}

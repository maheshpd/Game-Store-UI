//
//  bottomView.swift
//  Game Store UI
//
//  Created by Mahesh Prasad on 04/01/21.
//

import SwiftUI

struct bottomView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack(spacing: 10) {
                Capsule().fill(Color("Color")).frame(width: 5, height: 25)
                
                Text("New And Trending")
                
                Spacer()
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(bottomlist) { i in
                        VStack(alignment: .leading, spacing: 8, content: {
                            Image(i.image).renderingMode(.original)
                            Text(i.name)
                            Image("os")
                            Text(i.price).foregroundColor(Color("Color"))
                        })
                    }
                }
            })
        }
    }
}

struct bottomView_Previews: PreviewProvider {
    static var previews: some View {
        bottomView()
    }
}

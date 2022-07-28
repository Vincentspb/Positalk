//
//  Extensions.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import Foundation
import SwiftUI

//Critics colectionview
struct criticsList: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 390, height: 100)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 3, x: 0, y: 3)
                .padding([.top,.bottom],4)
            HStack{
                Image("LargeThought")
                    .padding(.leading,48)
                    .padding(.trailing,18)
                VStack (alignment: .leading, spacing: 4){
                    Text("Critics Name")
                        .fontWeight(.bold)
                        .foregroundColor(Color("teal"))
                    Text("Critics")
                }
                Spacer()
            }
        }
        
    }
}


struct criticsList_Previews: PreviewProvider {
    static var previews: some View {
        criticsList()
    }
}

//
//  CriticsView.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI
struct CriticsView: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Critics")
                .font(.system(size: 34))
                .fontWeight(.bold)
                .padding(.top,104)
            
            criticsList()
            criticsList()
            criticsList()
            criticsList()

        }
    }
}

struct CriticsListView_Previews: PreviewProvider {
    static var previews: some View {
        CriticsView()
    }
}

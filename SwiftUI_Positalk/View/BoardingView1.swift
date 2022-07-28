//
//  BoardingView1.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

struct BoardingView1: View {
    
    @State var isPresenting = false
    
    // App State
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Welcome to")
                    .font(.system(size:34))
                    .fontWeight(.bold)
                Text("Positalk")
                    .font(.system(size:34))
                    .fontWeight(.bold)
                    .foregroundColor(Color("teal"))
                Image("BoardingView1")
                Text("Negativity is a real problem that can hold you back. Positalk is an app to help you deal with it.")
                    .padding()
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button{
                    isPresenting = true
                    appState.switchScene = .addname
                }
            label:{
                Text("Okay, I understand")
                    .fontWeight(.bold)
                    .frame(width: 296, height: 48)
                    .background(Color("teal"))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(color: .gray, radius: 3, x: 0, y: 3)
                
//                NavigationLink(destination:BoardingView2()
//                    .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
//                        EmptyView()
//                    }
            }
                Spacer()
            }
            
        }
        
    }
}

struct BoardingView1_Previews: PreviewProvider {
    static var previews: some View {
        BoardingView1()
    }
}

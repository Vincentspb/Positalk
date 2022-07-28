//
//  BoardingView2.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

struct BoardingView2: View {
    
    @State var nickname = ""
    @State var isPresenting = false
    
    // App State
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack{
            Text("What's your")
                .font(.system(size:34))
                .fontWeight(.bold)
            Text("nickname?")
                .font(.system(size: 34))
                .fontWeight(.bold)
            TextField("Nickname", text: $appState.nickname)
                .underlineTextField()
                .padding()
            Button{
                isPresenting = true
                appState.switchScene = .main
            }
            label:{
            Text("Done")
                .fontWeight(.bold)
                .frame(width: 296, height: 48)
                .background(Color("teal"))
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 3, x: 0, y: 3)
            
//            NavigationLink(destination:TabBarView()
//                .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
//                    EmptyView()
//                }
        }
            
        }
        
    }
}

struct BoardingView2_Previews: PreviewProvider {
    static var previews: some View {
        BoardingView2()
    }
}

extension Color {
    static let darkPink = Color(red: 45 / 255, green: 164 / 255, blue: 172 / 255)
}
extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.darkPink)
            .padding(10)
    }
}

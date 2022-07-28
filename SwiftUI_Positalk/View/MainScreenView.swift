//
//  MainScreenView.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

struct MainScreenView: View {
    
    @State var isPresenting = false
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack{
            Text("Hi,")
                .font(.system(size:34))
                .fontWeight(.bold)
            Text(appState.nickname)
                .font(.system(size:34))
                .fontWeight(.bold)
                .foregroundColor(Color("teal"))
            Image("Main Screen Image")
                .padding()
            Text("Negativity is a real problem that can hold you back. Positalk is an app to help you deal with it.")
                .padding()
                .multilineTextAlignment(.center)
            Button{
                isPresenting = true
            }
        label:{
            Text("My mind is talking")
                .fontWeight(.bold)
                .frame(width: 296, height: 48)
                .background(Color("teal"))
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 3, x: 0, y: 3)
        }
        }
        
        .sheet(isPresented: $isPresenting)
        {
            InputCritic1View(isPresenting: $isPresenting)
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}

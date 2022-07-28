//
//  InputCritic1View.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

struct InputCritic1View: View {
    
//    @State var showModal = false
    @Binding var isPresenting: Bool
    @State var mindFieldText: String = ""
    
    var body: some View {
        NavigationView{
        VStack{
            Text("What is your mind talking about?")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding()
            TextField("Type something here", text: $mindFieldText)
                .multilineTextAlignment(.center)
                .padding(.vertical,80)
                .background(Color.gray.opacity(0.3).cornerRadius(12))
                .frame(width: 328, height: 160, alignment: .center)
            
            Text("How much does it affect you?")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.top,40)
                .padding(.bottom,12)
            HStack{
                ZStack{
                    Rectangle()
                        .frame(width: 96, height: 124)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(color: .gray, radius: 3, x: 0, y: 3)
                        .padding()
                    VStack{
                    Image("SmallThought")
                    Text("Just a little")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                    }
                }
                ZStack{
                    Rectangle()
                        .frame(width: 96, height: 124)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(color: .gray, radius: 3, x: 0, y: 3)
                        .padding()
                    VStack{
                    Image("MediumThought")
                    Text("Not much")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                    }
                }
                ZStack{
                    Rectangle()
                        .frame(width: 96, height: 124)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(color: .gray, radius: 3, x: 0, y: 3)
                        .padding()
                    VStack{
                    Image("LargeThought")
                    Text("Too much")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                    }
                }
            }
            
            Button{
//                isPresenting = true
            }
        label:{
            Text("Next")
                .fontWeight(.bold)
                .frame(width: 296, height: 48)
                .background(Color("teal"))
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 3, x: 0, y: 3)
        }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel") {
                    isPresenting.toggle()
                }
            }
        }
        }
    }
}

//struct InputCritic1View_Previews: PreviewProvider {
//    static var previews: some View {
//        InputCritic1View()
//    }
//}

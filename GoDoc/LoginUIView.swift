//
//  LoginUIView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 08/07/24.
//

import SwiftUI

struct LoginUIView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image(.logo)
                        .resizable()
                        .frame(width: 200, height: 200)
            Text("GoDoc")
               // .font(.largeTitle)
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, -20)
                .foregroundColor(Color(hex: "#CB6CE6"))
            
            Text("Login")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            VStack(spacing: 16.0){
                InputFieldView(data: $username, title: "Username")
                InputFieldView(data: $password, title: "Passsword")
            }
            .padding(.bottom, 25)
            //.padding(.horizontal, 60)
            
            Button(action: {}) {
                Text("Login")
                    .fontWeight(.heavy)
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            .frame(width: 500)
        }.padding()
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}

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
            Text("GoDoc")
               // .font(.largeTitle)
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20.0)
               // .padding(.bottom, 5)
            Text("Login")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
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
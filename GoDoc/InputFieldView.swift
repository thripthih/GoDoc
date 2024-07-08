//
//  InputFieldView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 08/07/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    
    var body: some View {
        ZStack {
            TextField("", text: $data)
              .padding(.horizontal, 10)
              .frame(height: 52)
              .overlay(
                RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                    .stroke(Color.gray, lineWidth: 1)
              )
            HStack {
              Text(title ?? "Input")
                .font(.headline)
                .fontWeight(.thin)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(4)
                .background(.white)
              Spacer()
            }
            .padding(.leading, 8)
            .offset(CGSize(width: 0, height: -26))
          }.padding(4)
            .frame(width: 500)
    }
}

struct InputFieldView_Previews: PreviewProvider {
    @State static var data: String = ""
    
    static var previews: some View {
        InputFieldView(data: $data, title: "Password")
    }
}

//
//  HeaderView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 10/07/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
      //  VStack {
            HStack {
                Spacer()
                
                Text("GoDoc")
                    //.font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                Spacer()
            }
            .frame(height: 80)
          //  .padding(.vertical, 10)
            .background(Color(hex: "#61017C"))
            .frame(maxWidth: .infinity)
            
            //Spacer() 
       // }
       // .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    HeaderView()
}

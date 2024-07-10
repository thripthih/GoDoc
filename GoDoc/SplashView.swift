//
//  SplashView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 09/07/24.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                LoginUIView()
            } else {
                Rectangle()
                    .fill(Color(hex: "#61017C"))
                    .ignoresSafeArea()
                Text("GoDoc")
                   // .font(.largeTitle)
                    .font(.system(size: 80))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

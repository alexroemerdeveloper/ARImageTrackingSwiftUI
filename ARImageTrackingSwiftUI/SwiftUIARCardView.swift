//
//  SwiftUIARCardView.swift
//  ARImageTrackingSwiftUI
//
//  Created by Alexander Römer on 30.10.20.
//

import SwiftUI

struct SwiftUIARCardView: View {
    @State private var textToShow = "Hello AR"
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading,endPoint: .bottomTrailing)) .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(textToShow)
                    .foregroundColor(.white)
                    .bold().font(.title)
                
                Button(action: {
                        self.textToShow = "Button Tapped!" })
                {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(width: 150, height: 50)
                        Text("Tap Me")
                    }
                    
                }
            }
            
        }
    }
    
}

struct SwiftUIARCardView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIARCardView()
    }
}

//
//  ContentView.swift
//  Hue Rotation
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    @State private var shiftColors = false
    @State private var image = "dog"
    let backgroundColor = Color(.black)
    
    //MARK: BODY
    
    var body: some View {
        VStack{
            ZStack{
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                    .scaleEffect(1.4)
                Image(image)
                    .resizable()
                    .padding(20)
                    .frame(width: 350, height: 350)
                    .hueRotation(.degrees(self.shiftColors ? 360 * 2 : 0))
                    .animation(Animation.easeInOut(duration: 2).delay(0.4).repeatForever(autoreverses: true))
                    .onAppear{
                        self.shiftColors.toggle()
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

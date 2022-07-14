//
//  ContentView.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var tabSelection: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear).ignoresSafeArea()
            
            VStack {
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Text("Ch8sers").font(.title3).fontWeight(.heavy)
                Text("iOS Developer")
                Capsule()
                    .foregroundColor(Color.green)
                    .frame(height: 44)
                    .overlay(Text("Sign Up").fontWeight(.heavy))
                    .onTapGesture {
                        tabSelection = 2
                    }
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .padding()
        }
    }
        
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabSelection: .constant(1))
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

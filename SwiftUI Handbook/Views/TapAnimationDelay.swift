//
//  TapAnimationDelay.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct TapAnimationDelay: View {
    @State var tap = false
    
    var body: some View {
        VStack {
            Text("View More").foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [(Color.purple), (Color.blue)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color.blue.opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x: 0, y:tap ? 10 : 20)
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6))
        .onTapGesture {
            tap = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                tap = false
            }
        }
    }
}

struct TapAnimationDelay_Previews: PreviewProvider {
    static var previews: some View {
        TapAnimationDelay()
    }
}

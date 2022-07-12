//
//  TransfromAnimations.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.

//  Could use to reveal more on a user profile, user has to give permission to other users

import SwiftUI

struct TransfromAnimations: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 20)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(Color.purple)
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
//                .rotationEffect(Angle(degrees: show ? 30 : 0))
//                .rotation3DEffect(
//                    Angle(degrees: show ? 60 : 0),
//                    axis: (x: 1, y: 0, z: 0.0),
//                    anchor: .center,
//                    anchorZ: 0.0,
//                    perspective: 1)
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
        }
    }
}

struct TransfromAnimations_Previews: PreviewProvider {
    static var previews: some View {
        TransfromAnimations()
    }
}

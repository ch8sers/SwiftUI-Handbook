//
//  ViewTransitionsAndAnimations.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.

//  Great for more detail of information

import SwiftUI

struct ViewTransitionsAndAnimations: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
            if show {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .transition(.move(edge: .bottom))
                              //.slide | .scale
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct ViewTransitionsAndAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitionsAndAnimations()
    }
}

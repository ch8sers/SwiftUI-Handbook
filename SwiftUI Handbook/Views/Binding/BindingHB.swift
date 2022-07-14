//
//  BindingHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct BindingHB: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            if show {
                NewView(show: $show)
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
            }
        }
    }
}

struct BindingHB_Previews: PreviewProvider {
    static var previews: some View {
        BindingHB()
    }
}

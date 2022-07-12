//
//  AnimationStates.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct AnimationStates: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Text("View More")
                .bold()
                .foregroundColor(.white)
        }
        
        .frame(width: show ? 320 : 300, height:  show ? 600 : 44)
        .background(Color.blue)
        .cornerRadius(30)
        .shadow(color: .blue.opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
        
    }
}

struct AnimationStates_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStates()
    }
}

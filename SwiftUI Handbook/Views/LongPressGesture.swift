//
//  LongPressGesture.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct LongPressGesture2: View {
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        Image (systemName: "camera.fill")
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(show ? Color.black : Color.blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring())
            .gesture(
                LongPressGesture(minimumDuration: 0.5).updating($press) { currentState, gestureState, transaction in
                    gestureState = currentState
                    
                }
                    .onEnded { value in
                        show.toggle()
                        
                    }
            )
        
    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture2()
    }
}

//
//  AnimationRepeatDelaySpeed.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct AnimationRepeatDelaySpeed: View {
    @State var appear = false
    
    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .frame(width: 44, height: 44)
            .rotationEffect(Angle(degrees: appear ? 360 : 0))
            .animation(Animation.linear(duration: 2).delay(1).repeatCount(3, autoreverses: false))
            .onAppear {
                appear = true
            }
    }
}

struct AnimationRepeatDelaySpeed_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRepeatDelaySpeed()
    }
}

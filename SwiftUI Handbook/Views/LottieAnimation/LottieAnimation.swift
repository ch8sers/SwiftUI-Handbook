//
//  LottieAnimation.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct LottieAnimation: View {
    var body: some View {
        LottieView(name: "success", loopMode: .loop)
    }
}

struct LottieAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LottieAnimation()
    }
}

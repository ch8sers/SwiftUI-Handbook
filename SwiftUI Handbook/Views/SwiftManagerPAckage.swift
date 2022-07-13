//
//  SwiftManagerPAckage.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI
import SwiftUIX

struct SwiftManagerPAckage: View {
    var body: some View {
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .font(.largeTitle)
            
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterialLight)
        }
    }
}

struct SwiftManagerPAckage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftManagerPAckage()
    }
}

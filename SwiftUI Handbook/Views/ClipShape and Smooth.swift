//
//  ClipShape and Smooth.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct ClipShape_and_Smooth: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            
            VStack {
                Text("Complete Wugi 1st Screen")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            // Good for profile Picture
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
    }
}

struct ClipShape_and_Smooth_Previews: PreviewProvider {
    static var previews: some View {
        ClipShape_and_Smooth()
    }
}

//
//  MatchedGeometryEffect.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct MatchedGeometryEffect: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                Rectangle()
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .frame()
            }
           
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                show.toggle()
            }
        }
    }
}

struct MatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffect()
    }
}

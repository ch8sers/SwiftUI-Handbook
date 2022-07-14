//
//  Horizontal3DScroll.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct Horizontal3DScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 30)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .rotation3DEffect(
                                Angle(degrees: Double(geometry.frame(in: .global).minX - 16) / -20),
                                axis: (x: 0.0, y: 1.0, z: 0.0),
                                anchor: .center,
                                anchorZ: 0.0    ,
                                perspective: 1)
                        
                    }
                    .frame(width: 300, height: 300)
                }
            }
            .padding()
        }
    }
}

struct Horizontal3DScroll_Previews: PreviewProvider {
    static var previews: some View {
        Horizontal3DScroll()
    }
}

//
//  HoverEffectHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct HoverEffectHB: View {
    @State var isHover = false
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Hover Effect")
            }
                    .padding()
                    .contentShape(RoundedRectangle(cornerRadius: 10))
                .hoverEffect(.lift)
            
            Text("Hover Effect")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: isHover ? 0 : 1, to: 1)
                        .stroke()
                )
                .contentShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isHover ? 1.2 : 1)
                .animation(.spring())
                .onHover { hover in
                    isHover = hover
            }
        }
    }
}

struct HoverEffectHB_Previews: PreviewProvider {
    static var previews: some View {
        HoverEffectHB()
    }
}

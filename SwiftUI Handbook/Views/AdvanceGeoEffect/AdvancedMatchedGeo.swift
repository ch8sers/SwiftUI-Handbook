//
//  AdvancedMatchedGeo.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct AdvancedMatchedGeo: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 10)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                            .frame(width: 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "text", in: namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .matchedGeometryEffect(id: "play", in: namespace)
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .matchedGeometryEffect(id: "forward", in: namespace)
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                    .fill(Color.orange))
                .matchedGeometryEffect(id: "background", in: namespace)
            } else {
                PlayView(namespace: namespace)
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .onTapGesture {
            withAnimation(.spring()) {
            show.toggle()
            }
        }
    }
}

struct AdvancedMatchedGeo_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedMatchedGeo()
    }
}

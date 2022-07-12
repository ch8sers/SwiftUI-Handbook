//
//  MaskAndTransParency.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct MaskAndTransParency: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                ForEach(0..<5) { item in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300, alignment: .top)
            .padding()
            .background(Color.white)
            // Clip is for shapes, Mask is for items
            .mask(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red, Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
            .padding()
        }
    }
}

struct MaskAndTransParency_Previews: PreviewProvider {
    static var previews: some View {
        MaskAndTransParency()
    }
}

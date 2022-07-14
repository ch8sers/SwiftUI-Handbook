//
//  GradientIcon.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "envelope.fill"
    var gradient: Array<Color> = [Color.purple, Color.pink, Color.orange.opacity(1)]
    
    var body: some View {
        ZStack {
            Image(systemName: icon)
                .frame(width: 36, height: 36)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                .cornerRadius(12)
                .foregroundColor(.white)
        }
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}

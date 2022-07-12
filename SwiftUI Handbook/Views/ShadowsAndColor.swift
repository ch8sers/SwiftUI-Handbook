//
//  ShadowsAndColor.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct ShadowsAndColor: View {
    var body: some View {
        VStack {
            Text("Ch8sers Tech")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 10)
        }
        .frame(width: 300, height: 400)
        .background(Color.pink)
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
        .shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct ShadowsAndColor_Previews: PreviewProvider {
    static var previews: some View {
        ShadowsAndColor()
    }
}

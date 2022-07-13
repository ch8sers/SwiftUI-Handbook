//
//  BakcgroundBlur.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.

// Add VisualEffectBLur Swift file

import SwiftUI

struct BakcgroundBlur: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .padding()
            VisualEffectBlur(blurStyle: .systemThickMaterialDark)
                .ignoresSafeArea()
        }
    }
}

struct BakcgroundBlur_Previews: PreviewProvider {
    static var previews: some View {
        BakcgroundBlur()
            .previewInterfaceOrientation(.portrait)
    }
}

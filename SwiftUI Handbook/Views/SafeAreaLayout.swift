//
//  SafeAreaLayout.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct SafeAreaLayout: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Text("SwiftUI for iOS 15")
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
        }
    }
}

struct SafeAreaLayout_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaLayout()
    }
}

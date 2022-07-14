//
//  StatusBarSize.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct StatusBarSize: View {
    var body: some View {
        GeometryReader { geomotry in
            VStack {
                Text("\(geomotry.safeAreaInsets.top)")
                    .padding()
                Text("\(geomotry.safeAreaInsets.bottom)")
                    .padding()
            }
            
        }
    }
}

struct StatusBarSize_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarSize()
    }
}

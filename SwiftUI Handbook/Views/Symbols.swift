//
//  Symbols.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
                Image(systemName: "paperplane.circle.fill")
                    .renderingMode(.original)
                    .imageScale(.large)
                    .font(.system(size: 32, weight: .bold))
            }
        }

struct Symbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}

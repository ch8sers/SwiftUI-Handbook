//
//  Extensions2.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

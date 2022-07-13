//
//  DatePickerHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct DatePickerHB: View {
    @State var selectedDate = Date()
    
    var body: some View {
        DatePicker("Select A Date", selection: $selectedDate, in:Date()...)
            .datePickerStyle(GraphicalDatePickerStyle())
            .font(.title3)
            .padding()
        
        }
    }


struct DatePickerHB_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerHB()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

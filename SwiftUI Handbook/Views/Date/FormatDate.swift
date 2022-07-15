//
//  FormatDate.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct FormatDate: View {
    var stringDate = "2021-02-01T09:45:00.000+02:00"
    
    var body: some View {
        Text("\(formatStringDate(date: stringDate))")
            .padding()
    }
    
    func formatStringDate(date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let newDate = dateFormatter.date(from: date)
        return newDate!.formatDate()
    }
}

struct FormatDate_Previews: PreviewProvider {
    static var previews: some View {
        FormatDate()
    }
}

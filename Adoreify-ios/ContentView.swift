//
//  ContentView.swift
//  Adoreify-ios
//
//  Created by David Wetter on 14.11.2023.
//

import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            DatePicker("Datum auswählen", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            Text("Ausgewähltes Datum: \(selectedDate, formatter: dateFormatter)")
        }
    }
}

extension CalendarView {
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}


//
//  ViewToggle.swift
//  MyDiaryApp
//
//  Created by Groo on 4/15/24.
//

import SwiftUI

struct ViewToggle: View {
    @Binding var isCalendarView: Bool
    var body: some View {
        HStack {
            Button(action: {
                print("calendar view clicked")
                isCalendarView = true
            }, label: {
                Image(systemName: "calendar")
            })
            .padding(10)
            .background(isCalendarView ? .accent : .white)
            .foregroundColor(isCalendarView ? .white : .accent)
            .clipShape(Circle())
            .navigationBarBackButtonHidden(true)
            Button(action: {
                print("list view clicked")
                isCalendarView = false
            }, label: {
                Image(systemName: "list.bullet")
            })
            .padding(10)
            .background(isCalendarView ? .white : .accent)
            .foregroundColor(isCalendarView ? .accent : .white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .navigationBarBackButtonHidden(true)
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
        .shadow(color: .black.opacity(0.1), radius: 5)
    }
}

#Preview {
    ViewToggle(isCalendarView: .constant(true))
}

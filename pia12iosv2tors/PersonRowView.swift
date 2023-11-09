//
//  PersonRowView.swift
//  pia12iosv2tors
//
//  Created by Alice Wheeler on 2023-11-09.
//

import SwiftUI

struct PersonRowView: View {
    
    @State var person : Person
    
    var body: some View {
        HStack {
            Text("Name: ")
            Spacer()
            Text(person.firstname)
            Text(person.lastname)

        }
        .frame(height: 40.0)
        .background(Color.yellow)
    }
}

#Preview {
    PersonRowView(person: Person(firstname: "Test", lastname: "Testson"))
}

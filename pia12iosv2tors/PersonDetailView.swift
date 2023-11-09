//
//  PersonDetailView.swift
//  pia12iosv2tors
//
//  Created by Alice Wheeler on 2023-11-09.
//

import SwiftUI

struct PersonDetailView: View {
    
    @State var theperson : Person
    
    @State var pname = ""
    
    var body: some View {
        VStack {
            Text("Read more about " + theperson.firstname)
            Text(theperson.prettyname())
            
            TextField("", text: $pname)
            
            Button(action: {
                
            }, label: {
                Text("Save")
            })
            
            NavigationLink (destination: ContentView(), label: {
                Text("")
            })
        }
        .onAppear() {
            pname = theperson.firstname
            
        }
    }
}

#Preview {
    PersonDetailView(theperson: Person(firstname: "ABC", lastname: "XYZ"))
}

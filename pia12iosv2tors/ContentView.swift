//
//  ContentView.swift
//  pia12iosv2tors
//
//  Created by Alice Wheeler on 2023-11-09.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var people = [Person]()
    
    
    @State var addname = ""
    @State var addlastname = ""

    
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    
                    TextField("Add a name", text: $addname)
                    TextField("Add a last name", text: $addlastname)
                    
                    
                    Button(action: {
                        let tempperson = Person(firstname: addname, lastname: addlastname)
                        people.append(tempperson)
                    }, label: {
                        Text("Add")
                    })
                    
                }
                
                List {
                    
                    ForEach(people) { person in
                        
                        
                        NavigationLink(destination: PersonDetailView(theperson: person), label: {
                            PersonRowView(person: person)})

                    }
                    


                }
                .listStyle(.plain)
                
            }
            .padding()
            .navigationTitle("People")
        }
        .onAppear() {
            /*
            print("hi hi")
            var someone = Person(firstname: "Alice", lastname: "Wheeler")
            
            print(someone.firstname)
             */
            
            
        }
        
    }
        }


#Preview {
    ContentView()
}

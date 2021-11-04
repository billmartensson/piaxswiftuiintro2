//
//  FancylistView.swift
//  piaxswiftuiintro2
//
//  Created by Bill Martensson on 2021-11-04.
//

import SwiftUI

struct FancylistView: View {
    
    @State var names = ["Arne", "Bengt", "Caesar", "David", "Erik"]
    
    @State var nametextfield = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Namn", text: $nametextfield)
                    .padding(.leading, 50.0)
                Button(action: {
                    names.append(nametextfield)
                    nametextfield = ""
                }) {
                    Text("Lägg till")
                }
            }
            .padding(.horizontal)
            List {
                ForEach(names, id: \.self) { bananskal in
                    
                    Button(action: {
                        print("KLCIKAT KNAPP " + bananskal)
                    }) {
                        HStack {
                            Text(bananskal)
                            Spacer()
                            Text("Gillar Kakor")
                        }
                    }
                    
                    
                }
            }
        }
    }
}

struct FancylistView_Previews: PreviewProvider {
    static var previews: some View {
        FancylistView()
    }
}

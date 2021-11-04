//
//  ReadmoreView.swift
//  piaxswiftuiintro2
//
//  Created by Bill Martensson on 2021-11-04.
//

import SwiftUI

struct ReadmoreView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State var thename = "TEST"
    
    var body: some View {
        VStack {
            Text(thename)
            
            
            Button(action: {
                dismiss()
            }) {
                Text("Stäng")
            }
            
            
        }
    }
}

struct ReadmoreView_Previews: PreviewProvider {
    static var previews: some View {
        ReadmoreView(thename: "TESTVÄRDE")
    }
}

//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Ramill Ibragimov on 18.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var disclosure1 = false
    @State private var disclosure2 = true
    
    var body: some View {
        VStack {
            DisclosureGroup("More Info", isExpanded: $disclosure1) {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.blue)
                    .opacity(0.1)
                    .overlay(Text("More Info!"))
                    .frame(height: 200, alignment: .center)
            }
            DisclosureGroup("Accent Color", isExpanded: $disclosure2) {
                Text("Accent Color")
                    .font(.largeTitle)
                    .padding(.all, 10)
            }
            .accentColor(.blue)
            .padding(.all, 10)
            .background(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                            .fill(Color.blue).opacity(0.1))
        }.padding(.horizontal, 10)
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

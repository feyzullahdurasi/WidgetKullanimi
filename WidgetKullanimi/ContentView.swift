//
//  ContentView.swift
//  WidgetKullanimi
//
//  Created by Feyzullah Durası on 20.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var resimDurum = false
    @State private var resim = "uzgun"
    
    var body: some View {
        VStack(spacing: 100)
        {
            Image(resim).resizable().frame(width: 100, height: 100)
            
            Toggle("Mutlu Ol Switch'i ->", isOn: $resimDurum)
                .onChange(of: resimDurum, perform: { Value in
                    if Value == true {
                        resim = "mutlu"
                    }else{
                        resim = "uzgun"
                    }
                })
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .black))
        }
    }
}


#Preview {
    ContentView()
}

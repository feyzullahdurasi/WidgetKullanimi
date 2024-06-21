//
//  ContentView.swift
//  WidgetKullanimi
//
//  Created by Feyzullah Durası on 20.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var segmentDurum = 0
    @State private var resim = "uzgun"
    
    var body: some View {
        VStack(spacing: 100)
        {
            Picker("", selection: $segmentDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.segmented)
                .onChange(of: segmentDurum) { value in
                    print("Segmented \(value)")
                }
        }
    }
}


#Preview {
    ContentView()
}

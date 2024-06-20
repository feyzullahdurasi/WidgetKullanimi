//
//  ContentView.swift
//  WidgetKullanimi
//
//  Created by Feyzullah Durası on 20.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var alinanVeri = ""
    @State private var tf = ""
    var body: some View {
        VStack {
            Text("Gelen veri: \(alinanVeri)")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .background(.blue)
            
            
            TextField("Veri Giriniz", text: $tf)
                .textFieldStyle(MyStyle())
                .padding()
            Button("Veriyi Al"){
                alinanVeri = tf
            }.foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(8)
        }
    }
}

struct MyStyle : TextFieldStyle {
    
    func _body(configuartion:TextField<Self._Label>) -> some View {
        configuartion
            .padding()
            .background(.green)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
            .foregroundColor(.white)
        
    }

}

#Preview {
    ContentView()
}

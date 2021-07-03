//
//  Profile.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct Profile: View {
    @State public var name: String = ""
    @State public var showingError:Bool? = nil
    var body: some View {
        VStack{
            Text("Input ur chosen name:")
                .font(.bold(.title)())
            
            TextField("", text: $name)
                .padding()
                .border(Color.black)
                .cornerRadius(3.0)
                .foregroundColor(.blue)
                .frame(width: 300, height: 100, alignment: .center)
            
            Button(action: {
                if(name == ""){
                    showingError = true
                } else {
                    showingError = false
                }
                let UD = UserDefaults.standard
                UD.setValue(name, forKey: "Name")
            }, label: {
                Text("Submit")
                    .bold()
            })
        }
        if(showingError == true){
            Label(
                title: { Text("Name Cannot Be Empty") },
                icon: { Image(systemName: "exclamationmark.triangle.fill") })
                .foregroundColor(.red)
        } else {
            Text("Sucscess")
                .foregroundColor(.green)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

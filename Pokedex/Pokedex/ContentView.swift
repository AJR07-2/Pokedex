//
//  ContentView.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var addFrinedsShow = false
    @State var userName = { () -> String in
        let defaults = UserDefaults.standard
        let name = defaults.string(forKey: "Name")
        if(name == nil){
            return ""
        }
        return name!
    }
    @State var friends:[Friends] = { () -> [Friends] in
        let defaults = UserDefaults.standard
        let friends = defaults.array(forKey: "Friends") as [Friends]?
        if(friends == nil){
            return []
        }
        return friends!
    }()
    var body: some View {
        if(userName == ""){
            Profile()
        }
        VStack{
            HStack(alignment: .center, spacing: 200, content: {
                Button(action: {
                    addFrinedsShow = true
                }, label: {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                })
            })
            
            Text("Pokedex App- A friends tracker and syncer")
                .font(.bold(.title)())
                .padding()
                .multilineTextAlignment(.center)
            List{
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

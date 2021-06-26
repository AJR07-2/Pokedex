//
//  ContentView.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var addFrinedsShow = false
    @State var profileShow = false
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 200, content: {
                Button(action: {
                    addFrinedsShow = true
                }, label: {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                })
                
                Button(action: {
                    profileShow = true
                }, label: {
                    Image(systemName: "person.fill.badge.plus")
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

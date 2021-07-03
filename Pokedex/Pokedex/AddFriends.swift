//
//  AddFirends.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct AddFriends: View {
    var friends: [Friends]
    @State private var name: String = ""
    @State private var rating: String = ""
    @State private var iconName: String = ""
    @State private var organisation: String = ""
    @State private var warning = false
    var body: some View {
        VStack{
            Text("Add A Friend!")
                .font(.bold(.title)())
            VStack{
                HStack{
                    Text("Name:")
                        .font(.bold(.subheadline)())
                    TextField("", text: $name)
                }
                .border(Color.black)
                
                HStack{
                    Text("Rating:")
                        .font(.bold(.subheadline)())
                    TextField("", text: $rating)
                }
                .border(Color.black)
                
                HStack{
                    Text("Icon Name:")
                        .font(.bold(.subheadline)())
                    TextField("", text: $iconName)
                }
                .border(Color.black)
                
                HStack{
                    Text("Organisation:")
                        .font(.bold(.subheadline)())
                    TextField("", text: $organisation)
                }
                .border(Color.black)
                
            }
            Button(action: {
                let ratingInt = Int(rating)
                if(name != "" && rating != "" && iconName != "" && organisation != "" && ratingInt != nil){
                    warning = false
                    
                    var friendToPassIn = friends
                    friendToPassIn.append(Friends(id: UUID(), name: name, rating: ratingInt!, iconName: iconName, organisation: organisation))
                    let UD = UserDefaults.standard
                    UD.setValue(friends, forKey: "Friends")
                } else {
                    warning = true
                }
            }, label: {
                Text("Submit")
            })
            
            if(warning){
                Label(
                    title: { Text("Fields Cannot Be Empty And Rating Must Be An Integer!") },
                    icon: { Image(systemName: "exclamationmark.triangle.fill") })
                    .font(.bold(.title)())
                    .foregroundColor(.red)
            }
        }
    }
}

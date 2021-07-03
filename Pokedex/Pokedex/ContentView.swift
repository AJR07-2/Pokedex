//
//  ContentView.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var addFriendShow = false
    @State private var friends = generateFriends() as! [Friends]
    @State private var userName = generateUserName()
    var body: some View {
        
        VStack{
            
            //default app stuff
            VStack{
                HStack(alignment: .top, spacing: 100, content: {
                    Button(action: {
                        addFriendShow = true
                    }, label: {
                        Image(systemName: "person.crop.circle.badge.plus")
                            .resizable()
                            .frame(width: 60, height: 50, alignment: .center)
                            .padding()
                    })
                    .sheet(isPresented: $addFriendShow, onDismiss: {}, content: {
                        AddFriends(friends: friends)
                    })
                    Spacer(minLength: 50)
                })
                
                Text("Pokedex App- A friends tracker and syncer")
                    .font(.bold(.title)())
                    .padding()
                    .multilineTextAlignment(.center)
            }
            
            if(userName == ""){
                Profile()
                Button(action: {
                    userName = generateUserName()
                }, label: {
                    Text("Return")
                        .font(.bold(.title)())
                })
            } else {
                Text(userName)
                    .font(.bold(.title2)())
                    .padding()
                    .foregroundColor(.green)
                    .border(Color.black)
                    .cornerRadius(3.0)
                List{
                    ForEach(friends){ eachFriend in
                        HStack{
                            Image(systemName: eachFriend.iconName)
                            Text("\(eachFriend.rating)")
                            VStack{
                                Text(eachFriend.name)
                                Text(eachFriend.organisation)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func generateFriends() -> Any{
    let defaults = UserDefaults.standard
    let friends = defaults.array(forKey: "Friends")
    if(friends == nil){
        return []
    }
    return friends!
}


func generateUserName() -> String {
    let defaults = UserDefaults.standard
    let name = defaults.string(forKey: "Name")
    if(name == nil){
        return ""
    }
    return name!
}

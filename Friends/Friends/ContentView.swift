//
//  ContentView.swift
//  Friends
//
//  Created by YJ Soon on 3/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var friends = [Friend(name: "Enzo",
                          icon: "zzz",
                          school: "Unknown sk00l",
                          slothImage: "sloth3"),
                   Friend(name: "Daksh",
                          icon: "swift",
                          school: "SST",
                          slothImage: "sloth2"),
                   Friend(name: "Celeste",
                          icon: "wifi",
                          school: "DHS",
                          slothImage: "sloth1")]

    
    var body: some View {
        NavigationView {
            List(0..<friends.count) { index in
                NavigationLink(destination: FriendDetailView(friend: $friends[index])) {
                    Image(systemName: friends[index].icon)
                    VStack(alignment: .leading) {
                        Text(friends[index].name)
                            .font(.headline)
                        Text(friends[index].school)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                }
            }
            .navigationTitle("Friends")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

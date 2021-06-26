//
//  Profile.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import SwiftUI

struct Profile: View {
    @State public var name: String = ""
    var body: some View {
        VStack{
            Text("Input ur chosen name:")
            TextField("", text: $name)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

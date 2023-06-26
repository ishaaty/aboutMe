//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    @State private var facts = ["i have a younger sister", "i have a dog named porridge", "i never broke a bone in my body", "i've only been to the US and India", "i live in northern NJ", "i love paneer"]
    var body: some View {
        VStack {
            Text("hello, i'm isha tyagi")
            Image("sadCat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300)
            Text("this is my current mental state ^")
            Text("i am passionate about all things coding (especially web dev)")
                .frame(width:300)
            Image("web")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300.0)
            Button("click here for random fun fax abt me"){
                let randomNum = Int.random(in:0..<facts.count)
                fact = facts[randomNum]
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.teal)
            Text(fact)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

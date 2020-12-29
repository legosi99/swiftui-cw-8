//
//  ContentView.swift
//  Day4
//
//  Created by Yousif on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters = [0,0,0]
    var body: some View {
        VStack(alignment: .trailing) {
            thekerButton(counter: $counters[0], randomColor: .green, label: "استغر الله العظيم")
            thekerButton(counter: $counters[1], randomColor: .yellow, label: "سبحان الله وبحمده")
            thekerButton(counter: $counters[2], randomColor: .red, label: "الحمدلله")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct thekerButton: View {
    @Binding var counter: Int
    @State var randomColor: Color = .red
    let label: String
    var body: some View {
        HStack{
            Text(label)
                .font(.largeTitle)
            Button(action: {
                counter += 1
                randomColor = Color(red: .random(in: 0...1)
                                    , green:.random(in: 0...1)
                                    , blue: .random(in: 0...1))
            }, label: {
                Text("\(counter)")
                    .frame(width: 80, height: 80)
                    .accentColor(.white)
                    .background(randomColor)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
            })
        }
    }
}

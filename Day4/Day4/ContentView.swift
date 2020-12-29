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
            thekerButton(counter: $counters[0], label: "استغر الله العظيم")
            thekerButton(counter: $counters[1], label: "سبحان الله وبحمده")
            thekerButton(counter: $counters[2], label: "الحمدلله")
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
    let label: String
    var body: some View {
        HStack{
            Text(label)
                .font(.largeTitle)
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)")
                    .frame(width: 80, height: 80)
                    .accentColor(.white)
                    .background(Color.green)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
            })
        }
    }
}

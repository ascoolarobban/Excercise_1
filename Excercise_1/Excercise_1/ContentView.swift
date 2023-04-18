//
//  ContentView.swift
//  Excercise_1
//
//  Created by Robin Ellingsen on 2023-04-18.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        //Start with a vertical stack. So our views have a container to live in.
        VStack {
            //spacer is a view that expands to fill all the available space within its parent container. A spacer is often used to create flexible layouts where some views take up a fixed amount of space, and the remaining space is divided equally among the spacers.
            Spacer()
            //Text to Show number
            Text("\(number)")
                .font(.system(size: 100, weight: .bold, design: .monospaced))
            //Spacer below too will put number in center
            Spacer()
            //Button:
            Button(action: {
                //whenever pressed, it increments by +1
                number += 1
            }) {
                //Button text with styling
                Text("BUTTON")
                    .font(.system(size: 22, weight: .bold))
            }
            //Padding will make the button larger, since we are padding around the actual text inside the button, this way we make the button dynamic in size.
            .padding(.vertical, 22)
            .padding(.horizontal, 85)
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(16)
        }
    }
}
// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  ONE
//
//  Created by Fatma Sameeh Ahmed Albadry  on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    //yhe massage is varaible
    @State var counter = 0
    @State var message = ""
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack {
                
                Text(" \(counter) cookies eaten")
                    .font(.title)
                Button{
                    counter += 1 //counter= counter +1
                    if(counter >= 40){
                        message = "OHHH NOOOOOOOOOOOO ☠️"
                    }
                    else if (counter >= 30){
                        message = "WAHT ARE YOU DOING 😵‍💫"
                    }
                    else if(counter >= 20)
                    {
                        message = "DONT EAT TO MUCH COOKIES 🤡"
                        //WE SHOULD START FROM THE LOWER VALUE BCUZ BOTH 30 AND 40 ARE. ABOUVE 20 NSO THE CONDITION WONT CHANGE OR WE CAN COMBINE THE CONDITION WITH AND
                    }
                }label:{
                    Text("OM NOM NOM")
                    
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .white ,radius:5 , x:4.0, y:5.0)
                
                Text(message)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 //
//  ContentView.swift
//  e-Book Carousel
//
//  Created by badar on 13/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 struct Home : View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text("Book Store")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    
                    Image(systemName: "circle.grid.2x2.fill")
                        .font(.system(size: 22))
                }
            }
            .foregroundColor(.white)
            .padding()
            
            Spacer(minLength: 0)
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
    }
 }


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
    
    // 40 = padding horizontal
    // 60 = 2 card ke arah kanan...
    
    var width = UIScreen.main.bounds.width - (40 + 60)
    var height = UIScreen.main.bounds.height / 2
    @State var books = [
       // Pastikan id dalam urutan menaik...
       Book(id: 0, image: "p1", title: "Lovasket Series", author: "Luna Torashyngu", rating: 98, offset: 0),
       Book(id: 1, image: "p0", title: "Pergi", author: "Tere Liye", rating: 96, offset: 0),
       Book(id: 2, image: "p3", title: "Hujan", author: "Tere Liye", rating: 97, offset: 0),
       Book(id: 3, image: "p2", title: "Pulang", author: "Tere Liye", rating: 97, offset: 0),
       Book(id: 4, image: "p5", title: "Hyōka", author: "Honobu Yonezawa", rating: 96, offset: 0),
       Book(id: 5, image: "p4", title: "Koala Kumal", author: "Raditya Dika", rating: 93, offset: 0),
    ]
    
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
            
            ZStack {
                
                // karena zstack nya overlay satu sama lain jadi terbalik...
                ForEach(books.reversed()) { book in
                    
                    HStack {
                        
                        Image(book.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: width, height: getHeight(index: book.id))
                        
                        Spacer(minLength: 0)
                    }
                    // Content Shape For Drag Gesture
                    .contentShape(Rectangle())
                    .offset(x: book.id < 3 ? CGFloat(book.id) * 30 : 60)
                }
            }
            Spacer(minLength: 0)
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
    }
    
    // dynamic height Change..
    func getHeight(index : Int) -> CGFloat {
        
        // 2 card = 80
        // all other are 80 at background...
        return height - (index < 3 ? CGFloat(index) * 40 : 80)
    }
 }
 
// Carousel Model Book Data...

 struct Book : Identifiable {
    
        var id: Int
        var image : String
        var title : String
        var author : String
        var rating : Int
        var offset : CGFloat
 }

 


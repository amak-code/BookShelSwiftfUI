//
//  DetailView.swift
//  MyBookShelfSwiftUI
//
//  Created by antikiller on 07.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack{
            VStack(alignment: .center,  spacing: 15){
                Image(book.coverArt)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text(book.author)
                    .font(.headline)
                    .fontWeight(.light)
                HStack(alignment: .top, spacing: 40){
                    VStack{
                        Text("Release")
                        Text(book.releaseYear)
                            .foregroundColor(.secondary)
                    }
                    VStack{
                        Text("Pages")
                        Text("321")
                            .foregroundColor(.secondary)
                    }
                    VStack{
                        Text("Language")
                        Text("English")
                            .foregroundColor(.secondary)
                    }
                }
                ScrollView{
                VStack(alignment: .leading, spacing: 18){
                   
                        
                        Text("Description")
                            .font(.system(size: 20, weight: .bold, design: .serif))
                        Text(book.description)
                }
                }
               
            }.padding()
            
        }//main VStack
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .constant(Book(title: "Some Book Book-book Book-book Book", author: "Author", coverArt: "CleanCoder", releaseYear: "2016", description: "Book-book Book-book Book-book Book-book")))
    }
}

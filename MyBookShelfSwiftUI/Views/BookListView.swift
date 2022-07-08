//
//  ContentView.swift
//  BookshelfSwiftUI
//
//  Created by Cameron Stuart on 7/6/22.
//

import SwiftUI

struct BookListView: View {
    
    @ObservedObject var bookViewModel = BookViewModel()
    
    var body: some View {
        
        NavigationView {
            
            //opt + cmd + ]
            
            List {
                ForEach (bookViewModel.books){ book in
                    NavigationLink {
                        DetailView(book: .constant(book))
                    }
                label: {
              
                    HStack{
                        Image(book.coverArt)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        VStack(alignment: .leading, spacing:5){
                            
                            Text(book.title)
                                .font(.headline)
                            Text(book.author)
                                .font(.subheadline)
                            HStack{
                                
                               ProgressBar()
                                Text("50%")
                            }
                            HStack {
                                Image(systemName: "heart")
                                Text("likes")
                                    .font(.caption)
                                Image(systemName: "message")
                                Text("comments")
                                    .font(.caption)
                                
                            }
                        }//VStack
                        .padding()
                        
                    }//HStack
                    
                }
                    
                
                }//foreach
                .onDelete { indexSet in
                    bookViewModel.books.remove(atOffsets: indexSet)
                
            }//list
            .navigationTitle("Book Shelf")
            
        }//navigation
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}

///ZStack View that represents the users reading progress
struct ProgressBar: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule().frame(width: 100, height: 5)
                .opacity(0.3)
                .foregroundColor(.gray)
            Capsule().frame(width: 50, height: 5)
                .foregroundColor(.orange)
        }
    }
}


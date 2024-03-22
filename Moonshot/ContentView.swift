//
//  ContentView.swift
//  Moonshot
//
//  Created by Wes MacDonald on 3/22/24.
//

import SwiftUI

// Hierarchical data with Codable:
//struct User: Codable {
//    let name: String
//    let address: Address
//}
//
//struct Address: Codable {
//    let street: String
//    let city: String
//}

// Scrolling arbitrary data:
//struct CustomText: View {
//    let text: String
//    
//    var body: some View {
//        Text(text)
//    }
//    
//    init(text: String) {
//        print("Creating a new Custom Text")
//        self.text = text
//    }
//}

struct ContentView: View {
    // How to lay out views in a scrolling grid:
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    let layoutHorz = [
        GridItem(.adaptive(minimum: 20, maximum: 40))
    ]
    
    var body: some View {
        // How to lay out views in a scrolling grid:
        ScrollView(.vertical) {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
        ScrollView(.horizontal) {
            LazyHGrid(rows: layoutHorz) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
        
        // Hierarchical data with Codable:
//        Button("Decode JSON") {
//            let input = """
//            {
//                "name": "Taylor Swift",
//                "address": {
//                    "street": "555, Taylor Swift Avenue",
//                    "city": "Nashville"
//                }
//            }
//            """
//
//            let data = Data(input.utf8)
//            let decoder = JSONDecoder()
//            if let user = try? decoder.decode(User.self, from: data) {
//                print(user.address.street)
//            }
//        }
        
        // Add new views to the stack with NavigationLink:
//        NavigationStack {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Image(systemName: "face.smiling")
//                }
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            }
//                .navigationTitle("SwiftUI")
//        }
//        NavigationStack {
//            List(0..<100) { row in
//                NavigationLink("Row \(row)") {
//                    Text("Detail \(row)")
//                }
//            }
//            .navigationTitle("SwiftUI")
//        }
        
        
        // Scrolling arbitrary data:
//        ScrollView {
//            LazyVStack(spacing: 20) {       // only create custom Text structs when they're shown on screen, VStack loads them all at once
//                ForEach(0..<100) {
//                    CustomText(text: "Item \($0)")
//                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                }
//            }
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//        }
        
//        ScrollView(.horizontal) {
//            LazyHStack(spacing: 20) {
//                ForEach(0..<100) {
//                    CustomText(text: "Item \($0)")
//                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                }
//            }
//        }
        
        
//        // Resizing images:
//        Image(.example)
//            .resizable()
//            .scaledToFit()
//            .containerRelativeFrame(.horizontal) { size, axis in
//                size * 0.8
//            }   // container relative to its parent
////            .frame(width: 300, height: 300)     // for a fixed size
    }
}

#Preview {
    ContentView()
}

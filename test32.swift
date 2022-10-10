//
//  test32.swift
//  projet_Test
//
//  Created by apprenant70 on 20/09/2022.
//

import SwiftUI

/*
struct test32: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
*/

// code 02
struct test32: View {
    let array = ["Peter", "Paul", "Mary", "Anna-Lena", "George", "John", "Greg", "Thomas", "Robert", "Bernie", "Mike", "Benno", "Hugo", "Miles", "Michael", "Mikel", "Tim", "Tom", "Lottie", "Lorrie", "Barbara"]
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                // Search view
                SearchBarView(searchText: $searchText)
                
                List {
                    // Filtered list of names
                    ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
                        searchText in Text(searchText)
                    }
                }
                .navigationBarTitle(Text("Search"))
                .resignKeyboardOnDragGesture()
            }
        }
    }
}

// code 02
struct test32_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}


extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnDragGesture() -> some View {
        modifier(ResignKeyboardOnDragGesture())
    }
}


struct SearchBarView: View {
    
    @Binding var searchText: String
    @State private var showCancelButton: Bool = false
    var onCommit: () ->Void = {print("onCommit")}
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                // Search text field
                ZStack (alignment: .leading) {
                    if searchText.isEmpty { // Separate text for placeholder to give it the proper color
                        Text("Search")
                    }
                    TextField("", text: $searchText, onEditingChanged: { isEditing in
                        self.showCancelButton = true
                    }, onCommit: onCommit).foregroundColor(.primary)
                }
                // Clear button
                Button(action: {
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
            .foregroundColor(.secondary) // For magnifying glass and placeholder test
            .background(Color(.tertiarySystemFill))
            .cornerRadius(10.0)
            
            if showCancelButton  {
                // Cancel button
                Button("Cancel") {
                    UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                    self.searchText = ""
                    self.showCancelButton = false
                }
                .foregroundColor(Color(.systemBlue))
            }
        }
        .padding(.horizontal)
        .navigationBarHidden(showCancelButton)
    }
}


// code 01: ne fonctionne pas
/*
struct test32: View
{
    
    var planets =
        ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"] +
        ["Ceres", "Pluto", "Haumea", "Makemake", "Eris"]
    
    @ObservedObject var searchBar: SearchBar = SearchBar()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(
                    planets.filter {
                        searchBar.text.isEmpty ||
                        $0.localizedStandardContains(searchBar.text)
                    },
                    id: \.self
                ) { eachPlanet in
                    Text(eachPlanet)
                }
            }
                .navigationBarTitle("Planets")
                .add(self.searchBar)
        }
    }
}
*/

// code 01
/*
struct test32_Previews: PreviewProvider {
    static var previews: some View {
        test32()
    }
}
*/

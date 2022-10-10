//
//  test29.swift
//  projet_Test
//
//  Created by apprenant70 on 19/09/2022.
//

import SwiftUI

struct test29: View {
    var body: some View {
        
        /*
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
        */
        
        /*
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
         }
            .frame(maxWidth: .infinity)
          */
        
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Item \($0)")
                            .font(.title)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            
    }
}

struct test29_Previews: PreviewProvider {
    static var previews: some View {
        test29()
    }
}

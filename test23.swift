//
//  test23.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test23: View {
    
    @State
    private var couleur:Color = Color.blue
    
    var body: some View {
        
                ZStack {
                    couleur
                    HStack {
                        Button("Show details") {
                            couleur = Color.black
                        }
                        .padding(.vertical)
                        .background(Color.red)
                        
                        Button("Show details") {
                            couleur = Color.green
                        }
                        .padding(.vertical)
                        .background(Color.red)
                        
                        Button("Show details") {
                            couleur = Color.red
                        }
                        .padding(.vertical)
                        .background(Color.red)
                    }
                }
            }
}

struct test23_Previews: PreviewProvider {
    static var previews: some View {
        test23()
    }
}

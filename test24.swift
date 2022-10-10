//
//  test24.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test24: View {
    
    @State
    private var chemin = "person.circle"
    
    var body: some View {
        VStack {
            HStack {
                Button("BTN01") {
                    chemin = "person"
                }
                .background(Color.red)
                
                Spacer()
                
                Button("BTN02") {
                    chemin = "person.fill"
                }
                .background(Color.red)
            }
            
            Spacer()
            
            HStack {
                Image(systemName: chemin)
                    .font(.system(size: 60))
                    .foregroundColor(.orange)
            }
            
            Spacer()
            
            HStack {
                Button("BTN03") {
                    chemin = "person.circle"
                }
                .background(Color.red)
                
                Spacer()
                
                Button("BTN04") {
                    chemin = "person.2"
                }
                .background(Color.red)
            }
        }
    }
}

struct test24_Previews: PreviewProvider {
    static var previews: some View {
        test24()
    }
}

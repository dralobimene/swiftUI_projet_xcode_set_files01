//
//  test26A.swift
//  projet_Test
//
//  Created by apprenant70 on 19/09/2022.
//

import SwiftUI

struct test26A: View {
    // 01
    @Binding var selectedIcon: String
    
    var icon: String
    var color: Color
    
    var body: some View {
        
        Button(action: {
            // 03
            selectedIcon = icon
        }, label: {
            Image(systemName: icon)
        })
        .font(.title3)
        .foregroundColor(.white)
        .padding()
        .background(color)
        .cornerRadius(10)
    }
    
}

struct test26A_Previews: PreviewProvider {
    
    static var previews: some View {
    // 02
        // test26A(icon: "tet", color: .red, v01: .constant("te"))
        // test26A(icon: "tet", color: .red, valeur: "tst")
        test26A(selectedIcon: .constant("test"), icon: "test", color: .red)
    
    }
    
}


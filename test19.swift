//
//  test19.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test19: View {
    var body: some View {
        
        // ZStack 01
        ZStack {
            Rectangle()
                .fill(Color.red)
                .background(Circle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                // .padding()
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 250)
            
            Circle()
                .fill(.green)
                .frame(width: 70, height: 70)
            
            Text("Santana")
            
                //.frame(width: maxW, height: <#T##CGFloat?#>, alignment: <#T##Alignment#>)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        } // fin de ZStack 01
    }
}

struct test19_Previews: PreviewProvider {
    static var previews: some View {
        test19()
    }
}

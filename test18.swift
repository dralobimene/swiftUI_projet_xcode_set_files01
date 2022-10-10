//
//  test18.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test18: View {
    var body: some View {
        
        // HStack 01
        HStack {
            // HStack 02
            HStack {
                Text("Sweet")
                    // .foregroundColor(.white)
                    // .font(.largeTitle)
                    // .frame(width: 200, height: 200)
                    // .background(.red)
                    .padding(.vertical)
                
                
                
            } // fin de HStack 02
            
            // Spacer()
            
            // HStack 03
            HStack {
                Image(systemName: "heart")
                
            } // fin de HStack 03
            
        } // fin de HStack 01
        
        
        
    }
}

struct test18_Previews: PreviewProvider {
    static var previews: some View {
        test18()
    }
}

//
//  test20.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test20: View {
    var body: some View {
        
        // ZStack 01
        ZStack {
            
            Rectangle()
                .fill(Color.clear)
                .background(Rectangle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                // .padding()
                // .border(Color.black, width: 1)
            
            // VStack 01
            VStack(alignment: .leading) {
            
                // HStack 01
                HStack {
                    Image(systemName: "person.circle")
                        .font(.system(size: 60))
                        .foregroundColor(.orange)
                    
                    Rectangle()
                        .fill(Color.clear)
                        // .background(Rectangle().stroke())
                        .frame(width: 50, height: 10)
                        // .padding()
                        // .border(Color.black, width: 1)
                    
                    // VStack 02
                    VStack(alignment: .leading) {
                        Text("Danilo Santana")
                        Text("Brazil")
                            .foregroundColor(.gray)
                        Text("")
                        Text("Driver Racing")
                            .font(.system(size: 10).bold())
                    } // fin de VStack 02
                    
                    
                } // fin de HStack 01
                // .border(Color.black, width: 1)
                .padding()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray)
                    .frame(width: 350, height: 700)
                    // .border(Color.black, width: 1)
                    // .padding()
                
                Spacer()
            } // fin de VStack 01
            
            
        } // fin de ZStack
            
    } // fin de some View
} // fin de View

struct test20_Previews: PreviewProvider {
    static var previews: some View {
        test20()
    }
}

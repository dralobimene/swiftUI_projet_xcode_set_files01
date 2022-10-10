//
//  test26.swift
//  projet_Test
//
//  Created by apprenant70 on 17/09/2022.
//

import SwiftUI
import MapKit

struct test26: View {
    
    // 00
    @State var selectedIcon: String = "hare.fill"
    
    var body: some View {
    
    VStack {
        Spacer()
        // a l'enonce
        // Image(systemName: "hare.fill"
        // apres
        // 00A
        Image(systemName: selectedIcon)
            .font(.largeTitle)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 6))
        Spacer()
        HStack(spacing: 20) {
            
            test26A(selectedIcon: $selectedIcon, icon: "tortoise.fill", color: .red)
            test26A(selectedIcon: $selectedIcon, icon: "speaker.fill", color: .red)
            test26A(selectedIcon: $selectedIcon, icon: "hare.fill", color: .red)
            test26A(selectedIcon: $selectedIcon, icon: "speaker.3.fill", color: .red)
        }
        
        Spacer()
    }
    }
    }


struct test26_Previews: PreviewProvider {
    static var previews: some View {
        test26()
    }
}

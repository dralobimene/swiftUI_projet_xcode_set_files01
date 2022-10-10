//
//  test25.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test25: View {
    
    @State
    private var rouge: Double = 10
    @State
    private var vert: Double = 55
    @State
    private var bleu: Double = 127
   
    var body: some View {
        
        VStack {
            
            Spacer()
            
            HStack {
                Rectangle()
                    .fill(Color(red: (rouge / 255), green: (vert / 255), blue: (bleu / 255)))
                    .frame(width: 50, height: 50)
            }
            
        Spacer()
        
        HStack {
            VStack {
                Slider(value: $rouge, in: 0...255, step: 1)
                // Text("rouge: \(rouge, specifier: "%.1f")")
                // ou
                Text("rouge: \(Int(rouge))")
                }
            VStack {
                Slider(value: $vert, in: 0...255, step: 1)
                // Text("vert: \(vert, specifier: "%.1f")")
                // ou
                Text("vert: \(Int(vert))")
                }
            VStack {
                Slider(value: $bleu, in: 0...255, step: 1)
                // Text("bleu: \(bleu, specifier: "%.1f")")
                // ou
                Text("bleu: \(Int(bleu))")
                }
                
            }
        }
    }
}

struct test25_Previews: PreviewProvider {
    static var previews: some View {
        test25()
    }
}

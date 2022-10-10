//
//  test30.swift
//  projet_Test
//
//  Created by apprenant70 on 19/09/2022.
//

import SwiftUI

struct test30: View {
    
    //
    @State
    var speed: Double = 0.0
    
    //
    @State
    var rouge: Double = 10.0
    
    @State
    var vert: Double = 10.0
    
    @State
    var bleu: Double = 10.0
    
    @State
    var msgVitesse: String = "depart"
    
    @State
    var circleColor: Color = Color.blue
    
    var coul01: Color = Color.red
    var coul02: Color = Color.black
    
    var msgSpeed02: String {
        switch speed {
        case 0...100:
            return "normal"
        case 100...200:
            return "rapide"
        default:
            return "TROP VITE"
        }
        
    }
    
    var body: some View {
        VStack{
            Spacer()
            
            ZStack {
                
                Text("\(Int(speed))")
                VStack {
                    
                    if(speed >= 0 && speed < 100) {
                        Circle().strokeBorder(Color.blue,lineWidth: 4)
                            .frame(width: 300, height: 300)
                    } else if(speed > 100 && speed < 200) {
                        Circle().strokeBorder(Color.red,lineWidth: 4)
                            .frame(width: 300, height: 300)
                    }
                    else {
                        Circle().strokeBorder(Color.black,lineWidth: 4)
                            .frame(width: 300, height: 300)
                    }
                    
                }
                
            }
            
            Spacer()
            
            Text("Vitesse reglementaire")
            Slider(value: $speed, in: 0...255, step: 1)
            // Text(msgVitesse)
            Text(msgSpeed02)
            
        }
    }
}

struct test30_Previews: PreviewProvider {
    static var previews: some View {
        test30()
    }
}

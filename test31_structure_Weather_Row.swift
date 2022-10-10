//
//  test31_structure_Weather_Row.swift
//  projet_Test
//
//  Created by apprenant70 on 19/09/2022.
//

import SwiftUI

struct test31_structure_Weather_Row: View {
    
    // variables
    var data: test31_structure_Weather
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Label(data.etat, systemImage: data.image)
            
        }
        .padding()
        
    } // fin de some View
    
} // fin de View

struct test31_structure_Weather_Row_Previews: PreviewProvider {
    
    static var previews: some View {
        
        test31_structure_Weather_Row(data: test31_structure_Weather(etat: "sunny", image: "sun.max"))
        
    } // fin de someView
    
} // fin de PreviewProvider



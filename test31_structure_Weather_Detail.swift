//
//  test31_structure_Weather_Detail.swift
//  projet_Test
//
//  Created by apprenant70 on 20/09/2022.
//

import SwiftUI

struct test31_structure_Weather_Detail: View {
    var meteo: test31_structure_Weather
    
    var body: some View {
        VStack {
            
            Label(meteo.etat, systemImage: meteo.image)
            
        }
        .foregroundColor(.white)
        .padding()
        .background(Rectangle().fill(Color.blue))
        .navigationTitle("Weather Details")
    }
}

struct test31_structure_Weather_Detail_Previews: PreviewProvider {
    static var previews: some View {
        // test31_structure_Weather_Detail()
        // PersonDetail(person: Person(firstName: "Yannis", lastName: "Lang"))
        test31_structure_Weather_Detail(meteo: test31_structure_Weather(etat: "sunny", image: "cloud.hail"))
    }
}

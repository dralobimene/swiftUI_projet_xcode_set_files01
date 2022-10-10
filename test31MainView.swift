//
//  test31MainView.swift
//  projet_Test
//
//  Created by apprenant70 on 19/09/2022.
//

import SwiftUI

struct test31MainView: View {
    
    @State
    var showAddView = false
    
    var weathers = [
        test31_structure_Weather(etat: "sunny", image: "sun.max"),
        test31_structure_Weather(etat: "cloudy", image: "cloud.fill"),
        test31_structure_Weather(etat: "rainy", image: "cloud.heavyrain.fill")
    ]
    
    var body: some View {
        
        NavigationView {
        
                // structure qui impose un fichier additionnel (test31_structure_Weather_Row)
                List(weathers) { onmetcequonveut1 in
                    
                    NavigationLink {
                    
                        test31_structure_Weather_Detail(meteo: onmetcequonveut1)
                        
                    } label: {
                        test31_structure_Weather_Row(data: onmetcequonveut1)
                    }
                    
                }
                .sheet(isPresented: $showAddView, content: {
                    test31_structure_Weather_Add()
                })
                .navigationTitle("Weathers List")
                .navigationBarItems(trailing: Button("Show Modal", action: {
                    showAddView = true
                }))
                
            
            
        } // fin de NagigationView
        .navigationTitle("Titre de la NavigationView") // n'apparait pas???
        
    } // fin de some View
    
} // fin de View

struct test31MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        test31MainView()
        
    } // fin de some View
    
} // fin de PreviewProvider

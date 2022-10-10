//
//  test09.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

// entrés utilisateurs:
// 01] permettre 1 entrée utilisateur
// 02] formater l'entrée utilisateur qd celui valide son entree

// ds cet exemple: l'entrée utilisateur represente 1 montant en USD

struct test09: View {
    
    //--------------------------------
    
    // les variables
    
    // variable modifiable
    @State
    private var checkAmount = 0.0;
    
    // variable modifiable
    // represente la L qui sera affichée par defaut ds le picker. Ici la valeur affichée est celle contenue ds la ligne indice 3 du picker.
    // A mettre en rapport avec [M boucle01]
    @State
    private var numberOfPeople = 3;
    
    // variable modifiable
    @State
    private var tipPercentage = 20;
    
    // variable constante: 1 tableau
    let tab_tipPercentage = [0, 5, 10, 15, 20]
    
    //--------------------------------
    
    //
    var body: some View {
        
        //
        NavigationView {
            
            //
            Form {
            
                //
                Section {
                    
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)

                    Picker("Number of people", selection:
                        
                        $numberOfPeople) {
                        
                            // [M boucle01]
                            // ici le 2, represente la valeur de la ligne indice 0 de la boucle.
                            // la boucle construit des Lignes
                            // valeur de la L indice 0: 2
                            // valeur de la derniere L: 99
                            // la valeur par defaut est en fct° de la variable humberOfPeople (qui selectionnera la valeur de la L indice 3, soit la valeur 5)
                            ForEach(2 ..< 100) {
                                Text("\($0) people")
                            } // fin de ForEach
                    
                    } // fin de Picker
                
                } // fin de Section
                
                //
                .navigationTitle("titre de la barre de nav")
            
            } // fin de Form
            
        } // fin de NavigationView
        
    } // fin de some View
    
}

struct test09_Previews: PreviewProvider {
    static var previews: some View {
        test09()
    }
}

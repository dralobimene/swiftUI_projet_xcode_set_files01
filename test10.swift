//
//  test10.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

// entrée utilisateurs:
// 01] permettre 1 entrée utilisateur
// 02] formater l'entrée utilisateur qd celui valide son entree

// 03] slider: l'utilisateur clique sur la valeur qu'il choisit entre
// ttes les valeurs affichées

// ds cet exemple: l'entrée utilisateur represente 1 montant en USD


struct test10: View {
    
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
            
                //------------------------------------------------------------------------------
                
                /*
                 Section01: contenu
                 - 1 barre de titre
                 - 1 Section avec 2L
                 L01: l'utilisateur choisit le montant qu'il veut payer.
                 La sortie est formatée en Double, format monetaire: USD par defaut (selon les
                 prefs system)
                 L02: l'utilisateur clique et choisit ds le nvel ecran le nbre de personnes
                 qui l'accompagne (de 2 à 99)
                 */
                
                // Section01
                Section {
                    
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)

                    // Picker01
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
                    
                    } // fin de Picker01
                
                } // fin de Section01
                
                // titre de la barre de navigat°
                // a mettre apres la fin de Section01,
                // sinon ne s'affiche pas
                .navigationTitle("titre de la barre de nav")
                
                //------------------------------------------------------------------------------
                /*
                 Ajoute 1 Section
                 Contenu:
                 - le titre
                 - 1 L avec 1 "slider" qui permet a l'utilisateur, le ratio du
                 pourboire qu'il veut laisser. Les valeurs de ce slider st issues
                 du tableau tab_tipPercentage
                 */
                
                // Section02
                Section {
                    
                    // Picker02
                    Picker("Tip percentage", selection: $tipPercentage) {
                            ForEach(tab_tipPercentage, id: \.self) {
                                Text($0, format: .percent)
                            }
                        }.pickerStyle(.segmented)
                    
                } // fin de Section02
                
                // le titre de Section02
                header: {
                    Text("quel pourboire vlez-vs laisser?");
                }
            //------------------------------------------------------------------------------
                 
            } // fin de Form
            
        } // fin de NavigationView
        
    } // fin de some View
    
}

struct test10_Previews: PreviewProvider {
    static var previews: some View {
        test10()
    }
}

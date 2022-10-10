//
//  test12.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

// CALCULATEUR d'1 montant à payer en fct°
// - du montant
// - du nbre de personnes
// - du montant du pourboire

// entrée utilisateurs:
// 01] permettre 1 entrée utilisateur
// 02] formater l'entrée utilisateur qd celui valide son entree

// 03] slider: l'utilisateur clique sur la valeur qu'il choisit entre
// ttes les valeurs affichées

// ds cet exemple: l'entrée utilisateur represente 1 montant en USD

struct test12: View {
    
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
    
    //
    @FocusState
    private var amountIsFocused: Bool
    // les methodes
    
    // methode qui calcule le montant du par personne
    // en fct° du montant total et du nbre de personnes
    var totalPerPerson: Double {
        //--------------------------------
        
        // variables de la methode
        
        // il ne faut pas oublier que la 1° valeur de la boucle
        // (indice 0) est = à 2.
        // on ajoute dc 2 au nbre de personnes
        // il y a convers° vers un type Double car il y aura utilisation
        // de checkAmount qui est 1 Double.
        // cette methode retourne (par necessité dc) 1 Double
        let peopleCount = Double(numberOfPeople + 2);
        
        //
        let tipPercentage = Double(tipPercentage);
        
        //--------------------------------
        // le calcul
        
        let tipValue = checkAmount / 100 * tipPercentage
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        //--------------------------------
        // le retour de la methode
        return amountPerPerson;
    }
    
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
                    
                    TextField("Montant", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                } // fin de Section01
                
                
                // le header de la Section01
                header: {
                    Text("Veuillez taper le montant de la note")
                }
                
                // section02
                Section {
                    
                    // Picker01
                    Picker("Nbre de personnes qui vt payer la note", selection:
                        
                        $numberOfPeople) {
                        
                            // [M boucle01]
                            // ici le 2, represente la valeur de la ligne indice 0 de la boucle.
                            // la boucle construit des Lignes
                            // valeur de la L indice 0: 2
                            // valeur de la derniere L: 99
                            // la valeur par defaut est en fct° de la variable humberOfPeople (qui selectionnera la valeur de la L indice 3, soit la valeur 5)
                            ForEach(2 ..< 100) {
                                Text("\($0) personnes")
                            } // fin de ForEach
                    
                    } // fin de Picker01
                
                } // fin de Section02
                
                // header de la Section02
                header: {
                    Text("Veuillez choisir le nbre de personnes qui vt payer la note")
                }
                
                // titre de la barre de navigat° (de l'application)
                // a mettre apres la fin de Section01,
                // sinon ne s'affiche pas
                .navigationTitle("CALCULATEUR")
                
                // WARNING,
                // code qui fait 2 choses
                // 01 - fait disparaitre le clavier du tel (n'est verifiable qu'avec 1 tel)
                // 02 - fait apparaitre 2 boutons qd on clique sur le montant de la note
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        //Spacer()
                        
                        Button("Fait") {
                            amountIsFocused = false
                        }
                    }
                }
                
                //------------------------------------------------------------------------------
                /*
                 Ajoute 1 Section
                 Contenu:
                 - le titre
                 - 1 L avec 1 "slider" qui permet a l'utilisateur, le ratio du
                 pourboire qu'il veut laisser. Les valeurs de ce slider st issues
                 du tableau tab_tipPercentage
                 */
                
                // Section03
                Section {
                    
                    // Picker02
                    Picker("% pourboire", selection: $tipPercentage) {
                            ForEach(tab_tipPercentage, id: \.self) {
                                Text($0, format: .percent)
                            }
                        }.pickerStyle(.segmented)
                    
                } // fin de Section03
                
                // le header de Section03
                header: {
                    Text("Choisissez le % du pourboire que vs vlez laisser?");
                }
            //------------------------------------------------------------------------------
                
                // Section04
                // Calcule et affiche ce que doit chaque personne
                // en fct°:
                // - du montant
                // - du nbre de personnes
                // - du % pourboire que l'utilisateur choisit
                Section {
                    
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    
                } // fin de Section04
                
                // header de Section04
                header: {
                    Text("le montant par personne s'eleve a:")
                }
                 
                //------------------------------------------------------------------------------
                
            } // fin de Form
            
        } // fin de NavigationView
        
    } // fin de some View
    
}

struct test12_Previews: PreviewProvider {
    static var previews: some View {
        test12()
    }
}

//
//  test08.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test08: View {
    
    //--------------------------------
    // les variables
    
    // variable modifiable
    @State
    private var checkAmount = 0.0;
    
    // variable modifiable
    @State
    private var numBerOfPeople = 2;
    
    // variable modifiable
    @State
    private var tipPercentage = 20;
    
    // variable constante: 1 tableau
    let tab_tipPercentage = [0, 5, 10, 15, 20]
    
    //--------------------------------
    
    //
    var body: some View {
        
        //
        Form {
            
            //
            Section {
                
                // permet d'obtenir le format monetaire preformaté ds le TextField grace aux prefs systemes du tel de l'utilisateur. Si ces prefs ne st pas définis, alors prend le USD par defaut
                // formate aussi la sortie en double, apres avoir valider la frappe clavier (par la touche entrée). L'utilisateur peut dc utiliser le format qu'il souhaite, Swift formate a l'affichage
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .keyboardType(.decimalPad)
            }
        }
        
    }
    
}

struct test08_Previews: PreviewProvider {
    static var previews: some View {
        test08()
    }
}

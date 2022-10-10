//
//  test05.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

// 1 formulaire avec 2 TextFields
// MAJ ETR

import SwiftUI

struct test05: View {
    
    // declara° & initialisat° variable
    @State
    private var name01 = "";
    
    //
    @State
    private var name02 = "";
    
    // la vue
    var body: some View {
        
        //
        Form {
            
            // texte ds le textField en attente d'1 frappe clavier
            TextField("Entrez votre prénom:", text: $name01);
            
            // MAJ ETR du champs
            Text("Votre prénom est: \(name01)");
        }
        
    }
    
}

struct test05_Previews: PreviewProvider {
    static var previews: some View {
        test05()
    }
}

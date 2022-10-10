//
//  test14.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

/*
 manipulations TextFields
 */

struct test14: View {
    
    // AJOUT 01
    // commun a ts les codes
    @State
    var username: String = ""
    // FIN DE AJOUT 01
    
    var body: some View {
        
        /*
        // AJOUT 02: maniere A
        VStack(alignment: .leading) {
                    TextField("Enter username...", text: $username)
                        // modificateur qui permet d'ajouter 1 border
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        // modificateur qi permet changement couleur texte
                        .foregroundColor(Color.blue)
                    Text("Your username: \(username)")
                }.padding()
        // FIN DE AJOUT 02: maniere A
        */
        
        /*
        // AJOUT 02: maniere B
        VStack(alignment: .leading) {
                    TextField("Enter username...", text: $username, onEditingChanged: { (changed) in
                        print("Username onEditingChanged - \(changed)")
                    }) {
                        print("Username onCommit")
                    }
                        // modificateur qui permet d'ajouter 1 border
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        // modificateur qi permet changement couleur texte
                        .foregroundColor(Color.blue)
                    
                    Text("Your username: \(username)")
                }.padding()
        // FIN AJOUT 02: maniere B
        */
        
        /*
        // AJOUT 02: MANIERE C
        // AJOUTE 1 Label au-dessus du TextField
        VStack(alignment: .leading) {
            Text("Username")
                .font(.callout)
                .bold()
            TextField("Enter username...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
        // FIN AJOUT 02: MANIERE C
        */
        
        
        // Lbl et TextField cote a cote
        // AJOUT 02: MANIERE D
        HStack(alignment: .center) {
            Text("Username:")
                .font(.callout)
                .bold()
            TextField("Enter username...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
        // FIN AJOUT 02: MANIERE D
        
    } // fin de some View
    
}

struct test14_Previews: PreviewProvider {
    static var previews: some View {
        test14()
    }
}

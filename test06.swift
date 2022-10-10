//
//  test06.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test06: View {
    
    //
    var body: some View {
        
        // cree 2 forumaires avec des Label grace aux boucles
        // les 2 formulaires st indépendants l'1 de l'autre.
        // les 2 formulaires occupent tt l'ecran
        
        // SYNTAXE 01: classique
        // boucle qui cree 15 Lbl ds 1 formulaire notées de 0 à 14
        Form {
            ForEach(0..<15) {
                number in
                    Text("syntaxe classique: Row \(number)")
            }
        }
        
        // SYNTAXE 02: abrégée
        // a noter:
        // declarat° de la variable à la volée
        Form {
            ForEach(0 ..< 15) {
                Text("syntaxe abrégée: Row \($0)")
            }
        }
        
    }
    
}

struct test06_Previews: PreviewProvider {
    static var previews: some View {
        test06()
    }
}

//
//  test07.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test07: View {
    
    // les variables
    
    // 1 tableau de String
    // pas de @State, le tableau est 1 constante
    let tab_Students = ["Audrey", "Adel", "Stephane", "Laurent"];
    
    // 1 variable d'etat avec l'annotat° @State car elle peut changer
    @State
    private var valeurSelection = "Audrey";
    
    //
    var body: some View {
        
        //
        NavigationView {
            
            //
            Form {
                
                // p01: un Label pr aider l'utilisateur
                // p02: binding bidirectionnel: affiche 1 valeur par defaut, la premiere presente ds le tableau. Le binding bi permet la MAJ de la valeur choisie par l'utilisateur
                Picker("Selectionnez qui vs vlez", selection: $valeurSelection) {
                    
                    // boucle a travers le tableau qui cree 1 Label pr afficher chaque valeur du tableau.
                    // id -> self: cree 1 variable unique pr chaque valeur du tableau, cela permet la MAJ de la valeur choisie par l'utilisateur
                    ForEach(tab_Students, id: \.self) {
                        Text($0);
                    }
                }
                    
                
            }
        }
        
        
    }
    
}

struct test07_Previews: PreviewProvider {
    static var previews: some View {
        test07()
    }
}

//
//  test03.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test03: View {
    
    var body: some View {
        
        // on declare la barre de navigation au-dessus du formulaire
        NavigationView {
            
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            
            // texte present ds la barre de navigation. sans le titre, il est difficile de deviner la presence de la barre de navigation
            .navigationTitle("SwiftUI")
        }
        
    }
    
}

struct test03_Previews: PreviewProvider {
    static var previews: some View {
        test03()
    }
}

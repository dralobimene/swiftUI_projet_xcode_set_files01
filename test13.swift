//
//  test13.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test13: View {
    
    var body: some View {
        
        VStack {
            Text("Titre de la photo")
                .font(.largeTitle)
        
        // ouvrir ds xcode le "Assets" (afficher son acontenu qui est vide
        // il faut prendre la photot depuis le finder et la glisser ds la vue de "Assets"
        Image("portrait01")
            
            //------------------------------------------
            // CODE 01
            // afficher 1 image que l'on peut "scaler" à la taille de l'ecran ou pas, seon les modificateurs
            /*
            // 2 modificateurs
            // pr la mettre a la taille de l'ecran
            // .resizable()
            // .scaledToFit()
            
            // 3° modificateur
            // permet de positionner la photo ds 1 Frame dédiée et l'aligner en haut de la Frame dediée
                .frame(width: 250.0, height: 250.0,
                       alignment: .top)
             */
            //------------------------------------------
            // CODE 02
            // afficher 1 image et la "cropper" pr qu'elle devienne circulaire (ds cet ex, cela ne sert a rien, la photo est deja circulaire)
            
            // 2 modificateurs
            // pr la mettre a la taille de l'ecran
            .resizable()
            .aspectRatio(contentMode: .fill)
            
            // 3° modificateur
            // permet de positionner la photo ds 1 Frame dédiée et l'aligner en haut de la Frame dediée
                .frame(width: 250.0, height: 250.0,
                       alignment: .center)
                .clipShape(Circle())
            //------------------------------------------
            
            //
            Spacer()
            
        } // fin de VStack
        
    } // fin de some View
    
}

struct test13_Previews: PreviewProvider {
    static var previews: some View {
        test13()
    }
}

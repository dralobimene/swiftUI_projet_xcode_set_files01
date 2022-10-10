//
//  test15.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

// utiliser ScrollView pr les scroll
// horizontaux et/ou verticaux

struct test15: View {
    
    var body: some View {
        
        /*
        // code 01
        // scroll vertical de 10 carres rouge
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.red)
                }
            }
        }
        
        // taille de la Frame invisible qui contient le scroll
        // ca doit etre la taille de la ScrollView
        .frame(height: 150)
        // FIN du code 01
         */
        
        /*
        // code 02: le meme que precedemment ms en horizonntal
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.red)
                }
            }
        }
        .frame(width: 150)
        // fin du code 02
        */
        
        // code 03
        // combiner les 2 types de scroll.
        // n'a aucun effet, juste voir la syntaxe
        // trouver 1 ex fonctionnel
        ScrollView([.horizontal, .vertical], showsIndicators: true) {
            HStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.red)
                }
            }
        }
        // fin de code 03
        
    }
    
}

struct test15_Previews: PreviewProvider {
    static var previews: some View {
        test15()
    }
}

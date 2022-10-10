//
//  test16.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test16: View {
    
    //
    @State
    private var test: String = "texte affiché du TextField (celui-ci n'est pas grisé puisque defini par 1 variable"
    
    //
    @State
    private var tapCount = 0
    
    var body: some View {
        Text("du texte au-dessus du Label")
            .padding(.vertical)

        Label("texte du Label", systemImage: "42.circle")
        
        TextField("texte par defaut en grisé", text: $test)
        
    } // fin de var body
} // fin de View

struct test16_Previews: PreviewProvider {
    static var previews: some View {
        test16()
    }
}

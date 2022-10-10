//
//  test04.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

// 1 bouton qui s'incremente
// utilisat° d'1 variable d'etat

import SwiftUI

struct test04: View {
    
    // variable avec annotat° qui autorise
    // sa modification malgré le fait que
    // l'accesseur soit privé
    @State
    private var tapCount = 0;
    
    var body: some View {
        
        Button("tap-Count: \(tapCount)") {
            self.tapCount += 1;
        }
    }
    
}

struct test04_Previews: PreviewProvider {
    static var previews: some View {
        test04()
    }
}

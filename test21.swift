//
//  test21.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test21: View {
    
    // ---------------------------------------------------
    
    // variables
    var v01: test21VOYAGEURS = test21VOYAGEURS(PSEUDO: "laurent",
                                               AGE: 33,
                                               NATIONALITE: "francaise")
    
    // ---------------------------------------------------
    
    var body: some View {
        Text(v01.PSEUDO)
    }
}

struct test21_Previews: PreviewProvider {
    static var previews: some View {
        test21()
    }
}

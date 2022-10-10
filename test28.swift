//
//  test28.swift
//  projet_Test
//
//  Created by apprenant70 on 18/09/2022.
//

import SwiftUI

struct test28: View {
    
    var body: some View {
        
        //
        TabView {
            
            // code 01
            // presente 1 Tab avec 1 seul item
            /*
            Text("The content of the first view")
                .tabItem {
                Image(systemName: "phone.fill")
                Text("First Tab")
                } // fin de parametrage de tabItem
             */
            
            // code 02
            // presente 1 Tab avec 2 items
            Text("The content of the first view")
                 .tabItem {
                    Image(systemName: "phone.fill")
                    Text("First Tab")
                  }
               Text("The content of the second view")
                 .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Second Tab")
                  }
            
        } // fin de TabView
        
    } // fin de some View
    
} // fin de View

struct test28_Previews: PreviewProvider {
    static var previews: some View {
        test28()
    }
}

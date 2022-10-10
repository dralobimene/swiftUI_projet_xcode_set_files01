//
//  test01.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

// 2 formulaires avec des Group
import SwiftUI

struct test01: View {
    
    var body: some View {
        Form {
            Text("Hello Form");
            
            Group {
                Text("Hello Form, 1° groupe");
                Text("Hello Form");
                Text("Hello Form");
            }
            
            Group {
                Text("Hello form, 2nd group");
                Text("Hello form, 2nd group");
                Text("Hello form, 2nd group");
            }
        }
        
        Form {
            Group {
                Text ("Hello Form, 3° group, 2° formulaire");
            }
        }
    }
    
}

struct test01_Previews: PreviewProvider {
    static var previews: some View {
        test01()
    }
}

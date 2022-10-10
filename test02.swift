//
//  test02.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

// 4 formulaires avec des Group et des Section
import SwiftUI

struct test02: View {
    
    var body: some View {
        
        // ecran01
        Form {
            Group {
                Text("projet03, form01, group01, text01");
            }
            Group {
                Text("projet03, form 01, group02, text01");
            }
        }
        
        // ecran 02
        Form {
            Section {
                Text("projet03, form02, section01");
            }
            
            Section {
                Text("projet03, form02, section02");
            }
        }
        
        // ecran 03
        Form {
            Group {
                Section {
                    Text("projet03, group01, section01, text01");
                }
                Section {
                    Text("projet03, group01, section02, text01");
                }
            }
        }
        
        // ecran 04
        Form {
            Section {
                Group {
                    Text("projet03, form04,     group01, section01");
                }
                Group {
                    Text("projet03, form04,     group02, section01");
                }
            }
            
            Section {
                Group {
                    Text("projet03, form04, group02, section02");
                }
            }
        }
        
    }
    
}

struct test02_Previews: PreviewProvider {
    static var previews: some View {
        test02()
    }
}

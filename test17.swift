//
//  test17.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI

struct test17: View {
    
    //-----------------------------------------------------
    // les variables

    // la date
    var now = Date()
    
    //
    @State
    private var isPushEnable: Bool = false
    
    // pr faire 1 action bouton, etape 01
    @State
    private var showDetails = false
    
    @State
    private var vTest = 0
    
    //-----------------------------------------------------
    
    //-----------------------------------------------------
    // les methodes
    
    // retourne la date courante
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    //-----------------------------------------------------
    
    //
    var body: some View {
        
        // form 01
        Form {
            
            // Section 01
            Section {
                Toggle(isOn: $isPushEnable) {
                    Text("Push Notification")
                }
                
                if isPushEnable {
                    Text("Schedule Notification")
                }
            } // fin de Section 01
            
            // Section 02
            Section {
                
                // utilise la variable now en 1° parametre
                // en second parametre: la methode static
                Text("What time is it?:\n \(now, formatter: Self.dateFormatter)")
                
            } // fin de Section 02
            
            // Section03
            Section {
                // HStack de la Section. Présente les elts en horizontal
                HStack(alignment: .top) {
                    Label("texte du lbl", systemImage: "")
                    Label("texte du lbl", systemImage: "")
                }
                // VStack de la Section. Presente les elts en vertical
                VStack(alignment: .center) {
                    Label("texte du lbl", systemImage: "")
                    Label("texte du lbl", systemImage: "")
                }
                
                // 1 btn directement ds la Section
                Button(action: {
                    showDetails.toggle()
                }, label: {
                    Image(systemName: "clock")
                    Text("Click Me")
                    Text("Subtitle")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
            } // fin de Section 03
            
            // Section 04
            // pr faire 1 action bouton, etape 02
            Section {
                VStack(alignment: .leading) {
                            Button("Show details") {
                                showDetails.toggle()
                            }
                            .padding(.vertical)
                            .background(Color.red)

                            if showDetails {
                                Text("txt qui s'affiche codé en dur")
                                    .font(.largeTitle)
                            }
                        }
            } // fin de Section 04
            
            // Section 05
            Section {
                
                Label: do {
                    Text(": \(vTest)")
                }
                
                Button(action: {
                            vTest += 1
                        }) {
                            Image(systemName: "trash")
                                Text("cliquez pr incrementer la variable")
                                .font(.system(size: 100))
                                .foregroundColor(.red)
                        }
            } // fin de Section 05
            
        } // fin de form 01
        
    } // fin de some View
    
}

struct test17_Previews: PreviewProvider {
    static var previews: some View {
        test17()
    }
}

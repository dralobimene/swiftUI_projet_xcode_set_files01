//
//  test22.swift
//  projet_Test
//
//  Created by apprenant70 on 16/09/2022.
//

import SwiftUI
import MapKit

struct test22: View {
    
    // NOTES:
    // span désigné pour definir le niveau de zoom
    
    // pr les codes 01 et 02
    @State
    private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                                span: MKCoordinateSpan(latitudeDelta: 0.5,          longitudeDelta: 0.5))
    
    // pr les codes 03, 04
    @State private var region01: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    var body: some View {
        
        // ----------------------------------------------------------
        //liens
        // https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-a-map-view
        // et
        //
        // CODE 01
        // affichage de base carte
        /*
        Map(coordinateRegion: $region)
                    .frame(width: 400, height: 300)
         */
        
        /*
        // CODE 02
        // affichage de carte sans slide
        // restreindre le controle de l'utilisateur
        // en optionnel, il ya possiblité de mettre le zoom ou pas
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))), interactionModes: [/*.zoom*/])
                        // parametre zoom: permet a l'utilisateur de zoomer
                        // avec ce code, on peut zoomer ms pas deplacer la map
            .frame(width: 400, height: 300)
        */
        
        /*
        // code 03
        Map(coordinateRegion: $region01)
         */
        
        /*
        // code 04
        // modificateur .all pr prendre tt l'ecran
        Map(coordinateRegion: $region01)
            .edgesIgnoringSafeArea(.all)
         */
        
        // code 05
        // pr afficher la localisation de l'utilisateur
        // ne fonctionne pas, il faut peut etre modifier
        // le fichier info.plist
        Map(coordinateRegion: $region01, interactionModes: [], showsUserLocation: true)
    }
}

struct test22_Previews: PreviewProvider {
    static var previews: some View {
        test22()
    }
}

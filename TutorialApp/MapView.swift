//
//  MapView.swift
//  TutorialApp
//
//  Created by 藤本幹也 on 2021/07/08.
//
//  観光地の１座標からマップ情報を取得しビューに取り込む
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.001286, longitude: -116.66868)
        let span       = MKCoordinateSpan(
            latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region     = MKCoordinateRegion(
            center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

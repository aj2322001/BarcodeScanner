//
//  BarcodeScannerApp.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 11/10/25.
//

import SwiftUI

@main
struct BarcodeScannerApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear

        // title colors
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        // apply globally
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white // for nav bar buttons
    }
    
    var body: some Scene {
        WindowGroup {
            BarCodeScannerView()
        }
    }
}

//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 11/10/25.
//

import SwiftUI

struct BarCodeScannerView: View {
    let backgroundColor = Color.black.opacity(0.4)
    let foregroundColor = Color.white.gradient
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Spacer()
                
                Rectangle()
                    .foregroundStyle(Color.appScreenBackgroundColor)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .ignoresSafeArea()
                
                Spacer()
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet scanned")
                    .font(.headline)
                    .foregroundStyle(.green)
            }
            .navigationTitle("Barcode Scanner") 
            .navigationBarTitleDisplayMode(.large)
            .background(Color.appScreenBackgroundColor)
            .foregroundStyle(Color.appScreenforegroundColor)
            .safeAreaPaddingIfAvailable()
        }
    }
}

#Preview {
    BarCodeScannerView()
}

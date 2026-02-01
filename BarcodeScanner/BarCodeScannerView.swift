//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 11/10/25.
//

import SwiftUI

struct BarCodeScannerView: View {
    
    @StateObject var viewModel: BarCodeScannerViewModel = BarCodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Spacer()
                
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .foregroundStyle(Color.appScreenBackgroundColor)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .ignoresSafeArea()
                
                Spacer()
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .font(.headline)
                    .foregroundStyle(viewModel.statusTextColor)
            }
            .navigationTitle("Barcode Scanner") 
            .navigationBarTitleDisplayMode(.large)
            .background(Color.appScreenBackgroundColor)
            .foregroundStyle(Color.appScreenforegroundColor)
            .safeAreaPaddingIfAvailable()
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: .default(Text("ok")))
            }
        }
    }
}

#Preview {
    BarCodeScannerView()
}

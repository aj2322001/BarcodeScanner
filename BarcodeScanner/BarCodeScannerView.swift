//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 11/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: String
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with camera. We are uanble to capture the input.",
                                              dismissButton: "ok")
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type",
                                              message: "The value scanned is not valid. the app scans EAN-8 & EAN-13.",
                                              dismissButton: "ok")
}

struct BarCodeScannerView: View {
    let backgroundColor = Color.black.opacity(0.4)
    let foregroundColor = Color.white.gradient
    
    @State var scannedCode: String = ""
    @State var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Spacer()
                
                ScannerView(scannedCode: $scannedCode,
                            alertItem: $alertItem)
                    .foregroundStyle(Color.appScreenBackgroundColor)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .ignoresSafeArea()
                
                Spacer()
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "not yet scanned" : scannedCode)
                    .font(.headline)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
            }
            .navigationTitle("Barcode Scanner") 
            .navigationBarTitleDisplayMode(.large)
            .background(Color.appScreenBackgroundColor)
            .foregroundStyle(Color.appScreenforegroundColor)
            .safeAreaPaddingIfAvailable()
            .alert(item: $alertItem) { alertItem in
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

//
//  BarCodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 01/02/26.
//

import SwiftUI

final class BarCodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}

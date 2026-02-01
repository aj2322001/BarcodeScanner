//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 01/02/26.
//

import Foundation

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

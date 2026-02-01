//
//  CustomExtensions.swift
//  BarcodeScanner
//
//  Created by Archit  Joshi on 29/01/26.
//
import SwiftUI

extension View {
    @ViewBuilder
    func safeAreaPaddingIfAvailable() -> some View {
        if #available(iOS 17.0, *) {
            self.safeAreaPadding()
        } else {
            self
        }
    }
}

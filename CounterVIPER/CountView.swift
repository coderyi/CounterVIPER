//
//  CountView.swift
//  CounterVIPER
//
//  Created by coderyi on 2021/10/2.
//

import Foundation
protocol CountView: NSObject {
    func setCountText(text: String)
    func ssetDecrementEnabled(enabled: Bool)
}

//
//  CountInteractorIO.swift
//  CounterVIPER
//
//  Created by coderyi on 2021/10/2.
//

import Foundation

protocol CountInteractorInput: NSObject {
    func requestCount()
    func increment()
    func decrement()
}

protocol CountInteractorOutput: NSObject {
    func updateCount(count: Int)
}

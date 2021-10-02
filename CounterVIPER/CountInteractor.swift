//
//  CountInteractor.swift
//  CounterVIPER
//
//  Created by coderyi on 2021/10/2.
//

import Foundation
class CountInteractor: NSObject, CountInteractorInput {
    weak var output: CountInteractorOutput?
    var count: Int = 0
    func requestCount() {
        sendCount()
    }
    
    func increment() {
        count = count + 1
        sendCount()
    }
    
    func decrement() {
        if canDecrement() {
            count = count - 1
            sendCount()
        }
    }
    
    func canDecrement() -> Bool {
        return count > 0
    }
    
    func sendCount() {
        output?.updateCount(count: count)
    }
    
}

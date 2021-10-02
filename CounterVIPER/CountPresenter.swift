//
//  CountPresenter.swift
//  CounterVIPER
//
//  Created by coderyi on 2021/10/2.
//

import Foundation
class CountPresenter: NSObject, CountInteractorOutput {
    weak var view: CountView?
    var interactor: CountInteractorInput?
    var countFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter
    }

    func updateView() {
        interactor?.requestCount()
    }
    
    func increment() {
        interactor?.increment()
    }
    
    func decrement() {
        interactor?.decrement()
    }

    // CountInteractorOutput
    func updateCount(count: Int) {
        view?.setCountText(text: formattedCount(count: count))
        view?.ssetDecrementEnabled(enabled: canDecrementCount(count: count))
    }
    
    func formattedCount(count: Int) -> String {
        return countFormatter.string(from: NSNumber(value: count)) ?? ""
    }
    
    func canDecrementCount(count: Int) -> Bool {
        return count > 0
    }
}

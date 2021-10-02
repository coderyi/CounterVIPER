//
//  CountViewController.swift
//  CounterVIPER
//
//  Created by coderyi on 2021/10/2.
//

import UIKit

class CountViewController: UIViewController, CountView {
    
    var countLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
    var incrementButton = UIButton(type: .custom)
    var decrementButton = UIButton(type: .custom)
    var presenter: CountPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        view.addSubview(countLabel)
        countLabel.textColor = .black
        view.addSubview(incrementButton)
        incrementButton.frame = CGRect.init(x: 100, y: 150, width: 100, height: 40)
        incrementButton.addTarget(self, action: #selector(increment), for: .touchUpInside)
        incrementButton.setTitleColor(.black, for: .normal)
        incrementButton.setTitle("increment", for: .normal)

        view.addSubview(decrementButton)
        decrementButton.frame = CGRect.init(x: 100, y: 200, width: 100, height: 40)
        decrementButton.addTarget(self, action: #selector(decrement), for: .touchUpInside)
        decrementButton.setTitleColor(.black, for: .normal)
        decrementButton.setTitle("decrement", for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.updateView()
    }
    
    @objc func increment() {
        presenter?.increment()
    }
    
    @objc func decrement() {
        presenter?.decrement()
    }

    // CountView
    func setCountText(text: String) {
        countLabel.text = text
    }
    
    func ssetDecrementEnabled(enabled: Bool) {
        decrementButton.isEnabled = enabled
    }

}

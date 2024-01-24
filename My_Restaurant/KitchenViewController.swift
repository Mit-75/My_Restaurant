//
//  KitchenViewController.swift
//  My_Restaurant
//
//  Created by Dmitry Parhomenko on 23.01.2024.
//

import UIKit

final class KitchenViewController: UIViewController {
    
    weak var delegate: KitchenViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
    }
    
    @IBAction func getServerButton(_ sender: Any) {
        delegate?.compltteOrder()
        dismiss(animated: true)
    }
}

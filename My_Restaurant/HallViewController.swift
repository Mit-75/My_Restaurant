//
//  ViewController.swift
//  My_Restaurant
//
//  Created by Dmitry Parhomenko on 23.01.2024.
//

import UIKit

protocol KitchenViewControllerDelegate: AnyObject {
    func compltteOrder()
}

final class HallViewController: UIViewController {
    
    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var smileLabel: UILabel!
    @IBOutlet var orderButton: UIButton!
    
    private let properties = Properties.getProperties()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        orderButton.setTitle(properties.makeOrder, for: .normal)
        helloLabel.text = properties.hello
        smileLabel.text = String(properties.smile.rawValue)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        orderButton.titleLabel?.text == properties.makeOrder
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let kitchenVC = segue.destination as? KitchenViewController else {
            return
        }
        kitchenVC.delegate = self
    }
    
    @IBAction private func getOrderBatton(_ sender: UIButton) {
        guard orderButton.titleLabel?.text == properties.payment else {
            performSegue(withIdentifier: "goKitchen", sender: nil)
            return
        }
        orderButton.setTitle(properties.makeOrder, for: .normal)
        helloLabel.text = properties.hello
    }
}

// MARK: - KitchenViewControllerDelegate
extension HallViewController: KitchenViewControllerDelegate {
    func compltteOrder() {
        helloLabel.text = properties.thankYou
        smileLabel.text = String(properties.smile.rawValue)
        orderButton.setTitle(properties.payment, for: .normal)
    }
}

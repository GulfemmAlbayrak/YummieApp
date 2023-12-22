//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 21.12.2023.
//

import UIKit
import ProgressHUD

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }
    
    @IBAction func orderButtonClicked(_ sender: Any) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces),
              !name.isEmpty else {
            ProgressHUD.error("Please Enter your order name")
            return
        }
        ProgressHUD.animate("Placing Order...")
        NetworkService.shared.placeOrder(dishID: dish.id ?? "", name: name) { (result) in
            switch result {
            case .success(_):
                ProgressHUD.success("Your order has been received. 🧑‍🍳")
            case .failure(let error):
                ProgressHUD.error(error.localizedDescription)
            }
        }
    }
    
}

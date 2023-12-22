//
//  ListOrdersViewController.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 22.12.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var orders: [Order] = [
         .init(id: "id1", name: "Gülfem jkdhf", dish: .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id2", name: "Batuhan jkdhf", dish: .init(id: "id1", name: "dyrutr", description: "This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id3", name: "Arife jkdhf", dish: .init(id: "id1", name: "Gartrutruri", description: "This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id4", name: "Berfin jkdhf", dish: .init(id: "id1", name: "Garwerwtwri", description: "This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
    }
    
  private func registerCells() {
      tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}

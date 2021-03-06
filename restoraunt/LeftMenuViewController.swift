//
//  LeftMenuViewController.swift
//  restoraunt
//
//  Created by Tim Grinev on 28.02.2021.
//

import UIKit

class LeftMenuViewController: UIViewController{
    
    
    var tableView = UITableView.init(frame: CGRect.zero, style: .grouped)
    
    var items = ["Бронь стола", "Акции и предложения", "Оставить отзыв", "Как нас найти"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateLayout(with: self.view.frame.size)
        setupTableView()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: { (context) in
            self.updateLayout(with: size)
        }, completion: nil)
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//extension CategoryMenuViewController {}
//
private extension LeftMenuViewController {
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    func setupTableView() {
        self.view.addSubview(tableView)
        self.tableView.register(LeftMenuTableViewCell.self, forCellReuseIdentifier: LeftMenuTableViewCell.reusedId)
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
}

extension LeftMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LeftMenuTableViewCell.reusedId, for: indexPath) as! LeftMenuTableViewCell
        cell.textLabel?.text = items[indexPath.row]
        cell.titleLeftMenuLabel.font = .systemFont(ofSize: 20)
        cell.backgroundColor = .yellow
        cell.titleLeftMenuLabel.textColor = .systemRed
        cell.titleLeftMenuLabel.textAlignment = .left
        cell.titleLeftMenuLabel.text = items[indexPath.row]
        print(cell.titleLeftMenuLabel.text!)
        return cell
    }
}


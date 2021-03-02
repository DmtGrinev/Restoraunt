//
//  CategoryMenuViewController.swift
//  restoraunt
//
//  Created by Tim Grinev on 01.03.2021.
//

import UIKit

class CategoryMenuViewController: UIViewController {
    
    var tableView = UITableView.init(frame: CGRect.zero, style: .grouped)
    
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
private extension CategoryMenuViewController {
    private func updateLayout(with size: CGSize) {
          self.tableView.frame = CGRect.init(origin: .zero, size: size)
      }
    func setupTableView() {
        self.view.addSubview(tableView)
        self.tableView.register(CategoryMenuTableViewCell.self, forCellReuseIdentifier: CategoryMenuTableViewCell.reusedId)
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
  
}

extension CategoryMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryMenuTableViewCell.reusedId, for: indexPath) as! CategoryMenuTableViewCell
        return cell
    }
}

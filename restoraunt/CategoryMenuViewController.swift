//
//  CategoryMenuViewController.swift
//  restoraunt
//
//  Created by Tim Grinev on 01.03.2021.
//

import UIKit

class CategoryMenuViewController: UIViewController {
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
//private extension CategoryMenuViewController {
//    func setupTableView() {
//        self.tableView = UITableView(
//    }
//}

extension CategoryMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryMenuTableViewCell.reusedId, for: indexPath) as! CategoryMenuTableViewCell
        return cell
    }
}

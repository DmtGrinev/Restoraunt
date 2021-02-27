//
//  CategoryModel.swift
//  restoraunt
//
//  Created by Tim Grinev on 27.02.2021.
//

import Foundation
import UIKit

struct CategoryModel {
    
    var categoryImage: UIImage?
    var categoryTitle: String?
    
    func fetchCategory() -> [CategoryModel] {
        
        let item1 = CategoryModel(categoryImage: UIImage(named: "Бочка"), categoryTitle: "very teasty")
        let item2 = CategoryModel(categoryImage: UIImage(named: "Бочка1"), categoryTitle: "very teasty")
        let item3 = CategoryModel(categoryImage: UIImage(named: "Бочка2"), categoryTitle: "very teasty")
        
        return [item1, item2, item3]
    }
}

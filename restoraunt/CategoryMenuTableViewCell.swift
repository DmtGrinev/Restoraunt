//
//  CategoryMenuTableViewCell.swift
//  restoraunt
//
//  Created by Tim Grinev on 01.03.2021.
//

import UIKit

class CategoryMenuTableViewCell: UITableViewCell {
    
    static var reusedId = "CategoryMenuCell"

    var dishImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var titleDishLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var descriptionDishLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var priceDishLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var weightDishLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupDishImageView()
        setupTitleDishLabel()
        setupDescriptionDishLabel()
        setupPriceDishLabel()
        setupPriceDishLabel()
        setupWeightDishLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupDishImageView() {
        addSubview(dishImageView)
        dishImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        dishImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        dishImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        dishImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
    }
    
    func setupTitleDishLabel() {
        addSubview(titleDishLabel)
        titleDishLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleDishLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
      //  titleDishLabel.topAnchor.constraint(equalTo: self.categoryImageView.bottomAnchor).isActive = true
        titleDishLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func setupDescriptionDishLabel() {
        addSubview(descriptionDishLabel)
        descriptionDishLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        descriptionDishLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    //    descriptionDishLabel.topAnchor.constraint(equalTo: self.categoryImageView.bottomAnchor).isActive = true
        descriptionDishLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func setupPriceDishLabel() {
        addSubview(priceDishLabel)
        priceDishLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        priceDishLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
  //      priceDishLabel.topAnchor.constraint(equalTo: self.categoryImageView.bottomAnchor).isActive = true
        priceDishLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func setupWeightDishLabel() {
        addSubview(weightDishLabel)
        weightDishLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        weightDishLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    //    weightDishLabel.topAnchor.constraint(equalTo: self.categoryImageView.bottomAnchor).isActive = true
        weightDishLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}

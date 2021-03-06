//
//  LeftMenuTableViewCell.swift
//  restoraunt
//
//  Created by Tim Grinev on 06.03.2021.
//

import UIKit

class LeftMenuTableViewCell: UITableViewCell {
    
    static var reusedId = "LeftMenuCell"
    
    var titleLeftMenuLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLeftMenuLabel.text = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupTitleLeftMenuLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupTitleLeftMenuLabel() {
        addSubview(titleLeftMenuLabel)
        titleLeftMenuLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleLeftMenuLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLeftMenuLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLeftMenuLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}

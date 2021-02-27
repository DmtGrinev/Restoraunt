//
//  CategoryCollectionViewCell.swift
//  restoraunt
//
//  Created by Tim Grinev on 27.02.2021.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static var reusedId = "CategoryCell"
    
    var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override var isSelected: Bool {
        didSet {
            // добавить переход 
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       setupPhotoImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhotoImageView() {
        addSubview(photoImageView)
        photoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
    }
    
}

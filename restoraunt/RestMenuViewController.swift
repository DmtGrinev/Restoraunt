//
//  ViewController.swift
//  restoraunt
//
//  Created by Tim Grinev on 27.02.2021.
//

import UIKit

class RestMenuViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    private lazy var leftBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(barButtonItemTapped))
    }()
    
    private let itemsPerRow: CGFloat = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupNavigationBar()
    }
    
    @objc private func barButtonItemTapped() {
        print(#function)
    }
}

extension RestMenuViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // print(photosObject.count)
        return 15 //photosObject.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.reusedId, for: indexPath) as! CategoryCollectionViewCell
        cell.backgroundColor = .systemYellow
        
        // TODO: add text from photos description & photo ([indexPath.item])
        cell.photoImageView.image = UIImage(named: "image")
        // cell.photoLabel.text =
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
}

extension RestMenuViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let ratio: CGFloat = 1.1
        let spaces = collectionView.contentInset.left * (itemsPerRow + 1)
        let width = (collectionView.frame.width - spaces) / itemsPerRow
        let height = width * ratio
        return CGSize(width: width, height: height)
    }
}

private extension RestMenuViewController {
    func setupCollectionView() {
        self.collectionView =  UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        self.view.addSubview(collectionView)
        self.collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.collectionView.backgroundColor = .systemGray2
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.reusedId)
        self.collectionView.contentInset = UIEdgeInsets(top: 35, left: 16, bottom: 25, right: 16)
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = .zero
    }
}

private extension RestMenuViewController {
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = leftBarButtonItem
        leftBarButtonItem.tintColor = .black
    }
}

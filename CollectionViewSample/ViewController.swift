//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by t.koike on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectonView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        self.collectonView.delegate = self
        self.collectonView.dataSource = self
        configureCollectionView()
        
    }
    
// MARK: - Helpers
    
    func configureCollectionView(){
        
        let flowLayout = UICollectionViewFlowLayout()
        let screenWidth: CGFloat = UIScreen.main.bounds.width
        let cellcolumn: CGFloat = 3
        let margin: CGFloat = 20
        
        let cellWidth = (screenWidth - (cellcolumn - 1) * margin) / cellcolumn
        let cellHight = cellWidth
        
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHight)
        self.collectonView.collectionViewLayout = flowLayout
        
    }


}

// MARK: - UICollectonViewDataSource

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectonView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
}

// MARK: - UICollectonViewDelegate

extension ViewController: UICollectionViewDelegate{
    
    
    
}


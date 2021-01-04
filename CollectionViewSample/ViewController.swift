//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by t.koike on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectonView: UICollectionView!
    
    let models = CustumCellModel.createModels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        self.collectonView.delegate = self
        self.collectonView.dataSource = self
        
        collectonView.register(UINib(nibName: "CustumCell", bundle: nil), forCellWithReuseIdentifier: "Cell" )
        
        configureCollectionView()
        
        
    }
    
// MARK: - Helpers
    
    func configureCollectionView(){
        
        let flowLayout = UICollectionViewFlowLayout()
//        let screenWidth: CGFloat = UIScreen.main.bounds.width
//        let cellcolumn: CGFloat = 3
//        let margin: CGFloat = 20
//
//        let cellWidth = (screenWidth - (cellcolumn - 1) * margin) / cellcolumn
//        let cellHight = cellWidth
//
//        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHight)
        flowLayout.itemSize = CGSize(width: collectonView.frame.width, height: 100)
        collectonView.collectionViewLayout = flowLayout
        
    }


}

// MARK: - UICollectonViewDataSource

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectonView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        if let cell = cell as? CustumCell{
            cell.setupCell(model: models[indexPath.row])
        }
        
        return cell
    }
    
}

// MARK: - UICollectonViewDelegate

extension ViewController: UICollectionViewDelegate{
    
    
    
}


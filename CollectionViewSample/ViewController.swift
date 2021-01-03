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

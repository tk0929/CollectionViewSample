//
//  CustumCell.swift
//  CollectionViewSample
//
//  Created by t.koike on 2021/01/04.
//

import UIKit

class CustumCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
 
    func  setupCell(model: CustumCellModel) {
        
        titleLabel.text = model.title
        
        if let text = model.subTitle{
            
            subTitleLabel.text = text
            
        }
         
        self.backgroundColor = .lightGray
        
    }
//    セルの初期化
    override func prepareForReuse() {
        super.prepareForReuse()

        titleLabel.text = ""
        subTitleLabel.text = ""
    }
    
    

}

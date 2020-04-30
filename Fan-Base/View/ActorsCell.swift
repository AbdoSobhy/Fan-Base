//
//  ActorsCell.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class ActorsCell: UICollectionViewCell {
    @IBOutlet weak var actroName: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    
    func updateView(actros : Movies.Actor){
        actroName.text = actros.name
        actorImage.image = UIImage(named: actros.imageName)
        
    }
    
}

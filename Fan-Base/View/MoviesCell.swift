//
//  MoviesCell.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

protocol CellNavigation {
    func navigate(actors : Movies.Actor,section:Int, indexpath:Int)
}

class MoviesCell: UITableViewCell {
  var sectionNumber = 0
    var cellNumber = 0
    var delegate:CellNavigation!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
extension MoviesCell : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataService.instance.getMovies()[section].actors.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActrosCell", for: indexPath) as! ActorsCell
        let Movies = DataService.instance.getMovies()[sectionNumber]
        
        let actrosData = Movies.actors[indexPath.row]
        cell.updateView(actros: actrosData)
        return cell
    }
}
extension MoviesCell : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let descriptionVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DescriptionVC") as! DescriptionVC
        
        
        let actrosData = DataService.instance.getMovies()[sectionNumber].actors[indexPath.row]
        descriptionVC.actorDescription = actrosData.description
        descriptionVC.actorImageName = actrosData.imageName
        
        delegate.navigate(actors: actrosData, section: sectionNumber, indexpath:indexPath.row)

    }
    
}

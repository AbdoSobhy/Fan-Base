//
//  ViewController.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController {
    var section : Int =  0
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension MoviesVC : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataService.instance.getMovies().count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DataService.instance.getMovies()[section].title
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.section = section
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MoviesCell
        cell.delegate = self
        cell.sectionNumber = indexPath.section
        return cell
    }
    

}
extension MoviesVC : CellNavigation{
    func navigate(actors : Movies.Actor,section:Int, indexpath:Int) {
        
                let descriptionVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DescriptionVC") as! DescriptionVC
        
            self.navigationController?.pushViewController(descriptionVC, animated: true)
        
        let actrosData = DataService.instance.getMovies()[section].actors[indexpath]
        descriptionVC.actorDescription = actrosData.description
        descriptionVC.actorImageName = actrosData.imageName
    }
    
    
}
extension MoviesVC : UITableViewDelegate {
    
}

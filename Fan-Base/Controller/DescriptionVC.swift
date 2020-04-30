//
//  DescriptionVC.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/29/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController {
    @IBOutlet weak var descriptionImage: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    var actorDescription = ""
    var actorImageName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print(actorDescription)
        descriptionImage.image = UIImage(named: actorImageName)
        descriptionText.text = actorDescription
        
    }

    

}

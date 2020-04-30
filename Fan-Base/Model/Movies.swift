//
//  File.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import Foundation
struct Movies {
    private(set) public var title : String
    private(set) public var actors : [Actor]
    
    struct Actor {
        private(set) public var imageName : String
        private(set) public var name : String
        private(set) public var description : String
    }
    
    init(title : String, actors : [Actor]) {
        self.title = title
        self.actors = actors
    }
}


//
//  DataService.swift
//  Fan-Base
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import Foundation

class DataService {
    static var instance = DataService()
    private let movies = [Movies.init(title: "Avengers",
                                      actors: [Movies.Actor.init(imageName: "Chris Evans.png", name: "Chris Evans", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Chris Hemsworth.png", name: "Chris Hemsworth", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Mark Ruffalo.png", name: "Mark Ruffalo", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Robert Downey, Jr..png", name: "Robert Downey, Jr.", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Scarlett Johansson.png", name: "Scarlett Johansson", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.")]),
                          Movies.init(title: "Green Mile",
                                      actors: [Movies.Actor.init(imageName: " David Morse.png", name: " David Morse", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "James Cromwell.png", name: "James Cromwell", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Michael Clarke Duncan.png", name: "Michael Clarke Duncan", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Sam Rockwell.png", name: "Sam Rockwell", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Tom Hanks.png", name: "Tom Hanks", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.")]),
                          Movies.init(title: "Safe",
                                      actors: [Movies.Actor.init(imageName: "Amanda Abbington.png", name: "Amanda Abbington", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Audrey Fleurot.png", name: "Audrey Fleurot", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Hannah Arterton.png", name: "Hannah Arterton.png", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Marc Warren.png", name: "Marc Warren.png", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Michael C. Hall.png", name: "Michael C. Hall", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.")]),
                          Movies.init(title: "Salt",
                                      actors: [Movies.Actor.init(imageName: "Angelina Jolie.png", name: "Angelina Jolie", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "August Diehl.png", name: "August Diehl", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Chiwetel Ejiofor.png", name: "Chiwetel Ejiofor", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Daniel Olbrychski.png", name: "Daniel Olbrychski", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add."),
                                               Movies.Actor.init(imageName: "Liev Schreiber.png", name: "Liev Schreiber", description: "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add.")])]
    
    func getMovies()-> [Movies]
        
    {
        return movies
    }
}

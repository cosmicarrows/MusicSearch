//
//  Album.swift
//  MusicSearch
//
//  Created by Laurence Wingo on 6/10/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation

class Album: NSObject {
    
    var title: String!
    var artist: String!
    var genre: String!
    var artworkURL: String!
    
    init(title: String, artist: String, genre: String, artworkURL: String) {
        super.init()
        
        self.title = title
        self.artist = artist
        self.artworkURL = artworkURL
        self.genre = genre
    }
}

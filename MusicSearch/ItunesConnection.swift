//
//  ItunesConnection.swift
//  MusicSearch
//
//  Created by Laurence Wingo on 6/10/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import UIKit

class ItunesConnection: NSObject {
    
    class func getAlbumForString(searchString: String){
        // https://itunes.apple.com/search?term=frozen&media=music
       
        let url = URL.init(string: "https://itunes.apple.com/search?term=frozen&media=music")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let itunesDict = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    print(itunesDict)
                } catch{
                    print("caught error: \(error)")
                }
            }
        }
        task.resume()
    }

}

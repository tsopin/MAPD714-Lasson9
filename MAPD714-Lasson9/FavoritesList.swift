//
//  FavoritesList.swift
//  MAPD714-Lasson9
//
//  Created by Timofei Sopin on 2017-11-29.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import Foundation
import UIKit

class FavoritesList {
    static let sharedFavoritesList = FavoritesList()
    private(set) var favorites:[String]
    
    init() {
        let defaults = UserDefaults.standard
        let storedFavorites = defaults.object(forKey: "favorites") as? [String]
        favorites = storedFavorites != nil ? storedFavorites! : []
        
        }
    
    func addFavorite(fontName:String){
        if !favorites.contains(fontName) {
            favorites.append(fontName)
            saveFavorites()
        }
    }
        func removeFavorite(fontName:String) {
            if let index = favorites.index(of:fontName) {
                favorites.remove(at: index)
                saveFavorites()
        }
    }
    private func saveFavorites() {
        let defaults = UserDefaults.standard
        defaults.set(favorites, forKey:"favorites")
        defaults.synchronize()
        
        }
    }



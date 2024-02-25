//
//  GamesABR.swift
//  TableView
//
//  Created by Maor Niv on 2/24/24.
//

import Foundation

struct GamesABR {
    var games: String
    var abr: String
    var details: String
        
    init(_ games:String, _ abr:String, _ details: String) {
        self.games = games
        self.abr = abr
        self.details = details
    }
    
    
}

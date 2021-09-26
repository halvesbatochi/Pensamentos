//
//  Quotes.swift
//  Pensamentos
//
//  Created by Henrique Alves Batochi on 26/09/21.
//

import Foundation

struct Quote : Codable /* Encodable, Decodable */ {
    
    let quote  : String
    let author : String
    let image  : String
    
    var quoteFormatted: String {
        return "“" + quote + "”"
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}

//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Henrique Alves Batochi on 26/09/21.
//

import Foundation

class QuotesManager {
    
    let quotes: [Quote]
    
    init() {
        // Wrapping sem verificação pois esta garantido a existência do arquivo no projeto
        // Try sem catch pela certeza de funcionamento
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
}

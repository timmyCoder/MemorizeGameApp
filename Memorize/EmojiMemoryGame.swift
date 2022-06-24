//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Daniel Olatoye on 23/06/2022.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
    static let emojis = [ "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠", "🚟", "🚃", "🚋", "🚞", "🚝", "🚄", "🚅", "🚈", "🚂", "🚆", "🚇", "🚊", "🚉", "🚁", "🛩", "✈️", "🛫", "🛬", "🚀", "🛰", "💺", "🛶", "⛵️", "🛥", "🚤", "🛳", "⛴", "🚢"]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberofPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private(set) var model = createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

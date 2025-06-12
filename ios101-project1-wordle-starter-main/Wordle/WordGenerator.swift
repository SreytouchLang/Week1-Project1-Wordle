//
//  WordGenerator.swift
//  Wordle
//
//  Created by Mari Batilando on 2/20/23.
//

import Foundation

class WordGenerator {
  // Exercise 8: Add more possible words and return a **random** string every time `generateRandomWord` is called
  // IMPORTANT: MAKE SURE ALL THE LETTERS IN THE NEW WORDS YOU ADD ARE CAPITALIZED (e.g. "AUDIO" instead of "audio")

  static let possibleWords = [
    "AUDIO",
    "ANIME",
    "PLANT",
    "CHAIR",
    "BREAD",
    "MONEY",
    "STORM",
    "CLOUD",
    "TRUCK",
    "GLASS",
    "BRICK",
    "WATER",
    "MOUSE",
    "ZEBRA",
    "FRUIT",
    "FRAME",
    "SWEET",
    "EARTH",
    "PIZZA",
    "TIGER",
    "JOKER",
    "CRANE"
  ]

  static func generateRandomWord() -> String? {
    // Tip: Use `randomElement()` from the Array API
    let word = possibleWords.randomElement()
    print("DEBUG: Selected word is \(word ?? "NONE")")
    return word
  }
}

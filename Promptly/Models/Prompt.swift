//
//  Prompt.swift
//  Promptly
//
//  Created by Melon on 17/06/2025.
//

import Foundation
import SwiftData

// Import the LocalizationManager for the .localized extension
// Since LocalizationManager defines the String extension in the same module,
// we just need to ensure it's available at runtime.

// Prompt data model
@Model
final class Prompt {
    // unique identifier
    var id: UUID
    
    // title
    var title: String
    
    // description
    var promptDescription: String
    
    // user prompt content
    var userPrompt: String
    
    // category - now references custom Category
    var category: Category?
    
    // tags
    var tags: [String]
    
    // is favorite
    var isFavorite: Bool
    
    // created time
    var createdAt: Date
    
    // updated time
    var updatedAt: Date
    
    // usage count
    var usageCount: Int
    
    init(
        title: String,
        description: String,
        userPrompt: String,
        category: Category? = nil,
        tags: [String] = [],
        isFavorite: Bool = false
    ) {
        self.id = UUID()
        self.title = title
        self.promptDescription = description
        self.userPrompt = userPrompt
        self.category = category
        self.tags = tags
        self.isFavorite = isFavorite
        let now = Date()
        self.createdAt = now
        self.updatedAt = now
        self.usageCount = 0
    }
} 

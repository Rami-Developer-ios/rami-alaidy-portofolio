//
//  CreateSkills.swift
//
//
//  Created by Developer IOS on 28/05/2024.
//

import Vapor
import Fluent

struct CreateSkills: AsyncMigration {
    
    func prepare(on database: any Database) async throws {
        
        try await database.schema("skills")
        
            .id()
            .field("name",.string,.required)
            .field("persentage",.string)
            .field("yearsExperianxe",.int)
            .field("ProjectNum",.int)
            .create()
        
    }
    func revert(on database: any Database) async throws {
        try await database.schema("skills").delete()
    }
    
}

//
//  ResponseEntity.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 29/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import Himotoki

public struct ResponseEntity {
    public let totalCount: Int64
    public let images: [ImageEntity]
}

// MARK: Decodable
extension ResponseEntity: Decodable {
    public static func decode(e: Extractor) throws -> ResponseEntity.DecodedType {
        return try ResponseEntity(
            totalCount: e <| "totalHits",
            images: e <|| "hits"
        )
    }
}

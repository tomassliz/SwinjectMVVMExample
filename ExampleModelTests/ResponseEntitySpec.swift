//
//  ResponseEntitySpec.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 29/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import Quick
import Nimble
import Himotoki
@testable import ExampleModel

class ResponseEntitySpec: QuickSpec {
    override func spec() {
        let json: [String: AnyObject] = [
            "totalHits": 123,
            "hits": [imageJSON, imageJSON]
        ]
        
        it("parses JSON data to create a new instance") {
            let response: ResponseEntity? = try? decode(json)
            
            expect(response).notTo(beNil())
            expect(response?.totalCount) == 123
            expect(response?.images.count) == 2
        }
    }
}

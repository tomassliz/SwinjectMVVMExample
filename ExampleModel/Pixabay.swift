//
//  Pixabay.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 30/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

internal struct Pixabay {
    internal static let apiURL = "https://pixabay.com/api/"
    
    internal static var requestParameters: [String: AnyObject] {
        return [
            "username": Config.apiUsername,
            "key": Config.apiKey,
            "image_type": "photo",
            "safesearch": true,
            "per_page": 50
        ]
    }
}

extension Pixabay {
    private struct Config {
        private static let apiUsername = ""
        private static let apiKey = ""
    }
}

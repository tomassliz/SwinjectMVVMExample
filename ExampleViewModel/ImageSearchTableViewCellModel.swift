//
//  ImageSearchTableViewCellModel.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 03/12/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ExampleModel

public final class ImageSearchTableViewCellModel: ImageSearchTableViewCellModeling {
    public let id: UInt64
    public let pageImageSizeText: String
    public let tagText: String
    
    internal init(image: ImageEntity) {
        id = image.id
        pageImageSizeText = "\(image.pageImageWidth) x \(image.pageImageHeight)"
        tagText = image.tags.joinWithSeparator(", ")
    }
}

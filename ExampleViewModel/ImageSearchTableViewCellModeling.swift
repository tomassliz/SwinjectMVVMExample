//
//  ImageSearchTableViewCellModeling.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 03/12/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

public protocol ImageSearchTableViewCellModeling {
    var id: UInt64 { get }
    var pageImageSizeText: String { get }
    var tagText: String { get }
}

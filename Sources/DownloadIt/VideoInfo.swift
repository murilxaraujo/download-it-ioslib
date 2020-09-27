//
//  VideoInfo.swift
//  
//
//  Created by Murilo Araujo on 26/09/20.
//

import Foundation

typealias JSON = [String: Any]

public struct VideoInfo: Codable, Hashable {
    public var downloadUrl: String
    public var title: String
    public var videoExtension: String
    public var fileSizeHumanReadable: String
    public var height: Int?
    public var width: Int?
    public var fps: Int?
    public var resolution: Int?
}

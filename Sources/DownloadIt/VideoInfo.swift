//
//  VideoInfo.swift
//  
//
//  Created by Murilo Araujo on 26/09/20.
//

import Foundation

typealias JSON = [String: Any]

public struct VideoInfo: Codable, Hashable {
    public var downloadURL: URL
    public var title: String
    public var videoExtension: String
    public var fileSize: String
    public var height: Int
    public var width: Int
    public var fps: Int
    public var resolution: Int
}

extension VideoInfo {
    private enum CodingKeys: String, CodingKey {
        case downloadURL = "downloadUrl", title, videoExtension, fileSize, height, width, fps, resolution
    }
}

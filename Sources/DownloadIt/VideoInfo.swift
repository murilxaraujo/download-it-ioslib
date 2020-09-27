//
//  VideoInfo.swift
//  
//
//  Created by Murilo Araujo on 26/09/20.
//

import Foundation

typealias JSON = [String: Any]

public struct VideoInfo: Codable {
    var downloadURL: URL
    var title: String
    var videoExtension: String
    var fileSize: String
    var height: Int
    var width: Int
    var fps: Int
    var resolution: Int
}

extension VideoInfo {
    private enum CodingKeys: String, CodingKey {
        case downloadURL = "downloadUrl", title, videoExtension, fileSize, height, width, fps, resolution
    }
}

//
//  DownloadIt.swift
//  
//
//  Created by Murilo Araujo on 26/09/20.
//

import Foundation

public enum DownloadItErrors: Error {
    case invalidUrl
    case dataNil
    case couldntDecode
}

public class DownloadIt {
    public static func getInfo(for youtubeVideoURLString: String, result: @escaping (Result<[VideoInfo], Error>)->Void) {
        let requestURLString = "https://downloaditapi.azurewebsites.net/Youtube/Info?url=\(youtubeVideoURLString)"
        guard let url = URL(string: requestURLString) else {
            result(.failure(DownloadItErrors.invalidUrl))
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                result(.failure(error!))
                return
            }
            
            guard let data = data else {
                result(.failure(DownloadItErrors.dataNil))
                return
            }
            
            let decoder = JSONDecoder()
            
            guard let video = try? decoder.decode([VideoInfo].self, from: data) else {
                result(.failure(DownloadItErrors.couldntDecode))
                return
            }
            
            result(.success(video))
        }.resume()
    }
}

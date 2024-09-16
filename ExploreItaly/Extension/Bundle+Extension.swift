//
//  Bundle+Extension.swift
//  ExploreItaly
//
//  Created by Saboor on 06/09/2024.
//

import Foundation


extension Bundle {
    func decode<T:Decodable>(_ type: T.Type,from fileName:String) -> T {
        
        guard let url = self.url(forResource: fileName, withExtension: nil) else {
            fatalError("failed to locate \(fileName) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(fileName) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(fileName) from bundle due to missing key '\(key.stringValue)' not found – \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(fileName) from bundle due to missing \(type) value – \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(fileName) from bundle due to type mismatch – \(context.debugDescription)")
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(fileName) from bundle because it appears to be invalid JSON")
        } catch {
            fatalError("Failed to decode \(fileName) from bundle: \(error.localizedDescription)")
        }
    }
}

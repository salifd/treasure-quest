//
//  DataManagerRepository.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation
import Combine
import OHHTTPStubs
import OHHTTPStubsSwift

class DataRepository {
    
    init() {
        stub(condition: isHost("treasure-hunt.com")) { _ in
            let treasure = DataManager.shared.digg()
            do {
                let treasureData = try JSONEncoder().encode(treasure)
                return HTTPStubsResponse(data: treasureData, statusCode: 200, headers: ["Content-Type": "application/json"])
            } catch {
                return HTTPStubsResponse(error: error)
            }
        }
    }
    
    func digg() -> AnyPublisher<Treasure, Error> {
        
        guard let url = URL(string: "https://treasure-hunt.com/api/digg") else {
            let error = URLError(.badURL)
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: Treasure.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

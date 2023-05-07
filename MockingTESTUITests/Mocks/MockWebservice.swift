//
//  MockWebservice.swift
//  MockingTESTUITests
//
//  Created by mac on 14/3/2023.
//

import Foundation

class MockWebservice: NetworkService {
    
    func login(username: String, password: String, completion: @escaping (Result<Void, NetworkError>) -> Void) {
        
        if username == "youcef" && password == "youcef" {
            completion(.success(()))
        } else {
            completion(.failure(.notAuthenticated))
        }
        
    }
    
}

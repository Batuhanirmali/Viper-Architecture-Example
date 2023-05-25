//
//  ApiService.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation


protocol IApiService {
    func getAllPosts(completion:@escaping (Result<[PostsEntity],Error>)->Void)
}

class ApiService: IApiService {
    private var serviceUrl: String = "https://jsonplaceholder.typicode.com/"
    func getAllPosts(completion: @escaping (Result<[PostsEntity], Error>) -> Void) {
        guard let url = URL(string: "\(serviceUrl)posts") else {return}
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            do {
                let posts = try JSONDecoder().decode([PostsEntity].self, from: data)
                completion(.success(posts))
            } catch  {
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }
        task.resume()
    }
}

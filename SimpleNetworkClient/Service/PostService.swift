//
//  PostService.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

import Foundation

struct PostService {
    struct Constants {
        static let kApiUrl = "https://jsonplaceholder.typicode.com/posts"
    }
    
    func fetchPosts(completion: @escaping ([Post]) -> Void) {
        let url = URL(string: Constants.kApiUrl)!
        let _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                completion(posts)
            }
            catch {
                let error = error
                print(error.localizedDescription)
            }
        }.resume()
    }
}

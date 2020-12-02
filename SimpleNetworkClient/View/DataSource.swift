//
//  DataSource.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

import Foundation

class DataSource {
    private var postsData: [Post]?
    private var postsService: PostService?
    
    init() {
        postsData = [Post]()
        postsService = PostService()
    }
    
    func fetchPosts(completion: @escaping (([Post]) -> Void)) {
        postsService?.fetchPosts(completion: completion)
    }
}

extension DataSource: DataSourceProtocol {
    var posts: [Post]? {
        get {
            return postsData
        }
    }

}

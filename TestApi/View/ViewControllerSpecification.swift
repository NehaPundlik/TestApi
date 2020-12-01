//
//  ViewControllerSpecification.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

protocol ViewInterface {
    func refresh(with posts: [Post])
}

protocol ViewModelProtocol {
    func getPosts()
    func deletePost(_ post: Post)
    func clearPosts()
}

protocol DataSourceProtocol {
    var posts: [Post]? { get }
}

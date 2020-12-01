//
//  ViewModel.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

import Foundation

struct ViewModel: ViewModelProtocol {
    private var dataSource: DataSource?
    private typealias postsHandler = ([Post]) -> Void
    private var viewInterface: ViewInterface?
    
    init(with interface: ViewInterface) {
        dataSource = DataSource()
        viewInterface = interface
    }
    
    func getPosts() {
        dataSource?.fetchPosts(completion: { posts in
            viewInterface?.refresh(with: posts)
        })
    }
    
    func deletePost(_ post: Post) {
        
    }
    
    func clearPosts() {
        
    }
}

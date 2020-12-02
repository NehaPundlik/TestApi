//
//  Post.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

import Foundation

struct Post: Codable {
    var userId: Int!
    var id: Int!
    var title: String!
    var body: String!
}

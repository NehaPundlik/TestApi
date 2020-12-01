//
//  ViewController.swift
//  TestApi
//
//  Created by Neha Kulkarni on 12/1/20.
//

import Foundation
import UIKit

class ViewController: UIViewController, ViewInterface {
    private var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel(with: self)
        print(viewModel!.getPosts())
    }
    
    func refresh(with posts: [Post]) {
        print(posts)
    }
}

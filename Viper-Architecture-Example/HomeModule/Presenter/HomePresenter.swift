//
//  HomePresenter.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation

class HomePresenter: ViewToPresenterHomeProtocol {
    var homeInteractorObject: PresenterToInteractorHomeProtocol?
    
    var homeViewObject: PresenterToViewHomeProtocol?
    
    func viewPosts() {
        homeInteractorObject?.getAllPosts()
    }
    
    
}

extension HomePresenter: InteractorToPresenterHomeProtocol {
    func sendDataToPresenter(postList: [PostsEntity]) {
        homeViewObject?.sendDataToView(postList: postList)
    }
    

}

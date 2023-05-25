//
//  HomeInteractor.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation

class HomeInteractor: PresenterToInteractorHomeProtocol {

    var homePresenterObject: InteractorToPresenterHomeProtocol?
    
    func getAllPosts() {
        ApiService().getAllPosts { result in
            switch result {
            case .success(let posts):
                self.homePresenterObject?.sendDataToPresenter(postList: posts)
            case .failure(let error):
                print(error)
            }
        }
    }
}

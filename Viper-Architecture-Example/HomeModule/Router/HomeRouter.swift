//
//  HomeRouter.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation

class HomeRouter: PresenterToRouterHomeProtocol {
    static func execModule(ref: HomeViewController) {
        let presenter = HomePresenter()
        
        //View
        
        ref.homePresenterObject = presenter
        
        //Presenter
        ref.homePresenterObject?.homeInteractorObject = HomeInteractor()
        ref.homePresenterObject?.homeViewObject = ref
        
        //Inderactor
        
        ref.homePresenterObject?.homeInteractorObject?.homePresenterObject = presenter
    }
    
}

//
//  HomeProtocols.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation

protocol ViewToPresenterHomeProtocol {
    var homeInteractorObject: PresenterToInteractorHomeProtocol? {get set}
    var homeViewObject:  PresenterToViewHomeProtocol? {get set}
    
    func viewPosts()
}

protocol PresenterToInteractorHomeProtocol {
    var homePresenterObject: InteractorToPresenterHomeProtocol? {get set}
    func getAllPosts()
}

protocol InteractorToPresenterHomeProtocol {
    func sendDataToPresenter(postList:[])
}

protocol PresenterToViewHomeProtocol {
    func sendDataToView(postList:[])
}

protocol PresenterToRouterHomeProtocol {
    static func execModule(ref: HomeViewController)
}

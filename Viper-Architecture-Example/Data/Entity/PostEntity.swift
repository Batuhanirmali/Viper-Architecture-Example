//
//  PostEntity.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import Foundation

struct PostsEntity: Decodable {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}

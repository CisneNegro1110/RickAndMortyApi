//
//  model.swift
//  RickAndMortyApi
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import Foundation

struct model: Decodable {
    var results: [Results]
}
struct Results: Decodable {
    var id: Int
    var name: String
    var type: String
    var image: String
}
/*
 {
   "info": {
     "count": 826,
     "pages": 42,
     "next": "https://rickandmortyapi.com/api/character/?page=20",
     "prev": "https://rickandmortyapi.com/api/character/?page=18"
   },
   "results": [
     {
       "id": 361,
       "name": "Toxic Rick",
       "status": "Dead",
       "species": "Humanoid",
       "type": "Rick's Toxic Side",
       "gender": "Male",
       "origin": {
         "name": "Alien Spa",
         "url": "https://rickandmortyapi.com/api/location/64"
       },
       "location": {
         "name": "Earth",
         "url": "https://rickandmortyapi.com/api/location/20"
       },
       "image": "https://rickandmortyapi.com/api/character/avatar/361.jpeg",
       "episode": [
         "https://rickandmortyapi.com/api/episode/27"
       ],
       "url": "https://rickandmortyapi.com/api/character/361",
       "created": "2018-01-10T18:20:41.703Z"
     },
     // ...
 */

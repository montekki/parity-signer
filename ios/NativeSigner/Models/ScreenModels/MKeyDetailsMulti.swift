//
//  MKeyDetailsMulti.swift
//  NativeSigner
//
//  Created by Alexander Slesarev on 5.1.2022.
//

import Foundation

//
//  MKeyDetais.swift
//  NativeSigner
//
//  Created by Alexander Slesarev on 9.12.2021.
//

import Foundation

struct MKeyDetailsMulti: Decodable {
    var qr: String
    var pubkey: String
    var base58: String
    var identicon: String
    var seed_name: String
    var path: String
    var network_title: String
    var network_logo: String
    var current_number: String
    var out_of: String
    
    //TODO: has_pwd!!!
    func intoAddress() -> Address {
        return Address(
            base58: self.base58,
            path: self.path,
            has_pwd: false,
            identicon: self.identicon,
            seed_name: self.seed_name,
            multiselect: false
        )
    }
}
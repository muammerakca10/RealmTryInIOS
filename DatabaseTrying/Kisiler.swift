//
//  Kisiler.swift
//  DatabaseTrying
//
//  Created by MUAMMER AKCA on 26.11.2022.
//

import Foundation


class Kisiler{
    var kisi_id:Int?
    var kisi_ad:String?
    var kisi_yas:Int?
    
    init(kisi_id: Int? = nil, kisi_ad: String? = nil, kisi_yas: Int? = nil) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_yas = kisi_yas
    }
}

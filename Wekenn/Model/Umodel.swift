//
//  Umodel.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/13/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import Foundation

struct Umodel {
    
    let name: String
    let image: String
    let favorite: String
    let cancel: String
    let description: String

    static func all() -> [Umodel] {
        return [
            Umodel(name: "Keke, 20 years old", image: "Kerry5.jpg", favorite: "", cancel: "", description: "I’m a born and raised like any good someone. I clean up good and know how to turn on the charm. I love spending the weekend outside exploring the area, BBQing with friends, and harassing my dog. I will warn you that I dance like a fool at weddings. Really. I will embarrass you. But if I do my job right, you’ll be laughing too much to care."),
            Umodel(name: "Papi, 22 years old", image: "Steph5.jpg", favorite: "", cancel: "", description: "I’m a fun-loving guy. My friends would probably describe me as goofy but somehow I always end up being the responsible one. I have a lot of hobbies to keep up with. At the moment I’m focused on softball and fishing. One helps me get out and be social and the other helps me get away from it all. If you don’t mind the pup or a little bit of a goof we could be a pretty good pair."),
            Umodel(name: "Keke, 21 years old", image: "Kerry5.jpg", favorite: "", cancel: "", description: "I’m a born and raised like any good someone. I clean up good and know how to turn on the charm. I love spending the weekend outside exploring the area, BBQing with friends, and harassing my dog. I will warn you that I dance like a fool at weddings. Really. I will embarrass you. But if I do my job right, you’ll be laughing too much to care."),
            Umodel(name: "Zazou, 21 years old", image: "Samy5.jpg", favorite: "", cancel: "", description: "I’m a creature of contradictions—An athletic bookworm, a night owl who’s an early riser, and an active guy who loves to be lazy on Sunday mornings. I’m always interested in learning new things whether it’s history, politics, or the guitar. (I started teaching myself piano last year and am loving the challenge so far.) I can also cook a mean baked tilapia or spaghetti dinner. Let me know if you’re interested or just give me some tips. ")
        ]
    }
}

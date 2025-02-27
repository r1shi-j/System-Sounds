//
//  Sound.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import AudioToolbox

struct Sound: Hashable, Identifiable {
    let id = UUID()
    let number: Int
    let name: String
    
    func playSound() {
        AudioServicesPlaySystemSound(UInt32(number))
    }
    
//    static var allSounds: [Sound] {
//        var x: [Sound] = []
//        (1000..<1400).compactMap{ $0 }.forEach {
//            x.append(Sound(number: $0, name: "h: \($0)"))
//        }
//        return x
//    }
    
    static let allSounds: [Sound] = [
        // aurora, bamboo, circles, complete, hello, input, keys, popcorn, pukse, synth
        //        .init(number: 1007, name: "Notification"),
        //        .init(number: 1012, name: "Notification"),
        //        .init(number: 1015, name: "Notification"),
        //        .init(number: 1017, name: "2Alert"), // remove duplicate
        
        .init(number: 1000, name: "Ding"),
        .init(number: 1001, name: "Swoosh"),
        .init(number: 1002, name: "Tri-tone"),
        .init(number: 1003, name: "Message Recieved"),
        .init(number: 1004, name: "Message Sent"),
        .init(number: 1005, name: "Alert"),
        .init(number: 1006, name: "Alert Sound"), // name
        .init(number: 1008, name: "Chime"),
        .init(number: 1009, name: "Glass"),
        .init(number: 1010, name: "Horn"),
        .init(number: 1011, name: "Vibration"),
        .init(number: 1013, name: "Bell"),
        .init(number: 1014, name: "Electronic"),
        .init(number: 1016, name: "Tweet"),
        .init(number: 1018, name: "Swish"),
        .init(number: 1020, name: "Anticipate"),
        .init(number: 1021, name: "Bloom"),
        .init(number: 1022, name: "Calypso"),
        .init(number: 1023, name: "Choo Choo"),
        .init(number: 1024, name: "Descent"),
        .init(number: 1025, name: "Fanfare"),
        .init(number: 1026, name: "Ladder"),
        .init(number: 1027, name: "Minuet"),
        .init(number: 1028, name: "News Flash"),
        .init(number: 1029, name: "Noir"),
        .init(number: 1030, name: "Sherwood Forest"),
        .init(number: 1031, name: "Spell"),
        .init(number: 1032, name: "Suspense"),
        .init(number: 1033, name: "Telegraph"),
        .init(number: 1034, name: "Tiptoes"),
        .init(number: 1035, name: "Typewriters"),
        .init(number: 1036, name: "Update"),
        
        .init(number: 1050, name: ""),
    ]
    
    static let specificSounds: [Sound] = [
        .init(number: 1000, name: "sf"),
        .init(number: 1001, name: "2sf"),
        .init(number: 1002, name: "sf2"),
        .init(number: 1003, name: "sf"),
        .init(number: 1004, name: "2sf"),
        .init(number: 1005, name: "sf2"),
        .init(number: 1006, name: "sf"),
        .init(number: 1007, name: "sf"),
        .init(number: 1008, name: "2sf"),
        .init(number: 1009, name: "sf2"),
        .init(number: 1010, name: "sf"),
        .init(number: 1011, name: "2sf"),
        .init(number: 1012, name: "sf2"),
        .init(number: 1030, name: "sf2"),
        .init(number: 1031, name: "sf"),
        .init(number: 1032, name: "2sf"),
        .init(number: 1033, name: "sf2"),
        .init(number: 1034, name: "sf"),
        .init(number: 1035, name: "2sf"),
        .init(number: 1036, name: "sf2"),
        .init(number: 1037, name: "sf"),
        .init(number: 1038, name: "2sf"),
        .init(number: 1039, name: "sf2"),
        .init(number: 1040, name: "sf"),
        .init(number: 1041, name: "2sf"),
        .init(number: 1042, name: "sf2")
    ]
}

//    .init(number: 1001, name: "2sf"),
//    .init(number: 1002, name: "sf2"),
//    .init(number: 1003, name: "sf"),
//    .init(number: 1004, name: "2sf"),
//    .init(number: 1005, name: "sf2"),
//    .init(number: 1006, name: "sf"),
//    .init(number: 1007, name: "sf"),
//    .init(number: 1008, name: "2sf"),
//    .init(number: 1009, name: "sf2"),
//    .init(number: 1010, name: "sf"),
//    .init(number: 1011, name: "2sf"),
//    .init(number: 1012, name: "sf2"),
//    .init(number: 1013, name: "sf"),
//    .init(number: 1014, name: "2sf"),
//    .init(number: 1015, name: "sf2"),
//    .init(number: 1016, name: "sf"),
//    .init(number: 1017, name: "2sf"),
//    .init(number: 1018, name: "sf2"),
//    .init(number: 1019, name: "sf"),
//    .init(number: 1020, name: "2sf"),
//    .init(number: 1021, name: "sf2"),
//    .init(number: 1022, name: "sf"),
//    .init(number: 1023, name: "2sf"),
//    .init(number: 1024, name: "sf2"),
//    .init(number: 1025, name: "sf"),
//    .init(number: 1026, name: "2sf"),
//    .init(number: 1027, name: "sf2"),
//    .init(number: 1028, name: "sf"),
//    .init(number: 1029, name: "2sf"),
//    .init(number: 1030, name: "sf2"),
//    .init(number: 1031, name: "sf"),
//    .init(number: 1032, name: "2sf"),
//    .init(number: 1033, name: "sf2"),
//    .init(number: 1034, name: "sf"),
//    .init(number: 1035, name: "2sf"),
//    .init(number: 1036, name: "sf2"),
//    .init(number: 1037, name: "sf"),
//    .init(number: 1038, name: "2sf"),
//    .init(number: 1039, name: "sf2"),
//    .init(number: 1040, name: "sf"),
//    .init(number: 1041, name: "2sf"),
//.init(number: 1042, name: "sf2")

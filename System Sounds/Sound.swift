//
//  Sound.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import AudioToolbox
import SwiftData

@Model
class Sound {
    var id = UUID()
    var number: String
    var name: String
    var isFavourite = false
    
    init(number: String, name: String) {
        self.number = number
        self.name = name
    }
  
    func playSound() {
        AudioServicesPlaySystemSound(UInt32(number) ?? 1108)
    }
    
    static let sounds: [Sound] = [
        .init(number: "1000", name: "Ding"),
        .init(number: "1001", name: "Swoosh"),
        .init(number: "1002", name: "Tri-tone"),
        .init(number: "1003", name: "Message Recieved"),
        .init(number: "1004", name: "Message Sent"),
        .init(number: "1005", name: "Alert"),
        .init(number: "1006", name: "Headphones Low Power"),
        .init(number: "1008", name: "Chime"),
        .init(number: "1009", name: "Glass"),
        .init(number: "1010", name: "Horn"),
        .init(number: "1011", name: "2 Vibrations"),
        .init(number: "1013", name: "Bell"),
        .init(number: "1014", name: "Electronic"),
        .init(number: "1016", name: "Tweet"),
        .init(number: "1018", name: "Swish"),
        .init(number: "1020", name: "Anticipate"),
        .init(number: "1021", name: "Bloom"),
        .init(number: "1022", name: "Calypso"),
        .init(number: "1023", name: "Choo Choo"),
        .init(number: "1024", name: "Descent"),
        .init(number: "1025", name: "Fanfare"),
        .init(number: "1026", name: "Ladder"),
        .init(number: "1027", name: "Minuet"),
        .init(number: "1028", name: "News Flash"),
        .init(number: "1029", name: "Noir"),
        .init(number: "1030", name: "Sherwood Forest"),
        .init(number: "1031", name: "Spell"),
        .init(number: "1032", name: "Suspense"),
        .init(number: "1033", name: "Telegraph"),
        .init(number: "1034", name: "Tiptoes"),
        .init(number: "1035", name: "Typewriters"),
        .init(number: "1036", name: "Update"),
        .init(number: "1050", name: "Sim Toolkit Tone"),
        .init(number: "1051", name: "Sim Toolkit Tone"),
        .init(number: "1052", name: "Sim Toolkit Tone"),
        .init(number: "1053", name: "Sim Toolkit Tone"),
        .init(number: "1054", name: "Sim Toolkit Tone"),
        .init(number: "1060", name: "Continuity Camera"),
        .init(number: "1061", name: "AirTag Ping"),
        .init(number: "1070", name: "Audio Tone Busy"),
        .init(number: "1071", name: "Audio Tone Congestion"),
        .init(number: "1072", name: "Audio Tone Path Acknowledge"),
        .init(number: "1073", name: "Audio Tone Error"),
        .init(number: "1074", name: "Audio Tone Call Waiting"),
        .init(number: "1075", name: "Audio Tone Key"),
        .init(number: "1100", name: "Screen Locked"),
        .init(number: "1102", name: "Failed Unlock"),
        .init(number: "1103", name: "Keyboard"),
        .init(number: "1104", name: "Keyboard"),
        .init(number: "1105", name: "Keyboard"),
        .init(number: "1106", name: "Charging"),
        .init(number: "1108", name: "Screenshot"),
        
        .init(number: "1109", name: ""),
        .init(number: "1110", name: ""),
        .init(number: "1111", name: ""),
        .init(number: "1112", name: ""),
        
        .init(number: "1113", name: "Start Video"),
        .init(number: "1114", name: "End Video"),
        .init(number: "1115", name: "Start Siri"),
        .init(number: "1116", name: "End Siri"),
        .init(number: "1119", name: "Burst"),
        .init(number: "1120", name: "Pulse"),
        .init(number: "1122", name: "End Burst"),
        .init(number: "1124", name: "Apple TV"),
        .init(number: "1125", name: "Apple TV"),
        .init(number: "1126", name: "Apple TV"),
        .init(number: "1127", name: "Apple TV"),
        .init(number: "1128", name: "Apple TV"),
        .init(number: "1129", name: "Apple TV"),
        
        .init(number: "1130", name: ""),
        .init(number: "1131", name: ""),
        .init(number: "1132", name: ""),
        
        .init(number: "1150", name: "FaceTime Start"),
        .init(number: "1152", name: "FaceTime End"),
        .init(number: "1153", name: "Phone End"),
        .init(number: "1151", name: "FaceTime Ringing Loud"),
        .init(number: "1154", name: "FaceTime Ringing"),
        
        .init(number: "1155", name: ""),
        .init(number: "1156", name: ""),
        .init(number: "1157", name: ""),
        
        .init(number: "1158", name: "Bedtime"),
        
        .init(number: "1159", name: ""),
        .init(number: "1160", name: ""),
        
        .init(number: "1161", name: "Haptics"),
        .init(number: "1162", name: "Haptics"),
        .init(number: "1164", name: "Haptics"),
        
        .init(number: "1165", name: ""),
        
        .init(number: "1166", name: "Loud"),
        .init(number: "1167", name: "Doorbell"),
        .init(number: "1168", name: "Loud"),
        .init(number: "1169", name: "Handoff"),
        .init(number: "1174", name: "Haptics"),
        .init(number: "1175", name: "Haptics"),
        .init(number: "1200", name: "Phone Dial"),
        .init(number: "1201", name: "Phone Dial"),
        .init(number: "1202", name: "Phone Dial"),
        .init(number: "1203", name: "Phone Dial"),
        .init(number: "1204", name: "Phone Dial"),
        .init(number: "1205", name: "Phone Dial"),
        .init(number: "1206", name: "Phone Dial"),
        .init(number: "1207", name: "Phone Dial"),
        .init(number: "1208", name: "Phone Dial"),
        .init(number: "1209", name: "Phone Dial"),
        .init(number: "1210", name: "Phone Dial"),
        .init(number: "1211", name: "Phone Dial"),
        .init(number: "1253", name: "iPhone Boot Chime"),
        .init(number: "1254", name: "Headset Start Call"),
        .init(number: "1255", name: "Headset Redial"),
        .init(number: "1256", name: "Headset Answer Call"),
        .init(number: "1257", name: "Headset End Call"),
        .init(number: "1259", name: "Headset Transition End"),
        .init(number: "1260", name: "AirTag"),
        
        .init(number: "1261", name: ""),
        .init(number: "1262", name: ""),
        .init(number: "1263", name: ""),
        .init(number: "1264", name: ""),
        .init(number: "1265", name: ""),
        .init(number: "1270", name: ""),
        .init(number: "1271", name: ""),
        .init(number: "1272", name: ""),
        .init(number: "1273", name: ""),
        .init(number: "1274", name: ""),
        .init(number: "1275", name: ""),
        .init(number: "1276", name: ""),
        .init(number: "1277", name: ""),
        .init(number: "1281", name: ""),
        
        .init(number: "1340", name: "Loud"),
        .init(number: "1341", name: "Loud"),
        .init(number: "1342", name: "Loud"),
        .init(number: "1343", name: "Loud"),
        .init(number: "1344", name: "Keyboard Loud"),
        .init(number: "1345", name: "Tap Loud"),
        
        .init(number: "1346", name: ""),
        .init(number: "1347", name: ""),
        .init(number: "1348", name: ""),
        
        .init(number: "1362", name: ""),
        
        .init(number: "1363", name: "AirTag"),
        .init(number: "1364", name: "Mute"),
        .init(number: "1365", name: "Unmute"),
        .init(number: "1366", name: "FaceTime Ring"),
        
        .init(number: "1367", name: ""),
        .init(number: "1368", name: ""),
        .init(number: "1369", name: ""),
        .init(number: "1370", name: ""),
        .init(number: "1371", name: ""),
        .init(number: "1372", name: ""),
        .init(number: "1373", name: ""),
        .init(number: "1374", name: ""),
        
        .init(number: "1393", name: "Mac Screenshot"),
        .init(number: "1394", name: "Apple Pay"),
        
        .init(number: "1395", name: ""),
        .init(number: "1396", name: ""),
        .init(number: "1397", name: ""),
        
        .init(number: "1400", name: "Watch Message"),
        .init(number: "1402", name: "Watch Call Long"),
        .init(number: "1402", name: "Watch Call x2 Short"),
        .init(number: "1403", name: "Watch Timer"),
        .init(number: "1405", name: "Watch Alert"),
        .init(number: "1406", name: "Watch Alert"),
        .init(number: "1516", name: "Watch Notification"),
        .init(number: "1518", name: "Watch Fitness Notification"),
        .init(number: "1519", name: "Haptic"),
        .init(number: "1520", name: "Haptic"),
        .init(number: "1521", name: "Haptics"),
        .init(number: "4095", name: "1 Vibration"),
    ]
}

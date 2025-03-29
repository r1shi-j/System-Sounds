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
    var isLoudSound: Bool = false
    var audioType: AudioType.RawValue
    
    init(number: String, name: String, isLoudSound: Bool = false, audioType: AudioType) {
        self.number = number
        self.name = name
        self.isLoudSound = isLoudSound
        self.audioType = audioType.rawValue
    }
  
    func playSound() {
        AudioServicesPlaySystemSound(UInt32(number) ?? 1108)
    }
    
    static var sounds: [Sound] {
        [
            .init(
                number: "1000",
                name: "Ding",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1001",
                name: "Swoosh",
                audioType: .soundToNone
            ),
            .init(
                number: "1002",
                name: "Tri-tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1003",
                name: "Message Recieved",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1004",
                name: "Message Sent",
                audioType: .soundToNone
            ),
            .init(
                number: "1005",
                name: "Alert",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1006",
                name: "Headphones Low Power",
                audioType: .soundOnly
            ),
            .init(
                number: "1008",
                name: "Chime",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1009",
                name: "Glass",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1010",
                name: "Horn",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1011",
                name: "2 Vibrations",
                audioType: .hapticOnly
            ),
            .init(
                number: "1013",
                name: "Bell",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1014",
                name: "Electronic",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1016",
                name: "Tweet",
                audioType: .soundToNone
            ),
            .init(
                number: "1018",
                name: "Swish",
                audioType: .soundToNone
            ),
            .init(
                number: "1020",
                name: "Anticipate",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1021",
                name: "Bloom",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1022",
                name: "Calypso",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1023",
                name: "Choo Choo",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1024",
                name: "Descent",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1025",
                name: "Fanfare",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1026",
                name: "Ladder",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1027",
                name: "Minuet",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1028",
                name: "News Flash",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1029",
                name: "Noir",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1030",
                name: "Sherwood Forest",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1031",
                name: "Spell",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1032",
                name: "Suspense",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1033",
                name: "Telegraph",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1034",
                name: "Tiptoes",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1035",
                name: "Typewriters",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1036",
                name: "Update",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1050",
                name: "Sim Toolkit Tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1051",
                name: "Sim Toolkit Tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1052",
                name: "Sim Toolkit Tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1053",
                name: "Sim Toolkit Tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1054",
                name: "Sim Toolkit Tone",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1060",
                name: "Continuity Camera",
                audioType: .soundOnly
            ),
            .init(
                number: "1061",
                name: "AirTag Ping",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1070",
                name: "Audio Tone Busy",
                audioType: .soundOnly
            ),
            .init(
                number: "1071",
                name: "Audio Tone Congestion",
                audioType: .soundOnly
            ),
            .init(
                number: "1072",
                name: "Audio Tone Path Acknowledge",
                audioType: .soundOnly
            ),
            .init(
                number: "1073",
                name: "Audio Tone Error",
                audioType: .soundOnly
            ),
            .init(
                number: "1074",
                name: "Audio Tone Call Waiting",
                audioType: .soundOnly
            ),
            .init(
                number: "1075",
                name: "Audio Tone Key",
                audioType: .soundOnly
            ),
            .init(
                number: "1100",
                name: "Screen Locked",
                audioType: .soundToNone
            ),
            .init(
                number: "1102",
                name: "Failed Unlock",
                audioType: .hapticOnly
            ),
            .init(
                number: "1103",
                name: "Keyboard",
                audioType: .soundToNone
            ),
            .init(
                number: "1104",
                name: "Keyboard",
                audioType: .soundToNone
            ),
            .init(
                number: "1105",
                name: "Keyboard",
                audioType: .soundToNone
            ),
            .init(
                number: "1106",
                name: "Charging",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1108",
                name: "Screenshot",
                audioType: .soundToNone
            ),
            
            .init(
                number: "1109",
                name: "",
                audioType: .soundOnly
            ),
            .init(
                number: "1110",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1111",
                name: "",
                audioType: .soundOnly
            ),
            .init(
                number: "1112",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1113",
                name: "Start Video",
                audioType: .soundToNone
            ),
            .init(
                number: "1114",
                name: "End Video",
                audioType: .soundToNone
            ),
            .init(
                number: "1115",
                name: "Start Siri",
                audioType: .soundOnly
            ),
            .init(
                number: "1116",
                name: "End Siri",
                audioType: .soundOnly
            ),
            .init(
                number: "1119",
                name: "Burst",
                audioType: .soundToNone
            ),
            .init(
                number: "1120",
                name: "Pulse",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1122",
                name: "End Burst",
                audioType: .soundToNone
            ),
            .init(
                number: "1124",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            .init(
                number: "1125",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            .init(
                number: "1126",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            .init(
                number: "1127",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            .init(
                number: "1128",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            .init(
                number: "1129",
                name: "Apple TV",
                audioType: .soundToNone
            ),
            
            .init(
                number: "1130",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1131",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1132",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1150",
                name: "FaceTime Start",
                audioType: .soundOnly
            ),
            .init(
                number: "1151",
                name: "FaceTime Ringing",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1152",
                name: "FaceTime End",
                audioType: .soundOnly
            ),
            .init(
                number: "1153",
                name: "Phone End",
                audioType: .soundOnly
            ),
            .init(
                number: "1154",
                name: "FaceTime Ringing",
                audioType: .soundOnly
            ),
            .init(
                number: "1155",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1156",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1157",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1158",
                name: "Bedtime",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1159",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1160",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1161",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "1162",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "1164",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "1165",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1166",
                name: "",
                isLoudSound: true,
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1167",
                name: "Doorbell",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1168",
                name: "",
                isLoudSound: true,
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1169",
                name: "Handoff",
                audioType: .soundOnly
            ),
            .init(
                number: "1174",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "1175",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "1200",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1201",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1202",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1203",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1204",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1205",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1206",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1207",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1208",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1209",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1210",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1211",
                name: "Phone Dial",
                audioType: .soundToNone
            ),
            .init(
                number: "1253",
                name: "iPhone Boot Chime",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1254",
                name: "Headset Start Call",
                audioType: .soundOnly
            ),
            .init(
                number: "1255",
                name: "Headset Redial",
                audioType: .soundOnly
            ),
            .init(
                number: "1256",
                name: "Headset Answer Call",
                audioType: .soundOnly
            ),
            .init(
                number: "1257",
                name: "Headset End Call",
                audioType: .soundOnly
            ),
            .init(
                number: "1259",
                name: "Headset Transition End",
                audioType: .soundOnly
            ),
            .init(
                number: "1260",
                name: "AirTag",
                audioType: .soundToNone
            ),
            .init(
                number: "1261",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1262",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1263",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1264",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1265",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1270",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1271",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1272",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1273",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1274",
                name: "",
                audioType: .hapticAndSound
            ),
            .init(
                number: "1275",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1276",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1277",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1281",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1340",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1341",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1342",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1343",
                name: "",
                isLoudSound: true,
                audioType: .soundToNone
            ),
            .init(
                number: "1344",
                name: "Keyboard",
                isLoudSound: true,
                audioType: .soundToNone
            ),
            .init(
                number: "1345",
                name: "Tap",
                isLoudSound: true,
                audioType: .soundToNone
            ),
            .init(
                number: "1346",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1347",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1348",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1362",
                name: "",
                audioType: .soundOnly
            ),
            .init(
                number: "1363",
                name: "AirTag",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1364",
                name: "Mute",
                audioType: .soundOnly
            ),
            .init(
                number: "1365",
                name: "Unmute",
                audioType: .soundOnly
            ),
            .init(
                number: "1366",
                name: "FaceTime Ring",
                audioType: .soundOnly
            ),
            .init(
                number: "1367",
                name: "",
                isLoudSound: true,
                audioType: .soundOnly
            ),
            .init(
                number: "1368",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1369",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1370",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1371",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1372",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1373",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1374",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1393",
                name: "Mac Screenshot",
                audioType: .soundToNone
            ),
            .init(
                number: "1394",
                name: "Apple Pay",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1395",
                name: "",
                audioType: .hapticAndSoundToHaptic
            ),
            .init(
                number: "1396",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1397",
                name: "",
                audioType: .soundToNone
            ),
            .init(
                number: "1400",
                name: "Watch Message",
                audioType: .soundToNone
            ),
            .init(
                number: "1401",
                name: "Watch Call Long",
                audioType: .soundToNone
            ),
            .init(
                number: "1402",
                name: "Watch Call x2 Short",
                audioType: .soundToNone
            ),
            .init(
                number: "1403",
                name: "Watch Timer",
                audioType: .soundToNone
            ),
            .init(
                number: "1405",
                name: "Watch Alert",
                isLoudSound: true,
                audioType: .hapticAndSound
            ),
            .init(
                number: "1406",
                name: "Watch Alert",
                isLoudSound: true,
                audioType: .hapticAndSound
            ),
            .init(
                number: "1516",
                name: "Watch Notification",
                audioType: .soundToNone
            ),
            .init(
                number: "1518",
                name: "Watch Fitness Notification",
                audioType: .soundToNone
            ),
            .init(
                number: "1519",
                name: "Haptic",
                audioType: .hapticOnly
            ),
            .init(
                number: "1520",
                name: "Haptic",
                audioType: .hapticOnly
            ),
            .init(
                number: "1521",
                name: "Haptics",
                audioType: .hapticOnly
            ),
            .init(
                number: "4095",
                name: "1 Vibration",
                audioType: .hapticOnly
            ),
        ]
    }
}

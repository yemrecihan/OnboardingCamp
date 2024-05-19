import UIKit
import Foundation




class NeonAcademyMember {
    
    var fullName : String
    var title : String
    var horoscope : String
    var memberLevel : String
    var homeTown : String
    var age : Int
    var contactInfo : ContactInformation
    var team : Team
    var motivationLevel : Int?
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int,contactInfo: ContactInformation,team : Team, motivationLevel: Int? = nil) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInfo = contactInfo
        self.team = team
        self.motivationLevel = motivationLevel
    }
    
   
    
}



struct ContactInformation {
    
    var phoneNumber : Int
    var email : String
    
    
}


    var memberArray : [NeonAcademyMember] = []
    
    
    
        
        
    let member1 = NeonAcademyMember(fullName: "Yunus Emre Cihan", title: "İOS Developer", horoscope: "Pisces", memberLevel: "Junior", homeTown: "Osmaniye", age: 25,contactInfo: ContactInformation(phoneNumber: 05416280420, email: "yunusemrecihan@gmail.com"),team : .İOSDevelopment)
    memberArray.append(member1)
    
   
let member2 = NeonAcademyMember(fullName: "İlayda İkizoğlu", title: "Designer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Osmaniye", age: 24,contactInfo: ContactInformation(phoneNumber: 05539541209, email: "layda@gmail.com"),team : .uıuxDesign)
memberArray.append(member2)
print(member2.fullName)
let member3 = NeonAcademyMember(fullName: "Sedat Barlin", title: "Android Developer", horoscope: "Scorpion", memberLevel: "Junior", homeTown: "Urfa", age: 23,contactInfo: ContactInformation(phoneNumber: 05442342132, email: "barlin@gmail.com"),team: .androidDevelopment)
memberArray.append(member3)
print(member3.fullName)
let member4 = NeonAcademyMember(fullName: "Özgür Cihan", title: "İOS Developer", horoscope: "Aries", memberLevel: "Junior", homeTown: "Maraş", age: 28,contactInfo: ContactInformation(phoneNumber: 05334567898, email: "cihan@gmail.com"),team: .İOSDevelopment)
memberArray.append(member4)
print(member4.fullName)
let member5 = NeonAcademyMember(fullName: "Ecrin Cihan", title: "Android Developer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "İstanbul", age: 20,contactInfo: ContactInformation(phoneNumber: 05324532190, email: "ecrin@gmail.com"),team : .androidDevelopment)
memberArray.append(member5)
print(member5.fullName)
let member6 = NeonAcademyMember(fullName: "Yiğit Bıçak", title: "Designer", horoscope: "Capricorn", memberLevel: "Senior", homeTown: "Tekirdağ", age: 26,contactInfo: ContactInformation(phoneNumber: 05347484085, email: "ygt@gmail.com"),team: .uıuxDesign)
memberArray.append(member6)
print(member6.fullName)

let member7 = NeonAcademyMember(fullName: "Ahmet Sabri Yorgancı", title: "İOS Developer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Osmaniye", age: 29,contactInfo: ContactInformation(phoneNumber: 05345707141, email: "sabr@gmail.com"), team : .İOSDevelopment)
memberArray.append(member7)
print(member7.fullName)
let member8 = NeonAcademyMember(fullName: "İsmail Kocaoğlu", title: "Android Developer", horoscope: "Leo", memberLevel: "Junior", homeTown: "Antep", age: 25,contactInfo: ContactInformation(phoneNumber: 05319015627, email: "iso@gmail.com"),team: .androidDevelopment)
memberArray.append(member8)
print(member8.fullName)
let member9 = NeonAcademyMember(fullName: "Ali Cihan", title: "Designer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Ankara", age: 30,contactInfo: ContactInformation(phoneNumber: 05346463038, email: "acihan@gmail.com"),team : .uıuxDesign)
memberArray.append(member9)
print(member9.fullName)
let member10 = NeonAcademyMember(fullName: "Ozan Seçilmiş", title: "İOS Team Lead", horoscope: "Gemini", memberLevel: "Mentor", homeTown: "Amasya", age: 31, contactInfo: ContactInformation(phoneNumber: 05445678921, email: "ozan@gmail.com"),team : .İOSDevelopment)
memberArray.append(member10)
print(member10.fullName)
        
        

        print(member1.fullName)
        print(member1.age)
        print(member1.homeTown)
        print(member1.horoscope)
        print(member1.title)
        print(member1.contactInfo.email)
        print(member1.contactInfo.phoneNumber)
        
       print(memberArray)

enum Team {
    
    case İOSDevelopment
    case androidDevelopment
    case uıuxDesign
    
    static var allCases: [Team] {
            return [.İOSDevelopment, .androidDevelopment, .uıuxDesign]
        }


func getName() -> String {
    
    switch self  {
    
    case .İOSDevelopment:
        return "İOS Geliştirme Ekibi"
    case .androidDevelopment :
        return "Android Geliştirme Ekibi"
    case .uıuxDesign :
        return "UI/UX Tasarım Ekibi"
        
        }
    }
}
func increaseMotivation(member: NeonAcademyMember, motivation: Int) {
    if let lvl = member.motivationLevel {
        member.motivationLevel! += motivation
    } else {
        member.motivationLevel = 1
    }
}
increaseMotivation(member: member1, motivation: 3)
print(member1.motivationLevel!)
increaseMotivation(member: member1, motivation: 5)
print(member1.motivationLevel!)

func motivationMessage (member : NeonAcademyMember) {
    
    guard let motivationLevel = member.motivationLevel else {
        print("This member has no motivation level set")
        return
    }
    
    if motivationLevel == 0 {
        print("This member has no motivation level set")
    }else if motivationLevel > 5 {
        print("This member is higly motivated")
        
    }else {
        print("This member is motivation level: \(motivationLevel)")
    }
    
}
motivationMessage(member: member1)
motivationMessage(member: member2)

func getMotivationStatus(member: NeonAcademyMember) -> String {
    guard let motivationLevel = member.motivationLevel else {
        return "Motivation level is not set"
    }
    
    switch motivationLevel {
    case 0:
        return "Not motivated at all"
    case 1...5:
        return "Moderately motivated"
    default:
        return "Highly motivated"
    }
}
let member1MotivationStatus = getMotivationStatus(member: member1)
print("Member 1's motivation status: \(member1MotivationStatus)")

func getMotivationLevel (member : NeonAcademyMember) ->  Int {
    
    return member.motivationLevel ?? 0
    
}


func isMotivated (member : NeonAcademyMember , targetMotivationLevel : Int) -> Bool {
    
    guard let currentMotivationLevel = member.motivationLevel else {
        return false
    }
    
    return currentMotivationLevel >= targetMotivationLevel
    
}

isMotivated(member: member1, targetMotivationLevel: 5)

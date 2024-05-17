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
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int,contactInfo: ContactInformation,team : Team) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInfo = contactInfo
        self.team = team
    }
}

struct ContactInformation {
    
    var phoneNumber : Int
    var email : String
    
    
}


    var memberArray : [NeonAcademyMember] = []
    
    
    
        
        
let member1 = NeonAcademyMember(fullName: "Yunus Emre Cihan", title: "İOS Developer", horoscope: "Pisces", memberLevel: "Junior", homeTown: "Osmaniye", age: 25,contactInfo: ContactInformation(phoneNumber: 05416280420, email: "yunusemrecihan@gmail.com"),team : .İOSDevelopment)
memberArray.append(member1)
print(member1.fullName)
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

var iosDevelopmentArray : [NeonAcademyMember] = []

let filteredTeam = memberArray.filter{$0.team ==  .İOSDevelopment}

for member in filteredTeam{
    
    iosDevelopmentArray.append(member)
    print("Team For \(member.fullName): \(member.team.getName())")
}

var teamDictionary : [Team:Int] = [:]

for team in Team.allCases {
    
    let membersInTeam = memberArray.filter{$0.team == team}
    teamDictionary[team] = membersInTeam.count
    
}

if let uiUxDesignMemberCount = teamDictionary[.uıuxDesign] {
    print ("UI/UX Tasarım ekibindeki üye sayısı :\(uiUxDesignMemberCount)")
}else {
    print ("UI/UX Tasarım ekibinde üye yok.")
}

func printTeamMembers ( i:Team) {
    
    let teamMembers = memberArray.filter{$0.team == i}
    
    for member in teamMembers {
        print(member.fullName)
    }
    printTeamMembers(i: .İOSDevelopment)
}


func printTeamRole(i:NeonAcademyMember){
    
    switch i.team {
    case .İOSDevelopment:
        print("\(i.fullName): Bu üye yetenekli bir İOS geliştiricidir.")
    case .androidDevelopment:
        print("\(i.fullName): Bu üye yetenekli bir Android geliştiricidir.")
    case .uıuxDesign:
        print("\(i.fullName): Bu üye yetenekli bir UI/UX tasarımcıdır.")
    }
}
printTeamRole(i: member2)

func ageOfMembers (i:Int,x:Team) {
    
     let filterAge  = memberArray.filter {$0.age > i && $0.team == x}
    
    if !filterAge.isEmpty {
        for i in filterAge {
            
            print("\(i.fullName),\(x) grubundan ,\(i.age) yaşında.")
            
        }
    }else{
        print ("Bu yaştan büyük bir kişi veya bu takımdan bulunan kimse yok.")
        
    
    }
}
ageOfMembers(i: 20, x: .androidDevelopment)


func promotion (i:NeonAcademyMember) {
    
    switch i.team {
    case .İOSDevelopment:
        print("\(i.fullName) :Bu üye artık Kıdemli İOS Geliştirici")
    case .androidDevelopment:
        print("\(i.fullName): Bu üye artık Kıdemli Android geliştiricidir.")
    case .uıuxDesign:
        print("\(i.fullName): Bu üye artık Baş tasarımcıdır.")
    default:
            print("\(i.fullName): Bu üye için terfi durumu belirtilmemiş")
    }
}
promotion(i: member2)

func avaregaOfTeam (i:Team)  -> Double? {
    
    let teamMembers = memberArray.filter { $0.team == i }
        guard !teamMembers.isEmpty else {
            return nil
        }
    let totalAge = teamMembers.reduce(0) { $0 + $1.age }
       let averageAge = Double(totalAge) / Double(teamMembers.count)
       
       return averageAge
    
}

avaregaOfTeam(i: .uıuxDesign)

enum Message {
    
    case ios
    case android
    case designer
    
    func getMessage() -> String {
        
        switch self {
        case.ios :
            return "İOS Geliştirme Ekibi bu şirketin omurgasıdır."
        case.android :
            return "Android Geliştirme Ekibi bu şirketin omurgasının bir parçasıdır."
        case.designer :
            return "UI/UX tasarım ekibi akademimizin yüzüdür."
        }
    
    }
    
    
    
}

func ınfoOfMembers (i:Team) ->[ContactInformation] {
    
    let teamArray = memberArray.filter{$0.team == i}
    let contactInfos = teamArray.map{$0.contactInfo}
    
    return contactInfos
}
let uıuxMemberInfo = ınfoOfMembers(i: .uıuxDesign)
print(uıuxMemberInfo)


func performActionForMember(member: NeonAcademyMember) {
    switch (member.team, member.age) {
        case (.İOSDevelopment, let age) where age >= 23:
            print("\(member.fullName) deneyimli bir iOS geliştiricisidir.")
    case (.uıuxDesign, let age) where age < 24:
            print("\(member.fullName) tasarım dünyasında yükselen bir yıldızdır.")
        default:
            print("Belirtilen durum için özel bir işlem bulunmamaktadır.")
    }
}
performActionForMember(member: member1)

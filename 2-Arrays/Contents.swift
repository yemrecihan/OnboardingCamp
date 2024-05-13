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
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int,contactInfo: ContactInformation) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInfo = contactInfo
    }
}

struct ContactInformation {
    
    var phoneNumber : Int
    var email : String
    
    
}


    var memberArray : [NeonAcademyMember] = []
    
    
    
        
        
        let member1 = NeonAcademyMember(fullName: "Yunus Emre Cihan", title: "İOS Developer", horoscope: "Pisces", memberLevel: "Junior", homeTown: "Osmaniye", age: 25,contactInfo: ContactInformation(phoneNumber: 05416280420, email: "yunusemrecihan@gmail.com"))
memberArray.append(member1)
print(member1.fullName)
        let member2 = NeonAcademyMember(fullName: "İlayda İkizoğlu", title: "Designer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Osmaniye", age: 24,contactInfo: ContactInformation(phoneNumber: 05539541209, email: "layda@gmail.com"))
memberArray.append(member2)
print(member2.fullName)
        let member3 = NeonAcademyMember(fullName: "Sedat Barlin", title: "İOS Developer", horoscope: "Scorpion", memberLevel: "Junior", homeTown: "Urfa", age: 23,contactInfo: ContactInformation(phoneNumber: 05442342132, email: "barlin@gmail.com"))
memberArray.append(member3)
print(member3.fullName)
        let member4 = NeonAcademyMember(fullName: "Özgür Cihan", title: "İOS Developer", horoscope: "Aries", memberLevel: "Junior", homeTown: "Maraş", age: 28,contactInfo: ContactInformation(phoneNumber: 05334567898, email: "cihan@gmail.com"))
memberArray.append(member4)
print(member4.fullName)
        let member5 = NeonAcademyMember(fullName: "Ecrin Cihan", title: "Designer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "İstanbul", age: 20,contactInfo: ContactInformation(phoneNumber: 05324532190, email: "ecrin@gmail.com"))
memberArray.append(member5)
print(member5.fullName)
let member6 = NeonAcademyMember(fullName: "Yiğit Bıçak", title: "İOS Developer", horoscope: "Capricorn", memberLevel: "Senior", homeTown: "Tekirdağ", age: 26,contactInfo: ContactInformation(phoneNumber: 05347484085, email: "ygt@gmail.com"))
memberArray.append(member6)
print(member6.fullName)

        let member7 = NeonAcademyMember(fullName: "Ahmet Sabri Yorgancı", title: "İOS Developer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Osmaniye", age: 29,contactInfo: ContactInformation(phoneNumber: 05345707141, email: "sabr@gmail.com"))
memberArray.append(member7)
print(member7.fullName)
        let member8 = NeonAcademyMember(fullName: "İsmail Kocaoğlu", title: "İOS Developer", horoscope: "Leo", memberLevel: "Junior", homeTown: "Antep", age: 25,contactInfo: ContactInformation(phoneNumber: 05319015627, email: "iso@gmail.com"))
memberArray.append(member8)
print(member8.fullName)
        let member9 = NeonAcademyMember(fullName: "Ali Cihan", title: "Designer", horoscope: "Gemini", memberLevel: "Junior", homeTown: "Ankara", age: 30,contactInfo: ContactInformation(phoneNumber: 05346463038, email: "acihan@gmail.com"))
memberArray.append(member9)
print(member9.fullName)
let member10 = NeonAcademyMember(fullName: "Ozan Seçilmiş", title: "İOS Team Lead", horoscope: "Gemini", memberLevel: "Mentor", homeTown: "Amasya", age: 31, contactInfo: ContactInformation(phoneNumber: 05445678921, email: "ozan@gmail.com"))
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

if memberArray.count >= 3 {
           memberArray.remove(at: 2)
           
       }else {
           print ("Yeterli sayıda üye yok.")
       }
memberArray.sort {$0.age > $1.age }

for member in memberArray {
   
   print ("Full Name : \(member.fullName), Age : \(member.age)")
   
}

memberArray.sort {$0.fullName < $1.fullName }

for member in memberArray {
   print ("Full Name : \(member.fullName), Age : \(member.age)")
}


var filteredMemberArray : [NeonAcademyMember] = []

let filteredMember = memberArray.filter {$0.age > 24 }

for member in filteredMember {
   print("Full Name : \(member.fullName), Age : \(member.age)")
}

for member in filteredMember {
   filteredMemberArray.append(member)
}
for member in filteredMemberArray {
   print ("Full Name : \(member.fullName), Age : \(member.age)")
}

filteredMemberArray.filter {$0.title == "İOS Developer"}.count

for member in memberArray {
   print ( "Full name:   \(member.fullName), Age:  \(member.age)")
}

let filteredTitle = memberArray.filter{$0.title != "İOS Developer"}

if filteredTitle.count < memberArray.count {
   print ("İOS Developers Removed!!")
   memberArray = filteredTitle
}else {
   print ("No İOS Developer found ")
}


if let oldestMember = memberArray.max(by: { $0.age > $1.age}) {
   print ("Oldest Member : \(oldestMember.fullName),\(oldestMember.age)")
}else {
   print ("No member found ! ")
}
       

if let longestName = memberArray.max(by: {$0.fullName.count < $1.fullName.count}) {
   print ("Longest Name : \(longestName.fullName),\(longestName.age)")
   print ("Üye adının uzunluğu : \(longestName.fullName.count)")
} else {
   print ("No Longest Name Found !! ")
}
   

var membersByZodiac : [String:[NeonAcademyMember]] = [:]

for member in memberArray {
   
   let zodiac = member.horoscope
  
   var members = membersByZodiac[zodiac] ?? []
  
   members.append(member)
  
   membersByZodiac[zodiac] = members
}
for (zodiac,members) in membersByZodiac {
   print("Aynı burçta olan üyeler (\(zodiac)):")
   
   for member in members {
       print ("-\(member.fullName)")
   }
}

var townFrequency = [String:Int]()

for member in memberArray {
   
   if let townCount = townFrequency[member.homeTown] {
       townFrequency[member.homeTown] = townCount + 1
   } else {
       townFrequency[member.homeTown] = 1
   }
}

var mostCommonTown = ""
var maxFrequency = 0

for (town , frequency) in townFrequency {
   if frequency > maxFrequency {
       mostCommonTown = town
       maxFrequency = frequency
   }
}
print("En yaygın şehir \(mostCommonTown)")
   
   

var age = [Int]()


for member in memberArray {
   
    age.append(member.age)
   var averageAge = age.reduce(0, +) / age.count
   print("Average : \(averageAge)")
}

var info : [ContactInformation] = []

for member in memberArray {
   
   info.append(member.contactInfo)
   print("email: \(member.contactInfo.email)")
}

var membersByTitle : [String : [NeonAcademyMember]] = [:]

for member in memberArray {
   if membersByTitle[member.title] == nil {
       membersByTitle[member.title] = []
   }
   membersByTitle[member.title]?.append(member)
   
   
}
var membersByTitleInfo  : [ContactInformation] = []

for (_,members) in membersByTitle {
   for member in members {
       membersByTitleInfo.append(member.contactInfo)
   }
   
   
}
for info in membersByTitleInfo {
   print("Telefon Numarası : \(info.phoneNumber)")
}


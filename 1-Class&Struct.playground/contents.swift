import UIKit


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

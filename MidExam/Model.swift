import UIKit

struct Contact {
    let name: String
    let photo: String
    var phoneNumber:PhoneNumber
}

struct PhoneNumber {
    let prefix: String
    let number: String
}

struct Model {
    let contats = [
        Contact(name: "Lupita Nyongo", photo: "lupita_nyongo.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880078787" )),
        
        Contact(name: "Alfre Woodard", photo: "alfre_woodard.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "887773787" )),
        
        Contact(name: "Saorise Ronan", photo: "saorise_ronan.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "883558585" )),
        
        Contact(name: "Renee Zellweger", photo: "renee_zellweger.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "888878787" )),
        
        Contact(name: "Antonio Banderas", photo: "antonio_banderas.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880078787" )),
        
        Contact(name: "Joaquin Phoenix", photo: "joaquin_phoenix.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880066787" )),
        
        Contact(name: "Sam Mendes", photo: "sam_mendes.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "884078787" )),
        
        Contact(name: "Leonardo Di Caprio", photo: "leonardo_di_caprio.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880072287" )),
        
        Contact(name: "scarlett_johansson", photo: "scarlett_johansson.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880045387" )),
        
        Contact(name: "Robert De Niro", photo: "robert_de_niro.jpg" , phoneNumber: PhoneNumber(prefix: "+359", number: "880123456" ))
    ]
    
}

//print(Model().contats)

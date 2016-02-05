/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace. Add a shift variable to indicate how many places to shift.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* Use a `switch` statment
* Use a loop statement
*/

import UIKit



//These commented out functions could replace the ones with the giant switch/cases

//func letterToNumber(letter: Character) -> Int{
//    var count = 0
//    for char in "abcdefghijklmnopqrstuvwxyz".characters {
//        count++
//        if (letter == char){
//            break
//        }
//    }
//    return count
//}
//
//func numberToLetter(number: Int) -> String{
//    var letter = ""
//    var count = 0
//    for char in "abcdefghijklmnopqrstuvwxyz".characters {
//        letter = String(char)
//        if (++count == number){
//            break
//        }
//    }
//    return letter
//}



func letterToNumber(letter: Character) -> Int{
    var number = 0
    switch letter {
    case "a":
        number = 1
    case "b":
        number = 2
    case "c":
        number = 3
    case "d":
        number = 4
    case "e":
        number = 5
    case "f":
        number = 6
    case "g":
        number = 7
    case "h":
        number = 8
    case "i":
        number = 9
    case "j":
        number = 10
    case "k":
        number = 11
    case "l":
        number = 12
    case "m":
        number = 13
    case "n":
        number = 14
    case "o":
        number = 15
    case "p":
        number = 16
    case "q":
        number = 17
    case "r":
        number = 18
    case "s":
        number = 19
    case "t":
        number = 20
    case "u":
        number = 21
    case "v":
        number = 22
    case "w":
        number = 23
    case "x":
        number = 24
    case "y":
        number = 25
    case "z":
        number = 0
    default:
        break
    }
    return number
}


func numberToLetter(number: Int) -> String{
    var letter = ""
    switch number {
    case 1:
        letter = "a"
    case 2:
        letter = "b"
    case 3:
        letter = "c"
    case 4:
        letter = "d"
    case 5:
        letter = "e"
    case 6:
        letter = "f"
    case 7:
        letter = "g"
    case 8:
        letter = "h"
    case 9:
        letter = "i"
    case 10:
        letter = "j"
    case 11:
        letter = "k"
    case 12:
        letter = "l"
    case 13:
        letter = "m"
    case 14:
        letter = "n"
    case 15:
        letter = "o"
    case 16:
        letter = "p"
    case 17:
        letter = "q"
    case 18:
        letter = "r"
    case 19:
        letter = "s"
    case 20:
        letter = "t"
    case 21:
        letter = "u"
    case 22:
        letter = "v"
    case 23:
        letter = "w"
    case 24:
        letter = "x"
    case 25:
        letter = "y"
    case 0:
        letter = "z"
    default:
        break
    }
    return letter
}


let offset = 5
//let message = "The quick brown fox jumps over the lazy dog"
let message = "Nearly all men can stand adversity, but if you want to test a man's character, give him power"
var encrypted = ""
var unencrypted = ""

// Encrypt it
for char in message.characters
{
    if !(String(char).uppercaseString == String(char).lowercaseString) // is it a letter?
    {
        if (String(char) == String(char).lowercaseString) // Lower case?
        {
            encrypted += numberToLetter(((letterToNumber(char)+offset)%26))
        } else { // Upper case?
            encrypted += numberToLetter((letterToNumber(Character(String(char).lowercaseString))+offset)%26).uppercaseString
        }
    } else {
        encrypted += String(char)
    }
}

// Decrypt it
for char in encrypted.characters
{
    if !(String(char).uppercaseString == String(char).lowercaseString)
    {
        if (String(char) == String(char).lowercaseString)
        {
            unencrypted += numberToLetter(((letterToNumber(char)+(26-offset))%26))
        } else {
            unencrypted += numberToLetter((letterToNumber(Character(String(char).lowercaseString))+(26-offset))%26).uppercaseString
        }
    } else {
        unencrypted += String(char)
    }
}


print ("Original:  \(message)")
print ("Encrypted: \(encrypted)")
print ("Decrypted: \(unencrypted)")


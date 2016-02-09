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
        number = 0
    case "b":
        number = 1
    case "c":
        number = 2
    case "d":
        number = 3
    case "e":
        number = 4
    case "f":
        number = 5
    case "g":
        number = 6
    case "h":
        number = 7
    case "i":
        number = 8
    case "j":
        number = 9
    case "k":
        number = 10
    case "l":
        number = 11
    case "m":
        number = 12
    case "n":
        number = 13
    case "o":
        number = 14
    case "p":
        number = 15
    case "q":
        number = 16
    case "r":
        number = 17
    case "s":
        number = 18
    case "t":
        number = 19
    case "u":
        number = 20
    case "v":
        number = 21
    case "w":
        number = 22
    case "x":
        number = 23
    case "y":
        number = 24
    case "z":
        number = 25
    default:
        break
    }
    return number
}


func numberToLetter(number: Int) -> String{
    var letter = ""
    switch number {
    case 0:
        letter = "a"
    case 1:
        letter = "b"
    case 2:
        letter = "c"
    case 3:
        letter = "d"
    case 4:
        letter = "e"
    case 5:
        letter = "f"
    case 6:
        letter = "g"
    case 7:
        letter = "h"
    case 8:
        letter = "i"
    case 9:
        letter = "j"
    case 10:
        letter = "k"
    case 11:
        letter = "l"
    case 12:
        letter = "m"
    case 13:
        letter = "n"
    case 14:
        letter = "o"
    case 15:
        letter = "p"
    case 16:
        letter = "q"
    case 17:
        letter = "r"
    case 18:
        letter = "s"
    case 19:
        letter = "t"
    case 20:
        letter = "u"
    case 21:
        letter = "v"
    case 22:
        letter = "w"
    case 23:
        letter = "x"
    case 24:
        letter = "y"
    case 25:
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


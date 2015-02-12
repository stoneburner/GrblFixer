//
//  StringHelpers.swift
//  GrblFixer
//
//  Created by Alexander Kasimir on 12.02.15.
//  Copyright (c) 2015 Alexander Kasimir. All rights reserved.
//

import Foundation

func truncateNumbersInString(str:String, #fractionalDigits:Int) -> String {
    var ret:String=""
    var inNum=false
    var inSuffix=false
    var numCount=0;
    for character in str {
        switch character {
        case ".":
            if (inNum) {
                inSuffix=true
                numCount = 0
            }
            ret.append(character)
        case "-","1","2","3","4","5","6","7","8","9","0":
            inNum=true
            if (inSuffix && numCount < fractionalDigits) {
                ret.append(character)
            } else if inNum && !inSuffix {
                ret.append(character)
            }
            numCount++
        default:
            inNum=false
            inSuffix=false
            ret.append(character)
        }
    }
    return ret
}


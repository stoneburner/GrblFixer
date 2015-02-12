//
//  main.swift
//  GrblFixer
//
//  Created by Alexander Kasimir on 11.02.15.
//  Copyright (c) 2015 Alexander Kasimir. All rights reserved.
//

import Foundation

println(C_ARGC)

if (C_ARGC < 2) {
    println("Usage grblfixer file > output");
} else {
    let filename = String.fromCString(C_ARGV[1])
    if let aStreamReader = StreamReader(path: filename!) {
        while let line = aStreamReader.nextLine() {
            println(truncateNumbersInString(line,fractionalDigits:3))
        }
    } else {
        println("cannot open file \(filename)")
    }
}


//
//  Array2D.swift
//  SwiftTetris
//
//  Created by gregg on 9/1/14.
//  Copyright (c) 2014 Gregg. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(column:Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue){
            array[(row * columns) + column] = newValue
        }
    }
    
    
}
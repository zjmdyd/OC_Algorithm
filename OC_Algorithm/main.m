//
//  main.m
//  OC_Algorithm
//
//  Created by YunTu on 15/8/31.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringAlgorithm.h"
#import "MathAlgorithm.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\n\n字符串算法");
        NSLog(@"%@", [StringAlgorithm getFormateStringWithOriginalString:@"10" andFormattedLength:4]);
        NSLog(@"%@", [StringAlgorithm ToHex:256]);
        
        NSLog(@"\n\n数学算法");
        
        NSLog(@"%f", [MathAlgorithm getMovingAverage:@[@1, @2, @3, @4, @5] andMovingWindowLength:3]);
    }
    
    return 0;
}


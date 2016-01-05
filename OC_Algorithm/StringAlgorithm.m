//
//  StringAlgorithm.m
//  OC_Algorithm
//
//  Created by YunTu on 15/9/2.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "StringAlgorithm.h"

@implementation StringAlgorithm

+ (NSString *)getFormateStringWithOriginalString:(NSString *)originalString andFormattedLength:(NSInteger)length {
    while (originalString.length < length) {
       originalString = [@"0" stringByAppendingString:originalString];
    }
    
    return originalString;
}

+ (NSString *)ToHex:(uint16_t)tmpid {
    NSString *nLetterValue;
    NSString *str = @"";
    uint16_t ttmpig;
    for (int i = 0; i < 9; i++) {
        ttmpig = tmpid % 16; // 256 % 16 = 0;  --> 0 --> 0
        tmpid = tmpid / 16;  // 256 / 16 = 16; --> 1 --> 0
        switch (ttmpig) {
            case 10:
                nLetterValue = @"A"; break;
            case 11:
                nLetterValue = @"B"; break;
            case 12:
                nLetterValue = @"C"; break;
            case 13:
                nLetterValue = @"D"; break;
            case 14:
                nLetterValue = @"E"; break;
            case 15:
                nLetterValue = @"F"; break;
            default:
                nLetterValue = [NSString stringWithFormat:@"%u", ttmpig];    //0 ----> 0 ----> 1
        }
        str = [nLetterValue stringByAppendingString:str];   // 0 ----> 00 ----> 100
        if (tmpid == 0) {
            break;
        }
    }
    if (str.length < 4) {
        return [StringAlgorithm getFormateStringWithOriginalString:str andFormattedLength:4];
    }else {
        return str;
    }
    return nil;
}

@end

//
//  StringAlgorithm.h
//  OC_Algorithm
//
//  Created by YunTu on 15/9/2.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringAlgorithm : NSObject
/**
 *  字符串前填充0算法
 *
 *  @param originalString : 源字符串    length : 格式化字符串的长度
 *
 *  @return 指定长度的格式化字符串
 *  eg: 10 ----> 0010 / 100 ----> 01000
 */
+ (NSString *)getFormateStringWithOriginalString:(NSString *)originalString andFormattedLength:(NSInteger)length;

/**
    将十进制转化为十六进制
 */
+ (NSString *)ToHex:(uint16_t)tmpid;

@end

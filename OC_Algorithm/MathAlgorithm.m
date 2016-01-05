//
//  MathAlgorithm.m
//  OC_Algorithm
//
//  Created by YunTu on 15/9/6.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "MathAlgorithm.h"

@implementation MathAlgorithm

/*
 滑动平均 moving average
 
 1、2、3、4、5共5个数，计算过程为：（1+2+3）/3=2，（2+3+4）/3=3，（3+4+5）/3=4，则3年滑动平均值=（2+3+4）/3=3
 */
+ (CGFloat)getMovingAverage:(NSArray *)valueAry andMovingWindowLength:(NSInteger)length {
    NSInteger num = valueAry.count - length + 1;
    
    CGFloat averageSum = 0.0;
    for (int i = 0; i < num; i++) {
        CGFloat stepSum = 0.0;
        for (int j = i; j < length + i; j++) {
            stepSum += [valueAry[j] floatValue];
        }
        averageSum += (stepSum/length);
    }
    return averageSum / length;
}

@end

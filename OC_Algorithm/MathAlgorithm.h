//
//  MathAlgorithm.h
//  OC_Algorithm
//
//  Created by YunTu on 15/9/6.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MathAlgorithm : NSObject

/**
 *  滑动平均(moving average)
 *
 *  @param valueAry : 数据源  length ： 滑动窗口的长度
 *
 *  @return 滑动平均值
 *  eg : 1、2、3、4、5共5个数，计算过程为：（1+2+3）/3=2，（2+3+4）/3=3，（3+4+5）/3=4，则3年滑动平均值=（2+3+4）/3=3
 */
+ (CGFloat)getMovingAverage:(NSArray *)valueAry andMovingWindowLength:(NSInteger)length;

@end

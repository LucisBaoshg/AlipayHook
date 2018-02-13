//
//  APStepInfo.h
//  AlipayDylib
//
//  Created by baoshg on 2018/2/12.
//  Copyright © 2018年 baoshg. All rights reserved.
//


#import <Foundation/NSObject.h>
@interface APStepInfo : NSObject <NSCopying>

@property(retain, nonatomic) NSDictionary *extraInfo; // @synthesize extraInfo=_extraInfo;
@property(nonatomic) long long source; // @synthesize source=_source;
@property(retain, nonatomic) NSDate *endDate; // @synthesize endDate=_endDate;
@property(retain, nonatomic) NSDate *startDate; // @synthesize startDate=_startDate;
@property(nonatomic) long long numberOfSteps; // @synthesize numberOfSteps=_numberOfSteps;

@end

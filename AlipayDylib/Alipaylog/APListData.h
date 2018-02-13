//
//  APListData.h
//  GameTodayNews
//
//  Created by cardlan_yuhuajun on 2017/11/14.
//  Copyright © 2017年 hua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APStepInfo.h"

typedef void(^FinishedBlock)(void);

typedef void(^StepBlock)(APStepInfo *stepInfo, NSString *str, NSError *error);

@interface APListData : NSObject

+(id)sharedInstance;

@property(nonatomic, assign) BOOL loadByClicked;
@property(nonatomic,strong)id jsBridge;
@property(atomic,strong) NSMutableDictionary *topBubblesDic;
@property(nonatomic, strong) NSMutableArray *arrFriendRanking;
@property(nonatomic, strong) NSMutableArray *arrCanCollectEnergy;

@property(nonatomic, copy) FinishedBlock finishedBlock;

- (void)handleResponse:(StepBlock)response;

@end

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "APListData.h"
#import "PSDJsBridge.h"



@interface DH5WebViewController : UIViewController
{
    
}

+(NSString*)getNumberRandom:(int)count;

+(void)moreQueryEnergyRanking:(id)mbrige startPoint:(NSString *)startPoint;
+(void)firstQueryEnergyRanking:(id)mbrige;
+(void)getTopUserBubbles:(id)mbrige userId:(NSString*)userID;
+(void)collectBubbles:(id)mbrige bubbleId:(NSString*)bID userId :(NSString*)userID;
+(void)collectTopBub;


@property(readonly, nonatomic) UIWebView *h5WebView;
@property(readonly, nonatomic) UIWebView *webView;
@property(retain, nonatomic) UILabel *webviewDomainLabel;



+ (void)handleClicked:(FinishedBlock)finishedBlock;

+ (void)handleFriendRankingResponse:(NSDictionary *)dic;

+ (void)handleBubblesResponse:(NSArray *)bubbles;

@end


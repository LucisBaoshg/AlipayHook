// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "DH5WebViewController.h"
#import "APListData.h"
#import "PSDJsBridge.h"
#import "AUToast.h"
#import "H5WebViewController.h"
#import "APStepInfo.h"

%hook ClassName

+ (id)sharedInstance
{
	%log;

	return %orig;
}

- (void)messageWithNoReturnAndOneArgument:(id)originalArgument
{
	%log;

	%orig(originalArgument);
	
	// or, for exmaple, you could use a custom value instead of the original argument: %orig(customValue);
}

- (id)messageWithReturnAndNoArguments
{
	%log;

	id originalReturnOfMessage = %orig;
	
	// for example, you could modify the original return value before returning it: [SomeOtherClass doSomethingToThisObject:originalReturnOfMessage];

	return originalReturnOfMessage;
}

%end


%hook PSDJsBridge
+ (id)bridge4Page:(id)arg1 contentView:(id)arg2 webViewDelegate:(id)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)bridge4Page:(id)arg1 contentView:(id)arg2 pageParam:(id)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (void)enableLogging { %log; %orig; }
- (void)setIsTimeout:(_Bool )isTimeout { %log; %orig; }
- (_Bool )isTimeout { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setIsFailToLoad:(_Bool )isFailToLoad { %log; %orig; }
- (_Bool )isFailToLoad { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setLoadFinishedDate:(NSDate *)loadFinishedDate { %log; %orig; }
- (NSDate *)loadFinishedDate { %log; NSDate * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setIsBridgeReady:(_Bool )isBridgeReady { %log; %orig; }
- (_Bool )isBridgeReady { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }


- (void)setStartupMessageQueue:(NSMutableArray *)startupMessageQueue { %log; %orig; }
- (NSMutableArray *)startupMessageQueue { %log; NSMutableArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setResponseCallbacks:(NSMutableDictionary *)responseCallbacks { %log; %orig; }
- (NSMutableDictionary *)responseCallbacks { %log; NSMutableDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }

- (void)setUniqueId:(int )uniqueId { %log; %orig; }
- (int )uniqueId { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)wkLoadFinisd { %log; %orig; }
- (void)webView:(id)arg1 runJavaScriptTextInputPanelWithPrompt:(id)arg2 defaultText:(id)arg3 initiatedByFrame:(id)arg4 completionHandler:(id)arg5 { %log; %orig; }
- (void)webView:(id)arg1 runJavaScriptConfirmPanelWithMessage:(id)arg2 initiatedByFrame:(id)arg3 completionHandler:(id)arg4 { %log; %orig; }
- (void)webView:(id)arg1 runJavaScriptAlertPanelWithMessage:(id)arg2 initiatedByFrame:(id)arg3 completionHandler:(id)arg4 { %log; %orig; }
- (id)getPanelTitleWithType:(int)arg1 webView:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)javaScriptPanelTitleWithWebView:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)addDelayTask:(id)arg1 { %log; %orig; }
- (_Bool)isCurrentVCVisible { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isCurrentVCAnimationFinished { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)webViewDidClose:(id)arg1 { %log; %orig; }
- (id)webView:(id)arg1 createWebViewWithConfiguration:(id)arg2 forNavigationAction:(id)arg3 windowFeatures:(id)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)webViewWebContentProcessDidTerminate:(id)arg1 { %log; %orig; }
- (void)webView:(id)arg1 didReceiveAuthenticationChallenge:(id)arg2 completionHandler:(id)arg3 { %log; %orig; }
- (void)webView:(id)arg1 didFailNavigation:(id)arg2 withError:(id)arg3 { %log; %orig; }
- (void)webView:(id)arg1 didFinishNavigation:(id)arg2 { %log; %orig; }
- (void)webView:(id)arg1 didCommitNavigation:(id)arg2 { %log; %orig; }
- (void)webView:(id)arg1 didFailProvisionalNavigation:(id)arg2 withError:(id)arg3 { %log; %orig; }
- (void)webView:(id)arg1 didReceiveServerRedirectForProvisionalNavigation:(id)arg2 { %log; %orig; }
- (void)webView:(id)arg1 didStartProvisionalNavigation:(id)arg2 { %log; %orig; }
- (void)webView:(id)arg1 decidePolicyForNavigationResponse:(id)arg2 decisionHandler:(id)arg3 { %log; %orig; }
- (void)webView:(id)arg1 decidePolicyForNavigationAction:(id)arg2 decisionHandler:(id)arg3 { %log; %orig; }
- (void)reset { %log; %orig; }
- (void)doLoadJSBridgeFileWithDynamicInjectJsCodeSnippets:(id)arg1 { %log; %orig; }
- (void)loadJSBridgeFileWithDynamicInjectJsCodeSnippets:(id)arg1 { %log; %orig; }
- (void)loadJS:(id)arg1 { %log; %orig; }
- (void)callJsApi:(id)arg1 url:(id)arg2 data:(id)arg3 responseCallback:(id)arg4 { %log; %orig; }
- (void)callHandler:(id)arg1 data:(id)arg2 responseCallback:(id)arg3 { %log; %orig; }
- (void)callHandler:(id)arg1 data:(id)arg2 { %log; %orig; }
- (void)callHandler:(id)arg1 { %log; %orig; }
- (void)send:(id)arg1 responseCallback:(id)arg2 { %log; %orig; }
- (void)send:(id)arg1 { %log; %orig; }
- (void)webView:(id)arg1 didCreateJavaScriptContext:(id)arg2 { %log; %orig; }
- (void)webView:(id)arg1 didFailLoadWithError:(id)arg2 { %log; %orig; }
- (void)webViewDidFinishLoad:(id)arg1 { %log; %orig; }
- (void)updateBridgeReadyStatus:(id)arg1 { %log; %orig; }
- (void)webViewDidStartLoad:(id)arg1 { %log; %orig; }
- (_Bool)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(long long)arg3 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)flushResponseCallbacks { %log; %orig; }
- (void)loadFinished { %log; %orig; }
- (void)_log:(id)arg1 json:(id)arg2 { %log; %orig; }
- (id)_deserializeMessageJSON:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)_serializeMessage:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)transformResponseData:(id)arg1
{
    %log;
    id r = %orig;
    
    APListData *jdata=[APListData sharedInstance];
    jdata.jsBridge=self;
    if(arg1!=nil&&[arg1 isKindOfClass:[NSDictionary class]])
    {
        //获取FriendRanking
        NSDictionary *dic=arg1;
        id topListvalue=[dic objectForKey:@"friendRanking"];
        if(topListvalue){
            
            [DH5WebViewController handleFriendRankingResponse:dic];
        }
        //获取用户的能量的ID
        id userbubbles = [dic objectForKey:@"bubbles"];
        
        if(userbubbles){
            if(![userbubbles isKindOfClass:[NSArray class]]||[userbubbles count]<=0)
            return r;
            
            [DH5WebViewController handleBubblesResponse:userbubbles];
        }
    }
    return r;
}

- (void)_doFlushMessageQueue:(id)arg1 url:(id)arg2
{
    
    %log;
    
    %orig;
}
- (void)_flushMessageQueue { %log; %orig; }
- (void)_flushMessageQueueWithMessage:(id)arg1 url:(id)arg2 { %log; %orig; }
- (void)_doFlushH5ReportMessageQueue:(id)arg1 url:(id)arg2 { %log; %orig; }
- (void)_flushH5ReportMessageQueue { %log; %orig; }
- (void)_doFlushMonitorMessageQueue:(id)arg1 url:(id)arg2 { %log; %orig; }
- (void)_flushMonitorMessageQueue { %log; %orig; }
- (void)_dispatchMessage:(id)arg1 { %log; %orig; }
- (void)_queueMessage:(id)arg1 { %log; %orig; }
- (void)_sendData:(id)arg1 responseCallback:(id)arg2 handlerName:(id)arg3 { %log; %orig; }
- (void)doSendData:(id)arg1 responseCallback:(id)arg2 handlerName:(id)arg3 { %log; %orig; }
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4 { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end


%hook H5RPCCaller
- (void)callRPC:(id)arg1 completeBlock:(id)arg2
{
    %log;
    
    %orig;
}
%end

/*
%hook APStepInfo

- (void)setNumberOfSteps:(long long)numberOfSteps{
    if(numberOfSteps != 0){
        numberOfSteps = 19080;
    }
    %orig;
}

- (long long)numberOfSteps{
    return 19080;
}

%end
 
 */


%hook H5WebViewController
- (void)viewDidLoad
{
    %orig;
    NSLog(@"viewDidLoad");
    APListData *jdata=[APListData sharedInstance];
    jdata.topBubblesDic=[NSMutableDictionary dictionaryWithCapacity:10];
    
    
}
- (void)viewDidAppear:(_Bool)arg1
{
    %orig;
    UILabel *showlb=[self webviewDomainLabel];
    NSLog(@"viewDidAppear");
    if ([showlb.text rangeOfString:@"60000002.h5app.alipay.com"].location != NSNotFound) {
        NSLog(@"一键收取 add");
        UIButton *btnAdd=[[UIButton alloc]initWithFrame:CGRectMake(0, 250, 80, 40)];
        [btnAdd setTitle:@"一键收取" forState:UIControlStateNormal];
        btnAdd.titleLabel.font = [UIFont systemFontOfSize: 15.0];
        [btnAdd addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnAdd setBackgroundColor:[UIColor orangeColor]];
        
        UIButton *btnTest=[[UIButton alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width-80, 210, 80, 40)];
        [btnTest setTitle:@"Test" forState:UIControlStateNormal];
        btnTest.titleLabel.font = [UIFont systemFontOfSize: 15.0];
        //[btnTest addTarget:self action:@selector(collectTopBub) forControlEvents:UIControlEventTouchUpInside];
        [btnTest setBackgroundColor:[UIColor orangeColor]];
        
        UIWebView *show=[self h5WebView];
        [show addSubview:btnAdd];
        [show bringSubviewToFront:btnAdd];
        //  [show addSubview:btnTest];
    }
    
    
}


%new
- (void)clickBtn
{
    AUToast *progressView=[%c(AUToast) presentToastWithText:@"收取能量中" logTag:@"1"];
    UIWebView *show= [self h5WebView];
   
    [DH5WebViewController handleClicked:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [DH5WebViewController collectTopBub];
            [progressView dismissToast];
            AUToast *showSucessView=[%c(AUToast) presentModelToastWithin:show text:@"前10的用户全部收取成功,自行刷新页面" logTag:@"2"];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [showSucessView dismissToast];
            });
        });
    }];
}
%end


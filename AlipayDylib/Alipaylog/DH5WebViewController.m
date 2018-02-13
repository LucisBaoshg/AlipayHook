
#import "DH5WebViewController.h"

@interface DH5WebViewController ()

@end

@implementation DH5WebViewController


+(NSString*)getNumberRandom:(int)count
{
    NSString *strRandom = @"";
    
    for(int i=0; i<count; i++)
    {
        strRandom = [ strRandom stringByAppendingFormat:@"%i",(arc4random() % 9)];
    }
    return strRandom;
}

+(void)collectBubbles:(id)mbrige bubbleId:(NSString*)bID userId :(NSString*)userID
{
    
    long timems=[[NSDate  date] timeIntervalSince1970]*1000;
    NSString *timeStamp = [NSString stringWithFormat:@"%ld", timems];
    NSString *randNum=[DH5WebViewController getNumberRandom:16];
    NSString *arg1=[NSString stringWithFormat:@"[{\"handlerName\":\"remoteLog\",\"data\":{\"seedId\":\"ANTFOREST-BEHAVIOR-CLICK-COLLECT\",\"param1\":\"shareBiz=none^bubbleId=%@^actionUserId=%@^type=behavior^currentTimestamp=%@\",\"param2\":\"monitor_type=clicked^remoteType=info^pageName=home.html^pageState=friend%@_enterhomeOff\",\"bizType\":\"antForest\"},\"callbackId\":\"remoteLog_15105601282940.%@\"},{\"handlerName\":\"rpc\",\"data\":{\"operationType\":\"alipay.antmember.forest.h5.collectEnergy\",\"requestData\":[{\"userId\":%@,\"bubbleIds\":[%@],\"av\":\"5\",\"ct\":\"ios\"}],\"disableLimitView\":true},\"callbackId\":\"rpc_15105601282960.%@\"}] ",bID,userID,timeStamp,userID,randNum,userID,bID,randNum];
    NSString *arg2=[NSString stringWithFormat:@"https://60000002.h5app.alipay.com/app/src/home.html?userId=%@",userID];
    PSDJsBridge *jsB=mbrige;
    [jsB _doFlushMessageQueue:arg1 url:arg2];
}


//[{"handlerName":"remoteLog","data":{"seedId":"ANTFOREST-PAGE-READY-listRank","param1":"shareBiz=none^type=behavior^currentTimestamp=1518401297388","param2":"monitor_type=openPage^remoteType=info","bizType":"antForest"},"callbackId":"remoteLog_15184012973900.9991841856352102"},{"handlerName":"rpc","data":{"operationType":"alipay.antmember.forest.h5.queryEnergyRanking","requestData":[{"startPoint":"","pageSize":20,"av":"5","ct":"ios"}],"disableLimitView":true},"callbackId":"rpc_15184012973930.9145784648143411"}]

//url:https://60000002.h5app.alipay.com/app/src/listRank.html]

//[{"handlerName":"remoteLog","data":{"seedId":"ANTFOREST-BEHAVIOR-MORE-RANKLIST","param1":"shareBiz=none^action=more^point=21^pageSize=20^type=behavior^currentTimestamp=1518401905929","param2":"monitor_type=clicked^remoteType=info^pageName=listRank.html^pageState=normal","bizType":"antForest"},"callbackId":"remoteLog_15184019059290.1113093867270446"},{"handlerName":"rpc","data":{"operationType":"alipay.antmember.forest.h5.queryEnergyRanking","requestData":[{"startPoint":"21","pageSize":20,"av":"5","ct":"ios"}],"disableLimitView":true},"callbackId":"rpc_15184019059290.050550073249969074"}]
//url:https://60000002.h5app.alipay.com/app/src/listRank.html]

+(void)firstQueryEnergyRanking:(id)mbrige{
    long timems=[[NSDate  date] timeIntervalSince1970]*1000;
    NSString *timeStamp = [NSString stringWithFormat:@"%ld", timems];
    NSString *randNum=[DH5WebViewController getNumberRandom:16];
    NSString *arg1=[NSString stringWithFormat:@"[{\"handlerName\":\"remoteLog\",\"data\":{\"seedId\":\"ANTFOREST-PAGE-READY-listRank\",\"param1\":\"shareBiz=none^type=behavior^currentTimestamp=%@\",\"param2\":\"monitor_type=openPage^remoteType=info\",\"bizType\":\"antForest\"},\"callbackId\":\"remoteLog_15184012973900.%@\"},{\"handlerName\":\"rpc\",\"data\":{\"operationType\":\"alipay.antmember.forest.h5.queryEnergyRanking\",\"requestData\":[{\"startPoint\":\"\",\"pageSize\":\"20\",\"av\":\"5\",\"ct\":\"ios\"}],\"disableLimitView\":true},\"callbackId\":\"rpc_15105601282960.%@\"}] ",timeStamp,randNum,randNum];
    NSString *arg2 = @"https://60000002.h5app.alipay.com/app/src/listRank.html";
    PSDJsBridge *jsB=mbrige;
    [jsB _doFlushMessageQueue:arg1 url:arg2];
}

+(void)moreQueryEnergyRanking:(id)mbrige startPoint:(NSString *)startPoint{
    long timems=[[NSDate  date] timeIntervalSince1970]*1000;
    NSString *timeStamp = [NSString stringWithFormat:@"%ld", timems];
    NSString *randNum=[DH5WebViewController getNumberRandom:16];
    NSString *arg1=[NSString stringWithFormat:@"[{\"handlerName\":\"remoteLog\",\"data\":{\"seedId\":\"ANTFOREST-BEHAVIOR-MORE-RANKLIST\",\"param1\":\"shareBiz=none^action=more^point=%@^pageSize=20^type=behavior^currentTimestamp=%@\",\"param2\":\"monitor_type=clicked^remoteType=info^pageName=listRank.html\",\"bizType\":\"antForest\"},\"callbackId\":\"remoteLog_15184012973900.%@\"},{\"handlerName\":\"rpc\",\"data\":{\"operationType\":\"alipay.antmember.forest.h5.queryEnergyRanking\",\"requestData\":[{\"startPoint\":%@,\"pageSize\":\"20\",\"av\":\"5\",\"ct\":\"ios\"}],\"disableLimitView\":true},\"callbackId\":\"rpc_15105601282960.%@\"}] ",startPoint,timeStamp,randNum,startPoint,randNum];
    NSString *arg2 = @"https://60000002.h5app.alipay.com/app/src/listRank.html";
    PSDJsBridge *jsB=mbrige;
    [jsB _doFlushMessageQueue:arg1 url:arg2];
}


+(void)getTopUserBubbles:(id)mbrige userId:(NSString*)userID
{
    long timems=[[NSDate  date] timeIntervalSince1970]*1000;
    NSString *timeStamp = [NSString stringWithFormat:@"%ld", timems];
    NSString *randNum = [DH5WebViewController getNumberRandom:16];
    NSString *arg1=[NSString stringWithFormat:@"[{\"handlerName\":\"remoteLog\",\"data\":{\"seedId\":\"ANTFOREST-PAGE-READY-home\",\"param1\":\"shareBiz=none^type=behavior^currentTimestamp=1510628822616\",\"param2\":\"monitor_type=openPage^remoteType=info\",\"bizType\":\"antForest\"},\"callbackId\":\"remoteLog_15106288226220.36025243042968214\"},{\"handlerName\":\"getSystemInfo\",\"data\":{},\"callbackId\":\"getSystemInfo_15106288226230.7224089596420527\"},{\"handlerName\":\"hideOptionMenu\",\"data\":{},\"callbackId\":\"hideOptionMenu_15106288226230.7351219072006643\"},{\"handlerName\":\"setToolbarMenu\",\"data\":{\"menus\":[],\"override\":true},\"callbackId\":\"setToolbarMenu_15106288226230.6259752095211297\"},{\"handlerName\":\"setGestureBack\",\"data\":{\"val\":true},\"callbackId\":\"setGestureBack_15106288226230.2139696276281029\"},{\"handlerName\":\"remoteLog\",\"data\":{\"seedId\":\"ANTFOREST-H5_PAGE_SET_PAGE_NAME\",\"param1\":\"shareBiz=none^type=behavior^currentTimestamp=%@\",\"param2\":\"monitor_type=clicked^remoteType=info^pageName=home.html\",\"bizType\":\"antForest\"},\"callbackId\":\"remoteLog_15106288226260.2301180271897465\"},{\"handlerName\":\"addNotifyListener\",\"data\":{\"name\":\"NEBULANOTIFY_AFRefresh\"},\"callbackId\":\"addNotifyListener_15106288226260.7617499728221446\"},{\"handlerName\":\"rpc\",\"data\":{\"operationType\":\"alipay.antmember.forest.h5.queryNextAction\",\"requestData\":[{\"userId\":\"%@\",\"av\":\"5\",\"ct\":\"ios\"}],\"disableLimitView\":true},\"callbackId\":\"rpc_15106288226260.%@\"}]",timeStamp,userID,randNum];
    NSString *arg2=[NSString stringWithFormat:@"https://60000002.h5app.alipay.com/app/src/home.html?userId=%@",userID];
    PSDJsBridge *jsB=mbrige;
    [jsB _doFlushMessageQueue:arg1 url:arg2];
}


+(void)collectTopBub
{
    APListData *jdata=[APListData sharedInstance];
    NSMutableDictionary *copyDic=[jdata.topBubblesDic mutableCopy];
//    NSLog(@"开始一个个朋友采集:%@",copyDic);
    
    for (id key in copyDic) {
        id obj = [copyDic objectForKey:key];
        
//        NSLog(@"=========:%@=====:%@",key,obj);
        for(NSDictionary *eachbubble in obj){
            NSString *collectStatus=[eachbubble objectForKey:@"collectStatus"];
            //可用的就摘取
            if([collectStatus isEqualToString:@"AVAILABLE"]){
                NSString *bID=[eachbubble objectForKey:@"id"];
                NSString *uID=[eachbubble objectForKey:@"userId"];
                [DH5WebViewController collectBubbles:jdata.jsBridge bubbleId:bID userId:uID];
                NSLog(@"我开始收能量了--:%@",bID);
                
            }
        }
    }
    
}

+ (void)handleClicked:(FinishedBlock)finishedBlock{    
    APListData *jdata = [APListData sharedInstance];
    jdata.loadByClicked = true;
    jdata.arrFriendRanking = [NSMutableArray array];
    [DH5WebViewController firstQueryEnergyRanking:jdata.jsBridge];
    jdata.finishedBlock = finishedBlock;    
}

+ (void)handleFriendRankingResponse:(NSDictionary *)dic{
    
    APListData *jdata = [APListData sharedInstance];
    if(jdata.loadByClicked == false){
        return;
    }
    
    BOOL hasMore = [[dic objectForKey:@"hasMore"] boolValue];
    id friendRanking = [dic objectForKey:@"friendRanking"];
    if([friendRanking isKindOfClass:[NSArray class]]){
        [jdata.arrFriendRanking addObjectsFromArray:(NSArray *)friendRanking];
    }
    if(hasMore){
        NSString *nextStartPoint = [dic objectForKey:@"nextStartPoint"];
        [DH5WebViewController moreQueryEnergyRanking:jdata.jsBridge startPoint:nextStartPoint];
    }else{
        //朋友列表拉取完成
        int count = 1;
        for(NSDictionary *key in jdata.arrFriendRanking)
        {
            NSDictionary *dic2=key;
            NSString *userID = [dic2 objectForKey:@"userId"];
            [DH5WebViewController getTopUserBubbles:jdata.jsBridge userId:userID];
            NSLog(@"这是从第%d个用户获取能量",count);
            if(count == jdata.arrFriendRanking.count){
                [DH5WebViewController collectTopBub];
            }else{
                count++;
            }
        }
    }
}

+ (void)handleBubblesResponse:(NSArray *)bubbles{
    APListData *jdata = [APListData sharedInstance];
    if(jdata.loadByClicked == false){
        return;
    }
    NSDictionary *dicbulles = [bubbles objectAtIndex:0];
    NSString *userID = [dicbulles objectForKey:@"userId"];
    [jdata.topBubblesDic setObject:bubbles forKey:userID];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:4];
        if(jdata.finishedBlock != nil){
            jdata.loadByClicked = false;
            jdata.finishedBlock();
        }
    });

    
}

@end


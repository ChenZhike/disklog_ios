//
//  DiskLog.m
//  BackSpeak
//
//  Created by czk on 2019/10/28.
//  Copyright © 2019 czk. All rights reserved.
//

#import "DiskLog.h"
static DiskLog*sharedDiskLog=nil;
@implementation DiskLog
+(DiskLog*)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDiskLog=[[DiskLog alloc]init];
    });
    return sharedDiskLog;
}
NSString *getCurrentLogTime()
{
    NSDateFormatter *formate = [[NSDateFormatter alloc] init];
    NSString *formateString = @"yyyy年MM月dd日HH:mm:ss";
    [formate setDateFormat:formateString ];
    return [formate stringFromDate:[NSDate date]];
}
- (void)write:(NSString*)str;
{
    NSString*old_content=[self nowContent];
    NSString*now_content=[NSString stringWithFormat:@"日志  %@   %@",getCurrentLogTime(),str];
    NSString*target_content=[old_content stringByAppendingString:now_content];
    NSString*disk_path=[[self class]disk_path];
    [target_content writeToFile:disk_path atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
- (void)cleanContent
{
    NSString*target_content=@"";
    NSString*disk_path=[[self class]disk_path];
    [target_content writeToFile:disk_path atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
- (NSString*)nowContent
{
    NSString*file=[[self class]disk_path];
    NSString*result=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
    return result;
}
+(NSString*)disk_path
{
    NSString*result=[NSString stringWithFormat:@"%@/Documents/log.txt",NSHomeDirectory()];
    if (![[NSFileManager defaultManager]fileExistsAtPath:result]) {
        [[NSFileManager defaultManager]createFileAtPath:result contents:nil attributes:nil];
    }
    return result;
}
+ (void)write:(NSString*)str
{
    [[self sharedInstance]write:str];
}
+ (NSString*)nowContent
{
return [[self sharedInstance]nowContent];
}
+ (void)cleanContent
{
 [[self sharedInstance]cleanContent];
}
@end

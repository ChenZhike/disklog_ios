//
//  DiskLog.h
//  BackSpeak
//
//  Created by czk on 2019/10/28.
//  Copyright © 2019 czk. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiskLog : NSObject
+(DiskLog*)sharedInstance;
- (void)write:(NSString*)str;
- (NSString*)nowContent;
- (void)cleanContent;

+ (void)write:(NSString*)str;
+ (NSString*)nowContent;
+ (void)cleanContent;

@end

NS_ASSUME_NONNULL_END

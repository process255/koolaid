//
//  KAVersionChecker.h
//  KoolAid
//
//  Created by Sean on 5/21/13.
//  Copyright (c) 2013 process255. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KAVersionChecker : NSObject

+ (BOOL)isFreshInstall;

+ (BOOL)isFirstVersionContainingChecker;

@end

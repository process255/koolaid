//
//  KAVersionChecker.m
//  KoolAid
//
//  Created by Sean on 5/21/13.
//  Copyright (c) 2013 process255. All rights reserved.
//

#import "KAVersionChecker.h"

#define kCFBundleVersion @"CFBundleVersion"
#define kPrevVersion @"prevVersion"

@implementation KAVersionChecker


+ (BOOL)isFreshInstall
{
	// assumes CFBundleVersion is an integer that increases with each build or release
	NSString *currentVersion = (NSString*)[[NSBundle mainBundle] objectForInfoDictionaryKey:kCFBundleVersion];
	NSString *prevVersion = (NSString *)[[NSUserDefaults standardUserDefaults] valueForKey:kPrevVersion];
	
	if (prevVersion == nil)
	{
		[[NSUserDefaults standardUserDefaults] setValue:currentVersion forKey:kPrevVersion];
		[[NSUserDefaults standardUserDefaults] synchronize];
		return YES;
	}
	else if ([prevVersion intValue] < [currentVersion intValue])
	{
		[[NSUserDefaults standardUserDefaults] setValue:currentVersion forKey:kPrevVersion];
		[[NSUserDefaults standardUserDefaults] synchronize];
		return NO;
	}
	return YES;
}

+ (BOOL)isFirstVersionContainingChecker
{
	NSString *prevVersion = (NSString *)[[NSUserDefaults standardUserDefaults] valueForKey:kPrevVersion];
	return prevVersion == nil;
}

@end

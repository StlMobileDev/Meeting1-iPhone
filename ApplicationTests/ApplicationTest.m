//
//  ApplicationTest.m
//  Meeting1
//
//  Created by Heath Borders on 1/27/10.
//  Copyright 2010 Asynchrony Solutions, Inc.. All rights reserved.
//

#import "ApplicationTest.h"


@implementation ApplicationTest

- (void) testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    STFail(@"Failed on purpose to show what a failure looks like");
}

@end

//
//  Meeting1AppDelegate.m
//  Meeting1
//
//  Created by Heath Borders on 1/25/10.
//  Copyright Asynchrony Solutions, Inc. 2010. All rights reserved.
//

#import "Meeting1AppDelegate.h"

@interface Meeting1AppDelegate()

@property (nonatomic, retain) CurrentLocationViewController *currentLocationViewController;

@end


@implementation Meeting1AppDelegate

@synthesize window  = _window;
@synthesize currentLocationViewController = _currentLocationViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	self.currentLocationViewController = [[[CurrentLocationViewController alloc] init] autorelease];
	[self.window addSubview:self.currentLocationViewController.view];
	
    // Override point for customization after application launch
    [self.window makeKeyAndVisible];
}


- (void)dealloc {
    self.window = nil;
	self.currentLocationViewController = nil;
	
    [super dealloc];
}


@end

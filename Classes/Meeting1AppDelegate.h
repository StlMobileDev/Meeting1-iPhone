//
//  Meeting1AppDelegate.h
//  Meeting1
//
//  Created by Heath Borders on 1/25/10.
//  Copyright Asynchrony Solutions, Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentLocationViewController.h"

@interface Meeting1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *_window;
	CurrentLocationViewController *_currentLocationViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


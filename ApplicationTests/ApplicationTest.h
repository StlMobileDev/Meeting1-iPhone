//
//  ApplicationTest.h
//  Meeting1
//
//  Created by Heath Borders on 1/27/10.
//  Copyright 2010 Asynchrony Solutions, Inc.. All rights reserved.
//
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

//  Application unit tests contain unit test code that must be injected into an application to run correctly.
//  Define USE_APPLICATION_UNIT_TEST to 0 if the unit test code is designed to be linked into an independent test executable.

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
//#import "application_headers" as required


@interface ApplicationTest : SenTestCase {

}

- (void) testAppDelegate;       // simple test on application

@end

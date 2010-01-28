//
//  UnitTest.m
//  Meeting1
//
//  Created by Heath Borders on 1/27/10.
//  Copyright 2010 Asynchrony Solutions, Inc.. All rights reserved.
//

#import "UnitTest.h"


@implementation UnitTest

- (void) testMath {
    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
    STFail(@"Failed on purpose to show what a failure looks like");
}

@end

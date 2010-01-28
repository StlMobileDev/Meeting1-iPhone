#import "GTMSenTestCase.h"

@interface GTMUnitTest : GTMTestCase
{
	
}

@end


@implementation GTMUnitTest

- (void) testThatShowsFailure {
	STFail(@"Failed on purpose to show failure");
}

@end

//
//  CurrentLocationViewController.m
//  Meeting1
//
//  Created by Heath Borders on 1/27/10.
//  Copyright 2010 Asynchrony Solutions, Inc.. All rights reserved.
//

#import "CurrentLocationViewController.h"

@interface CurrentLocationViewController()

@property (nonatomic, retain) CLLocationManager *locationManager;

@end

@implementation CurrentLocationViewController

@synthesize locationManager = _locationManager;
@synthesize latitudeLabel = _latitudeLabel;
@synthesize longitudeLabel = _longitudeLabel;
@synthesize updateLocationSwitch = _updateLocationSwitch;
@synthesize errorLabel = _errorLabel;

- (id) init {
	if (self = [super initWithNibName:@"CurrentLocationViewController" bundle:nil]) {
		self.locationManager = [[[CLLocationManager alloc] init] autorelease];
		self.locationManager.delegate = self;
	}
	
	return self;
}

- (void)dealloc {
	self.locationManager.delegate = nil;
	self.locationManager = nil;
	self.latitudeLabel = nil;
	self.longitudeLabel = nil;
	self.updateLocationSwitch = nil;
	self.errorLabel = nil;
	
    [super dealloc];
}

#pragma mark -
#pragma mark UIViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	
	self.errorLabel.text = @"Just Loaded, no errors yet";
	
	[self updateUpdatingLocationWithUpdateLocationSwitch];
}

- (void) viewDidUnload {
	self.latitudeLabel = nil;
	self.longitudeLabel = nil;
	self.updateLocationSwitch = nil;
	self.errorLabel = nil;
	
	[super viewDidUnload];
}

#pragma mark -
#pragma mark IBActions

- (IBAction) updateUpdatingLocationWithUpdateLocationSwitch {
	if (self.updateLocationSwitch.on) {
		[self.locationManager startUpdatingLocation];
	} else {
		[self.locationManager stopUpdatingLocation];
	}
}

#pragma mark -
#pragma mark CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
		   fromLocation:(CLLocation *)oldLocation {
	self.latitudeLabel.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.latitude];
	self.longitudeLabel.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.longitude];
}

- (void)locationManager:(CLLocationManager *)manager
	   didFailWithError:(NSError *)error {
	self.errorLabel.text = [error localizedDescription];
}

@end

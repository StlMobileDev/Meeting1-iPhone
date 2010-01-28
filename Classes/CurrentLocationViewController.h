//
//  CurrentLocationViewController.h
//  Meeting1
//
//  Created by Heath Borders on 1/27/10.
//  Copyright 2010 Asynchrony Solutions, Inc.. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface CurrentLocationViewController : UIViewController<CLLocationManagerDelegate> {
	@private
	CLLocationManager *_locationManager;
	UILabel *_latitudeLabel;
	UILabel *_longitudeLabel;
	UISwitch *_updateLocationSwitch;
	UILabel *_errorLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *latitudeLabel;
@property (nonatomic, retain) IBOutlet UILabel *longitudeLabel;
@property (nonatomic, retain) IBOutlet UISwitch *updateLocationSwitch;
@property (nonatomic, retain) IBOutlet UILabel *errorLabel;

- (IBAction) updateUpdatingLocationWithUpdateLocationSwitch;

@end

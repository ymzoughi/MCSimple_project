//
//  Utils.h
//  MCSimple_project
//
//  Created by Yahya on 26/12/2013.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "Reachability.h"
#import "Constants.h"
@interface Utils : NSObject
+(float)Distance:(CLLocationCoordinate2D)depart arrival:(CLLocationCoordinate2D)arrival;
+(float)SystemVersion;
+(BOOL)connected;
@end

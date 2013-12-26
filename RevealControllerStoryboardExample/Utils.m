//
//  Utils.m
//  MCSimple_project
//
//  Created by Yahya on 26/12/2013.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import "Utils.h"

@implementation Utils
+(float)Distance:(CLLocationCoordinate2D)depart arrival:(CLLocationCoordinate2D)arrival{
    CLLocation *dep = [[CLLocation alloc] initWithLatitude:depart.latitude longitude:depart.longitude];
    CLLocation *arr = [[CLLocation alloc] initWithLatitude:arrival.latitude longitude:arrival.longitude];
    CLLocationDistance distance = [dep distanceFromLocation:arr];
    return distance;
}
@end

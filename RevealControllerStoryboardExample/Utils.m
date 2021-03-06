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

+(float)SystemVersion
{
    float sysVer = [[[UIDevice currentDevice] systemVersion] floatValue];
    return sysVer;
}

+(BOOL)connected
{
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    return networkStatus != NotReachable;
}

+(NSString *)connectedToNetwork{
    NSString *TypeConnection;
    Reachability* reachability = [Reachability reachabilityWithHostname:kTestURL];
    NetworkStatus remoteHostStatus = [reachability currentReachabilityStatus];
    
    if (remoteHostStatus == ReachableViaWWAN)
    {
        TypeConnection = @"cell";
    }
    else if (remoteHostStatus == ReachableViaWiFi)
    {
        TypeConnection = @"wifi";
    }
    return TypeConnection;
}
@end

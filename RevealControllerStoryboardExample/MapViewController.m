//
//  MapViewController.m
//  RevealControllerStoryboardExample
//
//  Created by Nick Hodapp on 1/9/13.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@property (strong, nonatomic) IBOutlet MKMapView *MapView;
@end

@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    _MapView.delegate = self;
}
/**********************************************************************************************
            CENTER POSITION
 ********************************************************************************************/
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    [mapView setCenterCoordinate:mapView.userLocation.location.coordinate animated:YES];
}

@end

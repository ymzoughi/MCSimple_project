//
//  SimpleView.m
//  Sidebar_project
//
//  Created by Yahya on 26/12/2013.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import "SimpleView.h"

@interface SimpleView ()
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@end

@implementation SimpleView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

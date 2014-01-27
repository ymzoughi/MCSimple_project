//
//  WebViewController.m
//  MCSimple_project
//
//  Created by Yahya on 06/01/2014.
//  Copyright (c) 2014 CoDeveloper. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@end

@implementation WebViewController
@synthesize webView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)PerformLocalHtml:(NSString *)FileName
{
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:FileName ofType:@"html" inDirectory:@"/htdocs" ];
    NSLog(@"%@",htmlPath);

    NSString *html = [NSString stringWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:nil];
    [webView loadHTMLString:html baseURL:[NSURL fileURLWithPath: [NSString stringWithFormat:@"%@/htdocs/",[[NSBundle mainBundle] bundlePath]]]];
    /*NSString *htmlFile = [[NSBundle mainBundle] pathForResource:FileName ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    [webView loadHTMLString:htmlString baseURL:baseURL];*/
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
    [[NSURLCache sharedURLCache] removeAllCachedResponses];

    webView.backgroundColor = [UIColor redColor];
    [self PerformLocalHtml:@"index"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//DELEGATE FUNCTIONS
//Start Loading
- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"Loading");
    
   // [Spinner startAnimating];
}

//Finish Loading
-(void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Finish");
    //[Spinner stopAnimating];
    //Spinner.hidden = YES;
}

@end

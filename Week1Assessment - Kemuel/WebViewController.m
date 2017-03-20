//
//  WebViewController.m
//  Week1Assessment - Kemuel
//
//  Created by Kemuel Clyde Belderol on 19/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadGoogle];
    self.webView.delegate = self;
    
}


- (void)loadGoogle {
    NSString *google = @"https://www.google.com";
    NSURL *URL = [NSURL URLWithString:google];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}




@end

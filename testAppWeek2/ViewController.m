//
//  ViewController.m
//  testAppWeek2
//
//  Created by Jimmy Kim on 8/3/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewWillAppear:(BOOL)animated
{
    title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 320.0f, 20.0f)];
    if (title != nil){
      title.backgroundColor = [UIColor yellowColor];
      //title.text = @"Harry Potter";
      title.textAlignment = UITextAlignmentCenter;
      
    }
    
    [self.view addSubview:title];

    author = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 80.0f, 20.0f)];
    if (author != nil){
      author.backgroundColor = [UIColor greenColor];
      author.textAlignment = UITextAlignmentRight;
    }
    
    [self.view addSubview:author];
    
    name = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 120.0f, 20.0f)];
    if (name != nil){
      name.backgroundColor = [UIColor redColor];
      name.textAlignment = UITextAlignmentLeft;
    }
    
    [self.view addSubview:name];
    
    published = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 100.0f, 50.0f)];
    if (published != nil){
      published.backgroundColor = [UIColor redColor];
      published.textAlignment = UITextAlignmentRight;
    }
    
    [self.view addSubview:published];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  title.text = @"Harry Potter";
  author.text = @"Author: ";
  name.text = @"J.K Rowlings";
  published.text = @"Published";
  [super viewDidAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end

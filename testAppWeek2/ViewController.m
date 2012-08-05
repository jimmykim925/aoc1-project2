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
    
    published = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 85.0f, 20.0f)];
    if (published != nil){
      published.backgroundColor = [UIColor whiteColor];
      published.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:published];
    
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 80.0f, 160.0f, 20.0f)];
    if (publishedDate != nil){
      publishedDate.backgroundColor = [UIColor cyanColor];
      publishedDate.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:publishedDate];
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 120.0f, 85.0f, 20.0f)];
    if (summary != nil){
      summary.backgroundColor = [UIColor cyanColor];
      summary.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:summary];
    
    summaryDetails = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 150.0f, 310.0f, 120.0f)];
    if (summaryDetails != nil){
      summaryDetails.backgroundColor = [UIColor cyanColor];
      summaryDetails.textAlignment = UITextAlignmentCenter;
      summaryDetails.numberOfLines = 12;
    }
    [self.view addSubview:summaryDetails];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  title.text = @"Harry Potter and the Sorcerer's Stone";
  author.text = @"Author: ";
  name.text = @"J.K Rowlings";
  published.text = @"Published: ";
  publishedDate.text = @"September 8, 1999";
  summary.text = @"Summary:";
  summaryDetails.text = @"Harry Potter is the son of wizard parents who attends a school called Hogwarts School of Witchcraft and Wizardry. He must stop the dark wizard Lord Voldemort from destroying the world.";
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

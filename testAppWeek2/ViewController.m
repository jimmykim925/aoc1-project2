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
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 320.0f, 20.0f)];
    if (title != nil){
      title.backgroundColor = [UIColor yellowColor];
      title.textAlignment = UITextAlignmentCenter;
      title.textColor = [UIColor blackColor];
    }
    // Add a Sub View
    [self.view addSubview:title];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    author = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 80.0f, 20.0f)];
    if (author != nil){
      author.backgroundColor = [UIColor greenColor];
      author.textAlignment = UITextAlignmentRight;
      author.textColor = [UIColor darkGrayColor];
    }
    // Add a Sub View
    [self.view addSubview:author];
  
    // Allocated/Initialized label setting size, color, alignment, and text color  
    name = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 120.0f, 20.0f)];
    if (name != nil){
      name.backgroundColor = [UIColor redColor];
      name.textAlignment = UITextAlignmentLeft;
      name.textColor = [UIColor blueColor];
    }
    // Add a Sub View
    [self.view addSubview:name];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    published = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 85.0f, 20.0f)];
    if (published != nil){
      published.backgroundColor = [UIColor whiteColor];
      published.textAlignment = UITextAlignmentRight;
      published.textColor = [UIColor brownColor];
    }
    // Add a Sub View
    [self.view addSubview:published];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 80.0f, 160.0f, 20.0f)];
    if (publishedDate != nil){
      publishedDate.backgroundColor = [UIColor cyanColor];
      publishedDate.textAlignment = UITextAlignmentLeft;
      publishedDate.textColor = [UIColor orangeColor];
    }
    // Add a Sub View
    [self.view addSubview:publishedDate];
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 120.0f, 85.0f, 20.0f)];
    if (summary != nil){
      summary.backgroundColor = [UIColor orangeColor];
      summary.textAlignment = UITextAlignmentLeft;
      summary.textColor = [UIColor purpleColor];
    }
    // Add a Sub View
    [self.view addSubview:summary];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    summaryDetails = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 150.0f, 310.0f, 120.0f)];
    if (summaryDetails != nil){
      summaryDetails.backgroundColor = [UIColor magentaColor];
      summaryDetails.textAlignment = UITextAlignmentCenter;
      summaryDetails.textColor = [UIColor greenColor];
      summaryDetails.numberOfLines = 12;
    }
    // Add a Sub View
    [self.view addSubview:summaryDetails];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 280.0f, 110.0f, 20.0f)];
    if (listOfItems != nil){
      listOfItems.backgroundColor = [UIColor darkGrayColor];
      listOfItems.textAlignment = UITextAlignmentLeft;
      listOfItems.textColor = [UIColor whiteColor];
    }
    // Add a Sub View
    [self.view addSubview:listOfItems];
    
    // Allocated/Initialized label setting size, color, alignment, and text color
    listDetails = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 320.0f, 310.0f, 50.0f)];
    if (listDetails != nil){
      listDetails.backgroundColor = [UIColor brownColor];
      listDetails.textAlignment = UITextAlignmentLeft;
      listDetails.textColor = [UIColor lightGrayColor];
      listDetails.numberOfLines = 3;
    }
    // Add a Sub View
    [self.view addSubview:listDetails];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  // Create text for labels
  title.text = @"Harry Potter and the Sorcerer's Stone";
  author.text = @"Author: ";
  name.text = @"J.K Rowlings";
  published.text = @"Published: ";
  publishedDate.text = @"September 8, 1999";
  summary.text = @"Summary:";
  summaryDetails.text = @"Harry Potter is the son of wizard parents who attends a school called Hogwarts School of Witchcraft and Wizardry. He must stop the dark wizard Lord Voldemort from destroying the world.";
  listOfItems.text = @"List of Items:";
  
  // Allocate and Initialize NSStrings for list of items
  listItem0 = [[NSString alloc] init];
  listItem0 = @"Wand";
  
  listItem1 = [[NSString alloc] init];
  listItem1 = @"Magic";
  
  listItem2 = [[NSString alloc] init];
  listItem2 = @"Trains";
  
  listItem3 = [[NSString alloc] init];
  listItem3 = @"Serpents";
  
  listItem4 = [[NSString alloc] init];
  listItem4 = @"Family";
  
  // Mutable String to add list items
  listItemMutableString = [[NSMutableString alloc] init];
  
  // Array for list items
  listItemsArray = [[NSArray alloc] initWithObjects:listItem0, listItem1, listItem2, listItem3, listItem4 ,nil];
  
  // Loop through array and append to mutable string
  for (int i=0; i <[listItemsArray count]; i++){
    [listItemMutableString appendString:[listItemsArray objectAtIndex:i]];
    // Add condition to limit the comma/and from appearing after last item
    if (i < 4){
      [listItemMutableString appendString:@", and "];
    }
  }
  // Append mutable string values to label
  listDetails.text = listItemMutableString;
  
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

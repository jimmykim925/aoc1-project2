//
//  ViewController.h
//  testAppWeek2
//
//  Created by Jimmy Kim on 8/3/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

  UILabel *title;
  UILabel *author;
  UILabel *name;
  UILabel *published;
  UILabel *publishedDate;
  UILabel *summary;
  UILabel *summaryDetails;
  UILabel *listOfItems;
  UILabel *listDetails;
  
  NSString *listItem0;
  NSString *listItem1;
  NSString *listItem2;
  NSString *listItem3;
  NSString *listItem4;
  NSMutableString *listItemMutableString;
  NSArray *listItemsArray;
  NSMutableArray *mutableArray;
}

@end

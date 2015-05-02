//
//  ViewController.h
//  MyApp
//
//  Created by Jamal O'Garro on 4/30/15.
//  Copyright (c) 2015 Jamal O'Garro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSArray *quotes;
@property (nonatomic, strong) IBOutlet UITextView *quoteText;

- (IBAction)showMessage:(id)sender;

-(IBAction)buttonClicked:(id)sender;

@end


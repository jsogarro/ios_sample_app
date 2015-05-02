//
//  ViewController.m
//  MyApp
//
//  Created by Jamal O'Garro on 4/30/15.
//  Copyright (c) 2015 Jamal O'Garro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.quoteText.text = @"Click button for a cool movie quote.";
    
    self.quotes = @[
                        @"Say hello to my little friend",
                        @"Jennnny!!!!",
                        @"Show me the money!!!!",
                        @"Wilson!!",
                        @"Make my day!"
                    ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage:sender {
    
    UIAlertController *helloWorldAlert = [UIAlertController alertControllerWithTitle:@"My First App"
                                                                             message:@"Hello World"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"OK"
                                                             style:UIAlertActionStyleDefault
                                                           handler:nil];
    
    [helloWorldAlert addAction:okayAction];
    
    [self presentViewController:helloWorldAlert animated:YES completion:nil];
    
}


- (IBAction)buttonClicked:(id)sender {
    NSUInteger total = [self.quotes count];
    
    NSUInteger currentIndex = arc4random() % total;
    
    NSString *currentQuote = self.quotes[currentIndex];
    
    self.quoteText.text = [NSString stringWithFormat:@"Your movie quote: \n \n %@", currentQuote];
}

@end

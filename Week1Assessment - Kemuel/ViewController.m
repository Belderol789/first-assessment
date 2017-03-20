//
//  ViewController.m
//  Week1Assessment - Kemuel
//
//  Created by Kemuel Clyde Belderol on 19/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *augend;
@property (weak, nonatomic) IBOutlet UITextField *addend;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (nonatomic, assign) NSUInteger firstNumber;
@property (nonatomic, assign) NSUInteger secondNumber;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
       [self.addButton addTarget:self action:@selector(summation) forControlEvents:UIControlEventTouchUpInside];
    self.tabBarController.tabBar.userInteractionEnabled = NO;
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)summation {
    [self division];
    self.firstNumber = [self.augend.text integerValue];
    self.secondNumber = [self.addend.text integerValue];
    NSUInteger sum = self.firstNumber + self.secondNumber;
    NSUInteger product = self.firstNumber * self.secondNumber;
    NSUInteger difference = self.firstNumber - self.secondNumber;

        if (((sum) == 999) || ((difference) == 999) || (product) == 999)  {
    [self performSegueWithIdentifier:@"toGoogle" sender:self];
            self.tabBarController.tabBar.userInteractionEnabled = YES;
        } else if (((sum)%9 == 0) || ((difference)%9 == 0) || (product)%9 == 0) {
            self.tabBarController.tabBar.userInteractionEnabled = YES;
            UIAlertController *multiple = [UIAlertController alertControllerWithTitle:@"GENIUS!" message:@"GG EZ" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
            [multiple addAction:OK];
            [self presentViewController:multiple animated:YES completion:NULL];
        }
    }

- (void)division {
    self.firstNumber = [self.augend.text integerValue];
    self.secondNumber = [self.addend.text integerValue];
    if(self.secondNumber == 0) {
        return;
    } else if ((self.firstNumber/self.secondNumber) == 999) {
        [self performSegueWithIdentifier:@"toGoogle" sender:self];
    } else if ((self.firstNumber/self.secondNumber)%9 == 0) {
        self.tabBarController.tabBar.userInteractionEnabled = YES;
        UIAlertController *multiple = [UIAlertController alertControllerWithTitle:@"GENIUS!" message:@"GG EZ" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
        [multiple addAction:OK];
        [self presentViewController:multiple animated:YES completion:NULL];
        
    } else {
        return;
    }
    
}

// ----------------------------another way of doing this with multiple buttons for +, -, *, ÷ ----------------------------
/*
 -(void)summation {
 self.firstNumber = [self.augend.text integerValue];
 self.secondNumber = [self.addend.text integerValue];
 NSUInteger sum = self.firstNumber + self.secondNumber;
 if(sum == 999) {
 [self performSegueWithIdentifier:@"toGoogle" sender:self];
 self.tabBarController.tabBar.userInteractionEnabled = YES;
 
 } else if((sum)%9 == 0) {
 
 [self divisionByNine];
    }
 }
 
 -(void)difference {
 self.firstNumber = [self.augend.text integerValue];
 self.secondNumber = [self.addend.text integerValue];
 NSUInteger sum = self.firstNumber - self.secondNumber;
 if(difference == 999) {
 [self performSegueWithIdentifier:@"toGoogle" sender:self];
 self.tabBarController.tabBar.userInteractionEnabled = YES;
 
 } else if((difference)%9 == 0) {
 
 [self divisionByNine];
    }
 }
 
 -(void)product {
 self.firstNumber = [self.augend.text integerValue];
 self.secondNumber = [self.addend.text integerValue];
 NSUInteger product = self.firstNumber * self.secondNumber;
 if(difference == 999) {
 [self performSegueWithIdentifier:@"toGoogle" sender:self];
 self.tabBarController.tabBar.userInteractionEnabled = YES;
 
 } else if((product)%9 == 0) {
 
 [self divisionByNine];
    }
 }
 
 - (void)division {
 self.firstNumber = [self.augend.text integerValue];
 self.secondNumber = [self.addend.text integerValue];
 if(self.secondNumber == 0) {
 return;
 } else if ((self.firstNumber/self.secondNumber) == 999) {
 [self performSegueWithIdentifier:@"toGoogle" sender:self];
 } else if ((self.firstNumber/self.secondNumber)%9 == 0) {
 self.tabBarController.tabBar.userInteractionEnabled = YES;
 UIAlertController *multiple = [UIAlertController alertControllerWithTitle:@"GENIUS!" message:@"GG EZ" preferredStyle:UIAlertControllerStyleAlert];
 UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
 [multiple addAction:OK];
 [self presentViewController:multiple animated:YES completion:NULL];
 
 } else {
 return;
    }
 }
 
 -(void)divisibleByNine {
 self.tabBarController.tabBar.userInterActionEnabled = YES;
 UIAlertController *multiple = [UIAlertController alertControllerWithTitle:@"GENIUS!" message:@"GG EZ" preferredStyle:UIAlertControllerStyleAlert];
 UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];
 [multiple addAction:OK];
 [self presentViewController:multiple animated:YES completion:NULL];
 
    }
}
 
 */





@end

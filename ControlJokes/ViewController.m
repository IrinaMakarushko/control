//
//  ViewController.m
//  ControlJokes
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Text;
@property (weak, nonatomic) IBOutlet UIButton *prButton;

@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation ViewController
    



- (void)viewDidLoad {
    self.array = [NSArray arrayWithObjects:@"- Я никогда не опаздываю на работу.- В чём твой секрет? - Я на ней живу",
                  @"На Хэллоуин оденусь в костюм рубля, напьюсь и буду весь вечер падать.",
                  @"Ты либо договаривай, либо молчи. Фантазия-то дикая.",
                  @"Купил ноутбук, теперь будет чем живот греть, лёжа на диване.",
                  @"У стюардессы с фамилией Якубович две шкатулки: в одной рыба, в другой мясо.",
                  nil];
    self.index = 0;
    self.Text.text = [self.array objectAtIndex:self.index];
    [self.prButton setEnabled:NO];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)prevButtonPressed2:(id)sender {
    self.index= self.index - 1;
    self.Text.text = [self.array objectAtIndex:self.index];
    
    if(self.index == 0){
        [self.prButton setEnabled:NO];
    }
    
    if(![self.nextButton isEnabled]){
        [self.nextButton setEnabled:TRUE];
    }
}



- (IBAction)nextButtonPressed:(id)sender {
    self.index = self.index + 1;
    self.Text.text = [self.array objectAtIndex:self.index];
    
    if(self.index == [self.array count]-1){
        [self.nextButton setEnabled:NO];
    }
    
    if(![self.prButton isEnabled]){
        [self.prButton setEnabled:TRUE];
    }
    
}


@end

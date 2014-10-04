//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Andrew Affolter on 2/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        //create two arrays filled with questions and answers
        //and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",@"What is 7+7?",@"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes", @"14",@"Montpelier"];
        
    }
    
    //Return the address of the new object
    return self;
    
}

-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count])
    {
        //go back to the first questoin
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at the index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answerLabel.text = @"???";
    
}

-(IBAction)showAnswer:(id)sender
{
    //What is the answer tothe current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
    
}

@end

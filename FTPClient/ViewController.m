//
//  ViewController.m
//  FTPClient
//
//  Created by Ori on 7/21/14.
//  Copyright (c) 2014 Teratick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *hostName;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (weak, nonatomic) IBOutlet UITextField *fileDirectory;
@property (weak, nonatomic) IBOutlet UITextField *fileName;
@property (weak, nonatomic) IBOutlet UILabel *serverResponse;

@end

@implementation ViewController

#pragma mark -- UI Actions


- (IBAction)downLoadFile:(id)sender {

    // resinFirstResponder for one text field we use:
    //[self.hostName resignFirstResponder];
    
    //For all at once:
    [self.view endEditing:YES];
    
    // call start downloading file
    
    _serverResponse.text = @"YEA! - server is telling me a wonderful story about what happend after i pressed the download button";
    
}

// Giving up text file first responder mode
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark -- Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Place Defult values in textFields.
    _hostName.text = @"192.168.1.106";
    _userName.text = @"baba";
    _passWord.text = @"ganush";
    _fileDirectory.text = @"Backup/Config";
    _fileName.text = @"simpleText.txt";
    
    // Formatin UILabel for server response
    _serverResponse.numberOfLines = 0;
    [_serverResponse sizeToFit];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  Mi segunda app
//
//  Created by Mac Mini on 9/17/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static int contadorClics = 0;

- (IBAction)changeButtonPressed:(id)sender {
    //Arreglo mensajes
    NSArray *arrMsg = @[@"Primer mensaje",@"Segundo mensaje",@"Tercer mensaje",@"Cuarto mensaje",@"Quinto mensaje"];
    
    //Arreglo colores
    NSArray *arrColors = [[NSArray alloc] initWithObjects:[UIColor  blackColor ], [UIColor magentaColor], [UIColor yellowColor], [UIColor greenColor], [UIColor redColor], nil];
 
        contadorClics++;

    if(contadorClics <= 4){
    self.lblWelcome.text= arrMsg[contadorClics];
     self.lblWelcome.textColor = arrColors[contadorClics];
    }
    else{
        self.lblWelcome.text= arrMsg[0];
        self.lblWelcome.textColor= arrColors[0];
        
        //Reinicio de contador
        contadorClics = 0;
    }
    
    //self.lblWelcome.text= @"Mentira!";
}

- (IBAction)switchValueChanged:(id)sender {
    self.lblWelcome.hidden = YES;
}


@end

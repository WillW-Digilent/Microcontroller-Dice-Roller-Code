#include <stdlib.h> // to use the rand() function

// Initializing the pin used for button input
const int btnPin = 26;

// Initializing pins to control each LED
const int led_left_top = 33;     // wire is marked with "1"
const int led_left_center = 32;  // wire is marked with "2"
const int led_left_bottom = 31;  // wire is marked with "3"
const int led_right_top = 30;    // wire is marked with "6"
const int led_right_center = 29; // wire is marked with "5"
const int led_right_bottom = 28; // wire is marked with "4"
const int led_center = 27;       // wire is marked with "7"

// Creating a function to simulate the action of a die rolling
// Function will make LEDs flicker through numbers 1-6
void roll()
{
  int i = 0; // Counting variable for loop
  
  for (i = 0; i < 5; i++) // cycle 5 times
  {
    // Display 1
    digitalWrite(led_left_top, LOW);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, LOW);
    digitalWrite(led_right_top, LOW);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, LOW);
    digitalWrite(led_center, HIGH);
    delay(50); //wait 100ms before displaying next value
    
    // Display 2
    digitalWrite(led_left_top, HIGH);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, LOW);
    digitalWrite(led_right_top, LOW);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, HIGH);
    digitalWrite(led_center, LOW);
    delay(50);
    
    // Display 3
    digitalWrite(led_left_top, HIGH);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, LOW);
    digitalWrite(led_right_top, LOW);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, HIGH);
    digitalWrite(led_center, HIGH);
    delay(50);
    
    // Display 4
    digitalWrite(led_left_top, HIGH);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, HIGH);
    digitalWrite(led_right_top, HIGH);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, HIGH);
    digitalWrite(led_center, LOW);
    delay(50);
    
    // Display 5
    digitalWrite(led_left_top, HIGH);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, HIGH);
    digitalWrite(led_right_top, HIGH);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, HIGH);
    digitalWrite(led_center, HIGH);
    delay(50);
    
    // Display 6
    digitalWrite(led_left_top, HIGH);
    digitalWrite(led_left_center, HIGH);
    digitalWrite(led_left_bottom, HIGH);
    digitalWrite(led_right_top, HIGH);
    digitalWrite(led_right_center, HIGH);
    digitalWrite(led_right_bottom, HIGH);
    digitalWrite(led_center, LOW);
    delay(50);
  }
}

// Initiliazing variable to represent die value
int die_value = 0;

void setup ()
{
  //Set button pin for input
  pinMode(btnPin, INPUT);
  
  // Set LED pins to output
  pinMode(led_left_top, OUTPUT);
  pinMode(led_left_center, OUTPUT);
  pinMode(led_left_bottom, OUTPUT);
  pinMode(led_right_top, OUTPUT);
  pinMode(led_right_center, OUTPUT);
  pinMode(led_right_bottom, OUTPUT);
  pinMode(led_center, OUTPUT);
}

void loop ()
{
  // Check for button press
  if (digitalRead(btnPin) == HIGH)
  {
    roll(); // Simulate die roll
    die_value = (rand() % 6) + 1; // Randomly select die value
    
    if (die_value == 1)
    {
      digitalWrite(led_left_top, LOW);
      digitalWrite(led_left_center, LOW);
      digitalWrite(led_left_bottom, LOW);
      digitalWrite(led_right_top, LOW);
      digitalWrite(led_right_center, LOW);
      digitalWrite(led_right_bottom, LOW);
      digitalWrite(led_center, HIGH);
    }
    else if (die_value == 2)
    {
      digitalWrite(led_left_top, HIGH);
      digitalWrite(led_left_center, LOW);
      digitalWrite(led_left_bottom, LOW);
      digitalWrite(led_right_top, LOW);
      digitalWrite(led_right_center, LOW);
      digitalWrite(led_right_bottom, HIGH);
      digitalWrite(led_center, LOW);
    }
    else if (die_value == 3)
    {
      digitalWrite(led_left_top, HIGH);
      digitalWrite(led_left_center, LOW);
      digitalWrite(led_left_bottom, LOW);
      digitalWrite(led_right_top, LOW);
      digitalWrite(led_right_center, LOW);
      digitalWrite(led_right_bottom, HIGH);
      digitalWrite(led_center, HIGH);
    }
    else if (die_value == 4)
    {
      digitalWrite(led_left_top, HIGH);
      digitalWrite(led_left_center, LOW);
      digitalWrite(led_left_bottom, HIGH);
      digitalWrite(led_right_top, HIGH);
      digitalWrite(led_right_center, LOW);
      digitalWrite(led_right_bottom, HIGH);
      digitalWrite(led_center, LOW);
    }
    else if (die_value == 5)
    {
      digitalWrite(led_left_top, HIGH);
      digitalWrite(led_left_center, LOW);
      digitalWrite(led_left_bottom, HIGH);
      digitalWrite(led_right_top, HIGH);
      digitalWrite(led_right_center, LOW);
      digitalWrite(led_right_bottom, HIGH);
      digitalWrite(led_center, HIGH);
    }
    else // die_value == 6
    {
      digitalWrite(led_left_top, HIGH);
      digitalWrite(led_left_center, HIGH);
      digitalWrite(led_left_bottom, HIGH);
      digitalWrite(led_right_top, HIGH);
      digitalWrite(led_right_center, HIGH);
      digitalWrite(led_right_bottom, HIGH);
      digitalWrite(led_center, LOW);
    }
    delay(5000);
  }
  else // LEDs stay off if button has not been pressed
  {
    digitalWrite(led_left_top, LOW);
    digitalWrite(led_left_center, LOW);
    digitalWrite(led_left_bottom, LOW);
    digitalWrite(led_right_top, LOW);
    digitalWrite(led_right_center, LOW);
    digitalWrite(led_right_bottom, LOW);
    digitalWrite(led_center, LOW);
  }
}

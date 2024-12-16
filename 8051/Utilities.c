/******************************************************************************
 * @file    Utilities.c
 * @brief   Utility functions for serial I/O operations and buffer management.
 * 
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * 
 * This file provides functions for serial communication, including sending and
 * receiving characters and strings, converting hexadecimal strings to integers, 
 * and reading user input for buffer size. These functions are used to interact 
 * with the serial interface for data transmission and reception.
 ******************************************************************************/


#include "Utilities.h"


int putchar (int c)
{

    while (!TI);

    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag

    return c;
}


int getchar (void)
{

    while (!RI);

    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}

int putstr (char *s)
{
    int i = 0;
    while (*s){            // output characters until NULL found
        putchar(*s++);
        i++;
    }
    return i+1;
}

int hex_to_int(char* str)
{

    int i = 0, result = 0;
    while(str[i] != '\0')
    {
        int ASCII = (int)str[i];
        result *= 16;
        if(ASCII >= '0' && ASCII <= '9')
        {
            result += str[i] - 48;
        }
        else if(ASCII >= 'A' && ASCII <= 'F')
        {
            result += str[i] - 55;
        }
        else if(ASCII >= 'a' && ASCII <= 'f')
        {
            result += str[i] - 87;
        }
        i++;
    }
    return result;

}

//Function to take the user buffer size
int get_user_buffer_size(void)
{
    int i = 0, output;
    char input[10], ch;


    while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
    {
        putchar(ch);
        input[i] = ch;      //Append the input array with the received character
        i++;
    }
    input[i] = '\0';
    output = hex_to_int(input); //Convert the char hex data to int
    printf_tiny("\n\r");

    return output;
}

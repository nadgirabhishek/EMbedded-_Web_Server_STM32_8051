/******************************************************************************
 * @file        utilities.h
 * @brief       Header file for utility functions including character I/O, string
 *              manipulation, and buffer handling.
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 ******************************************************************************/

#ifndef UTILITIES_H
#define UTILITIES_H

#include "global.h"
#include "stdint.h"

int putchar (int c);
int getchar (void);
int putstr (char *s);
int get_user_buffer_size(void);
int hex_to_int(char* str);

#endif // UTILITIES_H

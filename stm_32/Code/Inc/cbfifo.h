/*
 * cbfifo.h
 *
 *  Created on: Nov 5, 2024
 *      Author: Abhishek Nadgir
 */

#ifndef CBFIFO_H_
#define CBFIFO_H_

#include <stdint.h>
#include <stdlib.h>

#define MAX_FIFO_SIZE 128
#define FIFO_ERROR (size_t) -1

typedef struct {
    uint8_t buffer[MAX_FIFO_SIZE];
    size_t write;
    size_t read;
    size_t length;
} cbfifo_t;

void cbfifo_init(cbfifo_t *fifo);

size_t cbfifo_enqueue(cbfifo_t *fifo, void *buf, size_t nbyte);

size_t cbfifo_dequeue(cbfifo_t *fifo, void *buf, size_t nbyte);

size_t cbfifo_peek(cbfifo_t *fifo, uint8_t *byte);

size_t cbfifo_length(cbfifo_t *fifo);

size_t cbfifo_capacity();

#endif // _CBFIFO_H_


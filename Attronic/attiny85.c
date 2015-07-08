/**  Attronic - an Attiny version of the mooftronic
 *   Orginal: http://makezine.com/projects/mooftronic-mini-synth/
 *   Author: Daniel Stijns
 * 
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#define F_CPU 8000000UL

#include <inttypes.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

// These values represent the time step across the wave between each sampling
// The formula is NOTE = note_frequency*2^16/sampling_frequency
#define NOTE_C  (uint16_t) (2*261.63*65536/45454.5)
#define NOTE_D  (uint16_t) (2*293.66*65536/45454.5)
#define NOTE_E  (uint16_t) (2*329.63*65536/45454.5)
#define NOTE_F  (uint16_t) (2*349.23*65536/45454.5)
#define NOTE_G  (uint16_t) (2*392.00*65536/45454.5)
#define NOTE_A  (uint16_t) (2*440.00*65536/45454.5)
#define NOTE_B  (uint16_t) (2*493.88*65536/45454.5)
#define NOTE_C2 (uint16_t) (2*523.25*65536/45454.5)

volatile uint16_t freq = NOTE_C;
volatile uint8_t pulseWidth = 0x80;

// Makes a new pulse wave
// I put in a lot of effort...
void newSound() {
    pulseWidth += 70;
}

void main() {
    // Set the sound pin as output
    DDRB |= _BV(PORTB1);
    
    // Set up the ADC
    // 8-bit precision, ADC1
    ADMUX  |= _BV(ADLAR) | _BV(MUX0);
    // F_ADC = 125kHz, free-running
    ADCSRA |= _BV(ADEN) | _BV(ADATE) | _BV(ADSC) | _BV(ADPS2) | _BV(ADPS1);
    
    // Set up the timer
    // CTC Mode
    TCCR0A |= _BV(WGM01);
    // Frequency = 8000000/176 ~= 45kHz
    OCR0A = 176;
    // Enable Interrupt
    TIMSK |= _BV(OCIE0A);
    sei();
    // Start timer
    TCCR0B |= _BV(CS01);
    
    for(;;) {
        uint8_t tempADC;
        
        // Sample ADC 1
        tempADC = ADCH;
        
        //Play note/change instrument
        if(tempADC < 26)
            // No key
            TCCR0B = 0;
        else if(tempADC < 232) {
            // Keyboard key
            TCCR0B |= _BV(CS01);
            if(tempADC < 56)
                freq = NOTE_C;
            else if(tempADC < 70)
                freq = NOTE_D;
            else if(tempADC < 98)
                freq = NOTE_E;
            else if(tempADC < 122)
                freq = NOTE_F;
            else if(tempADC < 151)
                freq = NOTE_G;
            else if(tempADC < 183)
                freq = NOTE_A;
            else if(tempADC < 201)
                freq = NOTE_B;
            else freq = NOTE_C2;
        }
        else {
            // Change sound key
            TCCR0B = 0;
            newSound();
        }
    }
}

ISR(TIMER0_COMPA_vect) {
    static uint16_t phase;
    
    //Increment phase
    phase += freq;
    
    //Apply the pulse width
    if(phase < (pulseWidth<<8))
        PORTB |= _BV(PORTB1);
    else PORTB &= ~_BV(PORTB1);
}

// -Os: optimize

#define F_CPU 16000000UL

//#include <util/delay.h>

//   1:   5usec
//  10:  15usec
//  20:  27usec
//  30:  40usec
//  40:  50usec
//  50:  62usec
// 100: 125usec
// 200: 240usec
// 300: 360usec
// 500: 600usec
//
void delay_usec(int us){
  volatile int i = us;
  while (i > 0){
   i -= 1;
  }

}

void delay_1msec(){
  volatile int i = 900;
  while (i > 0){
   i -= 1;
  }
}

//   1:     1msec
//   2:     2msec
//   5:   5.3msec
//  10:  10.8msec
//  50:  53.0msec
// 100: 107.0msec
// 200: 214.0msec
//
void delay_msec(int ms){
  volatile int i = ms;
  while (i > 0){
   i -= 1;
   delay_1msec();
  }
}

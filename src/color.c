#include <raylib.h>

#include "sodium/randombytes.h"

Color GenRandomColor(void) {
  // srand(3);
  int r = randombytes_uniform(255);
  int g = randombytes_uniform(255);
  int b = randombytes_uniform(255);
  Color newColor = (Color){255, r, g, b};
  return newColor;
}

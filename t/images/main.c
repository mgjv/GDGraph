#include <stdio.h>
#include "logo_xbm_noext.c"

void main() {
  FILE *f = fopen ("logo_xbm_noext", "w");
  fwrite (logo_bits, sizeof(logo_bits), 1, f);
  fclose (f);
}

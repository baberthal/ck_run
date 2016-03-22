#include "ck_run.h"

VALUE rb_mCkRun;

void
Init_ck_run(void)
{
  rb_mCkRun = rb_define_module("CkRun");
}

/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: BasicTestModel_private.h
 *
 * Code generated for Simulink model 'BasicTestModel'.
 *
 * Model version                  : 1.10
 * Simulink Coder version         : 8.8 (R2015a) 09-Feb-2015
 * TLC version                    : 8.8 (Jan 20 2015)
 * C/C++ source code generated on : Fri May 06 10:52:10 2016
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_BasicTestModel_private_h_
#define RTW_HEADER_BasicTestModel_private_h_
#include "rtwtypes.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmIsMajorTimeStep
# define rtmIsMajorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
# define rtmIsMinorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmGetTPtr
# define rtmGetTPtr(rtm)               ((rtm)->Timing.t)
#endif

#ifndef rtmSetTPtr
# define rtmSetTPtr(rtm, val)          ((rtm)->Timing.t = (val))
#endif

extern void signals_Outputs_wrapper(boolean_T *signal_enable,
  boolean_T *signal_alarm,
  const real_T *xD);
extern void signals_Update_wrapper(const boolean_T *signal_enable,
  const boolean_T *signal_alarm,
  real_T *xD);
extern void SerialTx_Outputs_wrapper(const boolean_T *C1,
  const boolean_T *C2,
  const boolean_T *C3,
  const boolean_T *C4,
  const boolean_T *C5,
  const boolean_T *C6,
  const boolean_T *C7,
  const boolean_T *C8,
  const real32_T *S1,
  const real32_T *S2,
  const real32_T *S3,
  const real32_T *S4,
  const real32_T *S5,
  const real32_T *S6,
  const real_T *xD,
  const real_T *sample_tx, const int_T p_width0,
  const uint16_T *Samples, const int_T p_width1);
extern void SerialTx_Update_wrapper(const boolean_T *C1,
  const boolean_T *C2,
  const boolean_T *C3,
  const boolean_T *C4,
  const boolean_T *C5,
  const boolean_T *C6,
  const boolean_T *C7,
  const boolean_T *C8,
  const real32_T *S1,
  const real32_T *S2,
  const real32_T *S3,
  const real32_T *S4,
  const real32_T *S5,
  const real32_T *S6,
  real_T *xD,
  const real_T *sample_tx, const int_T p_width0,
  const uint16_T *Samples, const int_T p_width1);
extern void data_struct_init_Outputs_wrapper(const real_T *xD);
extern void data_struct_init_Update_wrapper(real_T *xD);

/* private model entry point functions */
extern void BasicTestModel_derivatives(void);

#endif                                 /* RTW_HEADER_BasicTestModel_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

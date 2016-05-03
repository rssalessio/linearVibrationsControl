/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: hinf_arduino.h
 *
 * Code generated for Simulink model 'hinf_arduino'.
 *
 * Model version                  : 1.4
 * Simulink Coder version         : 8.8 (R2015a) 09-Feb-2015
 * TLC version                    : 8.8 (Jan 20 2015)
 * C/C++ source code generated on : Tue May 03 15:04:05 2016
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_hinf_arduino_h_
#define RTW_HEADER_hinf_arduino_h_
#include <math.h>
#include <string.h>
#include <stddef.h>
#ifndef hinf_arduino_COMMON_INCLUDES_
# define hinf_arduino_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "arduino_digitalinput_lct.h"
#include "arduino_digitaloutput_lct.h"
#endif                                 /* hinf_arduino_COMMON_INCLUDES_ */

#include "hinf_arduino_types.h"

/* Shared type includes */
#include "multiword_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

/* Block signals (auto storage) */
typedef struct {
  real_T Sum;                          /* '<S5>/Sum' */
  real_T startTime;                    /* '<S4>/startTime' */
  real_T MD;                           /* '<S1>/Chart' */
  real32_T conversion13;               /* '<S6>/conversion13' */
  real32_T conversion2;                /* '<S6>/conversion2' */
  real32_T conversion8;                /* '<S21>/conversion8' */
  real32_T SFunction1_o1;              /* '<S21>/S-Function1' */
  real32_T SFunction1_o2;              /* '<S21>/S-Function1' */
  real32_T SFunction1_o3;              /* '<S21>/S-Function1' */
  real32_T conversion4;                /* '<S6>/conversion4' */
  real32_T conversion5;                /* '<S6>/conversion5' */
  real32_T conversion6;                /* '<S6>/conversion6' */
  real32_T conversion7;                /* '<S6>/conversion7' */
  int32_T SFunction;                   /* '<S19>/S-Function' */
  boolean_T SFunction2_o1;             /* '<S3>/S-Function2' */
  boolean_T SFunction2_o2;             /* '<S3>/S-Function2' */
  boolean_T LogicalOperator;           /* '<S16>/Logical Operator' */
  boolean_T conversion1;               /* '<S6>/conversion1' */
  boolean_T conversion3;               /* '<S6>/conversion3' */
  boolean_T conversion9;               /* '<S6>/conversion9' */
  boolean_T conversion10;              /* '<S6>/conversion10' */
  boolean_T LogicalOperator_b;         /* '<S21>/Logical Operator' */
} B_hinf_arduino_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T SFunction2_DSTATE;            /* '<S3>/S-Function2' */
  real_T SFunction_DSTATE;             /* '<S19>/S-Function' */
  real_T SFunction1_DSTATE;            /* '<S21>/S-Function1' */
  real_T SFunction_DSTATE_e;           /* '<S6>/S-Function' */
  real_T SFunction1_DSTATE_b;          /* '<S3>/S-Function1' */
  real_T Memory1_PreviousInput;        /* '<S1>/Memory1' */
  int32_T DelayInput1_DSTATE;          /* '<S8>/Delay Input1' */
  int32_T Memory2_PreviousInput;       /* '<S1>/Memory2' */
  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
  uint8_T is_active_c3_hinf_arduino;   /* '<S1>/Chart' */
  uint8_T is_c3_hinf_arduino;          /* '<S1>/Chart' */
} DW_hinf_arduino_T;

/* Continuous states (auto storage) */
typedef struct {
  real_T HINFINITY_CSTATE[6];          /* '<S2>/H INFINITY' */
} X_hinf_arduino_T;

/* State derivatives (auto storage) */
typedef struct {
  real_T HINFINITY_CSTATE[6];          /* '<S2>/H INFINITY' */
} XDot_hinf_arduino_T;

/* State disabled  */
typedef struct {
  boolean_T HINFINITY_CSTATE[6];       /* '<S2>/H INFINITY' */
} XDis_hinf_arduino_T;

#ifndef ODE3_INTG
#define ODE3_INTG

/* ODE3 Integration Data */
typedef struct {
  real_T *y;                           /* output */
  real_T *f[3];                        /* derivatives */
} ODE3_IntgData;

#endif

/* Parameters (auto storage) */
struct P_hinf_arduino_T_ {
  real_T Encoder_dt_enc;               /* Mask Parameter: Encoder_dt_enc
                                        * Referenced by: '<S19>/S-Function'
                                        */
  int64m_T UpperThreshold_const;       /* Mask Parameter: UpperThreshold_const
                                        * Referenced by: '<S13>/Constant'
                                        */
  int64m_T LowerThreshold_const;       /* Mask Parameter: LowerThreshold_const
                                        * Referenced by: '<S12>/Constant'
                                        */
  int32_T DetectChange_vinit;          /* Mask Parameter: DetectChange_vinit
                                        * Referenced by: '<S8>/Delay Input1'
                                        */
  uint32_T DigitalOutput_pinNumber;    /* Mask Parameter: DigitalOutput_pinNumber
                                        * Referenced by: '<S14>/Digital Output'
                                        */
  uint32_T DigitalOutput_pinNumber_p;  /* Mask Parameter: DigitalOutput_pinNumber_p
                                        * Referenced by: '<S15>/Digital Output'
                                        */
  real_T HINFINITY_A[22];              /* Computed Parameter: HINFINITY_A
                                        * Referenced by: '<S2>/H INFINITY'
                                        */
  real_T HINFINITY_B[5];               /* Computed Parameter: HINFINITY_B
                                        * Referenced by: '<S2>/H INFINITY'
                                        */
  real_T HINFINITY_C[6];               /* Computed Parameter: HINFINITY_C
                                        * Referenced by: '<S2>/H INFINITY'
                                        */
  real_T HINFINITY_X0;                 /* Expression: 0
                                        * Referenced by: '<S2>/H INFINITY'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 5
                                        * Referenced by: '<S11>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -5
                                        * Referenced by: '<S11>/Saturation'
                                        */
  real_T PulseGenerator_Amp;           /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Period;        /* Computed Parameter: PulseGenerator_Period
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Duty;          /* Computed Parameter: PulseGenerator_Duty
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_PhaseDelay;    /* Expression: 5
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T Saturation_UpperSat_l;        /* Expression: 3
                                        * Referenced by: '<S10>/Saturation'
                                        */
  real_T Saturation_LowerSat_o;        /* Expression: -3
                                        * Referenced by: '<S10>/Saturation'
                                        */
  real_T Memory1_X0;                   /* Expression: 0
                                        * Referenced by: '<S1>/Memory1'
                                        */
  real_T SFunction_P1;                 /* Expression: sample_time
                                        * Referenced by: '<S6>/S-Function'
                                        */
  real_T cmtoencoder_Gain;             /* Expression: 560
                                        * Referenced by: '<S5>/cm-to-encoder'
                                        */
  real32_T SFunction1_P2;              /* Expression: single(DC_bus_mask)
                                        * Referenced by: '<S21>/S-Function1'
                                        */
  real32_T SFunction1_P3;              /* Expression: single(dt_mot)
                                        * Referenced by: '<S21>/S-Function1'
                                        */
  int32_T Memory2_X0;                  /* Computed Parameter: Memory2_X0
                                        * Referenced by: '<S1>/Memory2'
                                        */
  uint32_T SFunction_p1;               /* Computed Parameter: SFunction_p1
                                        * Referenced by: '<S18>/S-Function'
                                        */
  uint32_T SFunction_p1_c;             /* Computed Parameter: SFunction_p1_c
                                        * Referenced by: '<S20>/S-Function'
                                        */
  int32_T encodertocm_Gain;            /* Computed Parameter: encodertocm_Gain
                                        * Referenced by: '<S9>/encoder-to-cm'
                                        */
  int32_T encodertocm_Gain_j;          /* Computed Parameter: encodertocm_Gain_j
                                        * Referenced by: '<Root>/encoder-to-cm'
                                        */
  uint8_T SFunction_P1_l;              /* Expression: uint8(EncoderID)
                                        * Referenced by: '<S19>/S-Function'
                                        */
  uint8_T SFunction1_P1;               /* Expression: uint8(MotorID)
                                        * Referenced by: '<S21>/S-Function1'
                                        */
  uint8_T SFunction_P2;                /* Expression: uint8(sig_to_send)
                                        * Referenced by: '<S6>/S-Function'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_hinf_arduino_T {
  const char_T *errorStatus;
  RTWSolverInfo solverInfo;

  /*
   * ModelData:
   * The following substructure contains information regarding
   * the data used in the model.
   */
  struct {
    X_hinf_arduino_T *contStates;
    int_T *periodicContStateIndices;
    real_T *periodicContStateRanges;
    real_T *derivs;
    boolean_T *contStateDisabled;
    boolean_T zCCacheNeedsReset;
    boolean_T derivCacheNeedsReset;
    boolean_T blkStateChange;
    real_T odeY[6];
    real_T odeF[3][6];
    ODE3_IntgData intgData;
  } ModelData;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    int_T numContStates;
    int_T numPeriodicContStates;
    int_T numSampTimes;
  } Sizes;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    time_T stepSize0;
    uint32_T clockTick1;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (auto storage) */
extern P_hinf_arduino_T hinf_arduino_P;

/* Block signals (auto storage) */
extern B_hinf_arduino_T hinf_arduino_B;

/* Continuous states (auto storage) */
extern X_hinf_arduino_T hinf_arduino_X;

/* Block states (auto storage) */
extern DW_hinf_arduino_T hinf_arduino_DW;

/* External data declarations for dependent source files */
extern const boolean_T hinf_arduino_BGND;/* boolean_T ground */

/* Model entry point functions */
extern void hinf_arduino_initialize(void);
extern void hinf_arduino_output(void);
extern void hinf_arduino_update(void);
extern void hinf_arduino_terminate(void);

/* Real-time Model object */
extern RT_MODEL_hinf_arduino_T *const hinf_arduino_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'hinf_arduino'
 * '<S1>'   : 'hinf_arduino/Condom'
 * '<S2>'   : 'hinf_arduino/Controller'
 * '<S3>'   : 'hinf_arduino/PoliArd Init'
 * '<S4>'   : 'hinf_arduino/Repeating Sequence'
 * '<S5>'   : 'hinf_arduino/System '
 * '<S6>'   : 'hinf_arduino/Transmission'
 * '<S7>'   : 'hinf_arduino/Condom/Chart'
 * '<S8>'   : 'hinf_arduino/Condom/Detect Change'
 * '<S9>'   : 'hinf_arduino/Condom/Ovrshoot Travel Protection'
 * '<S10>'  : 'hinf_arduino/Condom/Reference Overshoot'
 * '<S11>'  : 'hinf_arduino/Condom/Voltage Protection'
 * '<S12>'  : 'hinf_arduino/Condom/Ovrshoot Travel Protection/Lower Threshold'
 * '<S13>'  : 'hinf_arduino/Condom/Ovrshoot Travel Protection/Upper Threshold'
 * '<S14>'  : 'hinf_arduino/PoliArd Init/Digital Output1'
 * '<S15>'  : 'hinf_arduino/PoliArd Init/Digital Output3'
 * '<S16>'  : 'hinf_arduino/System /Encoder '
 * '<S17>'  : 'hinf_arduino/System /Motor'
 * '<S18>'  : 'hinf_arduino/System /Encoder /Digital Input'
 * '<S19>'  : 'hinf_arduino/System /Encoder /Encoder'
 * '<S20>'  : 'hinf_arduino/System /Motor/Digital Input1'
 * '<S21>'  : 'hinf_arduino/System /Motor/Motor'
 */
#endif                                 /* RTW_HEADER_hinf_arduino_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

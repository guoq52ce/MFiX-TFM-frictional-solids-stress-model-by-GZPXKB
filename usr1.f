!vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvC
!                                                                      C
!  Module name: USR1                                                   C
!  Purpose: This routine is called from the time loop and is           C
!           user-definable.  The user may insert code in this routine  C
!           or call appropriate user defined subroutines.  This        C
!           can be used for setting or checking errors in quantities   C
!           that vary with time.  This routine is not called from an   C
!           IJK loop, hence all indices are undefined.                 C               C
!                                                                      C
!  Author:                                            Date: dd-mmm-yy  C
!  Reviewer:                                          Date: dd-mmm-yy  C
!                                                                      C
!  Revision Number:                                                    C
!  Purpose:                                                            C
!  Author:                                            Date: dd-mmm-yy  C
!  Reviewer:                                          Date: dd-mmm-yy  C
!                                                                      C
!  Literature/Document References:                                     C
!                                                                      C
!  Variables referenced:                                               C
!  Variables modified:                                                 C
!                                                                      C
!  Local variables:                                                    C
!                                                                      C
!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^C
!
      SUBROUTINE USR1

      USE USR

      USE run, only: dt, time
      USE constant, only: Pi, GRAVITY, GRAVITY_X, GRAVITY_Y, GRAVITY_Z, SET_CONSTANTS
      USE bc, only: BC_V_g
      USE set_bc0_flow_mod, only: set_bc0_flow

      IMPLICIT NONE

!-----------------------------------------------
!
!  Include files defining common blocks here
!
!
!  Define local variables here
!
!
!  Include files defining statement functions here
!
!
!  Insert user-defined code here

      GRAVITY_Y= -(4.4413*sin(time*31.4159265359) + 9.81)
      call SET_CONSTANTS
      

!
      RETURN
      END SUBROUTINE USR1

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
!********************************************qg***********************************************	  
      USE run, only: dt, time
      USE constant, only: Pi, GRAVITY, GRAVITY_X, GRAVITY_Y, GRAVITY_Z, SET_CONSTANTS	  	  	  
!********************************************qg***********************************************	  

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
!********************************************qg***********************************************	
!GRAVITY_Y= -(4*Pi**2*Vibration_frequency**2*Vibration_amplitude*sin(2*Pi*Vibration_frequency*time) + 9.81)
      GRAVITY_Y= -(4*Pi**2*5**2*4.5/1000*sin(2*Pi*5*time) + 9.81)
      call SET_CONSTANTS
!********************************************qg***********************************************		  
!
      RETURN
      END SUBROUTINE USR1

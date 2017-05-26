!  
!  Written by Leandro Martínez, 2009-2011.
!  Copyright (c) 2009-2011, Leandro Martínez, Jose Mario Martinez,
!  Ernesto G. Birgin.
!  
!  This program is free software; you can redistribute it and/or
!  modify it under the terms of the GNU General Public License
!  as published by the Free Software Foundation; either version 2
!  of the License, or (at your option) any later version.
!  
!-----------------------------------------------------------------------------
!
! http://www.ime.unicamp.br/~martinez/packmol
!
! Usage (see the page above for further information):
!
! ./packmol < inputfile.inp
!
! References:
!
! L. Martinez, R. Andrade, E. G. Birgin, J. M. Martinez,
! PACKMOL: A package for building initial configurations for
! molecular dynamics simulations, J. Comp. Chem. 30:2157-2164, 2009.
!
! J. M. Martinez and L. Martinez, 
! Packing optimization for the automated generation of complex
! system's initial configurations for molcular dynamics and
! docking. J. Comp. Chem. 24:819-825, 2003.
!
! This version of Packmol uses the optimization method GENCAN which
! is a part of the TANGO (Trustable Algorithms for Nonlinear General
! Optimization) project.
! Reference:
! E. G. Birgin, J. M. Martinez, Comp. Opt. Appl. 23:101-125, 2002.
! http://www.ime.usp.br/~egbirgin/tango
!
!

program main
use iso_fortran_env
integer :: stat
call packmol( INPUT_UNIT, stat )
if (stat == 2) stop
end program main

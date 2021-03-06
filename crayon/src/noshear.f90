! $Id: noshear.f90 10874 2009-05-17 16:34:17Z wdobler $
!
!  This modules deals with all aspects of shear; if no
!  shear is invoked, a corresponding replacement dummy
!  routine is used instead which absorbs all the calls to the
!  shear relevant subroutines listed in here.
!
module Shear
!
  use Cdata
  use Messages
  use Sub, only: keep_compiler_quiet
!
  implicit none
!
  include 'shear.h'
!
  contains
!***********************************************************************
    subroutine register_shear()
!
!  Initialise variables
!
!  2-july-02/nils: coded
!
      use Mpicomm
!
      lshear = .false.
!
!  identify version number
!
      if (lroot) call svn_id( &
           "$Id: noshear.f90 10874 2009-05-17 16:34:17Z wdobler $")
!
    endsubroutine register_shear
!***********************************************************************
    subroutine initialize_shear()
!
!  21-nov-02/tony: coded
!  17-jul-04/axel: Sshear=0 is needed for forcing_hel to work correctly.
!
      Sshear=0.0
!
    endsubroutine initialize_shear
!***********************************************************************
    subroutine read_shear_init_pars(unit,iostat)
!
      integer, intent(in) :: unit
      integer, intent(inout), optional :: iostat
!
      call keep_compiler_quiet(unit)
      if (present(iostat)) call keep_compiler_quiet(iostat)
!
    endsubroutine read_shear_init_pars
!***********************************************************************
    subroutine write_shear_init_pars(unit)
!
      integer, intent(in) :: unit
!
      call keep_compiler_quiet(unit)
!
    endsubroutine write_shear_init_pars
!***********************************************************************
    subroutine read_shear_run_pars(unit,iostat)
!
      integer, intent(in) :: unit
      integer, intent(inout), optional :: iostat
!
      call keep_compiler_quiet(unit)
      if (present(iostat)) call keep_compiler_quiet(iostat)
!
    endsubroutine read_shear_run_pars
!***********************************************************************
    subroutine write_shear_run_pars(unit)
!
      integer, intent(in) :: unit
!
      call keep_compiler_quiet(unit)
!
    endsubroutine write_shear_run_pars
!***********************************************************************
    subroutine shear_before_boundary(f)
!
!  Actions to take before boundary conditions are set.
!
!   1-may-08/anders: coded
!
      real, dimension (mx,my,mz,mfarray) :: f
!
      call keep_compiler_quiet(f)
!
    endsubroutine shear_before_boundary
!***********************************************************************
    subroutine pencil_criteria_shear()
!
!  All pencils that the Shear module depends on are specified here.
!
!  01-may-09/wlad: coded
!
    endsubroutine pencil_criteria_shear
!***********************************************************************
    subroutine pencil_interdep_shear(lpencil_in)
!
!  Interdependency among pencils from the Shear module is specified here.
!
!  01-may-09/wlad: coded
!
      logical, dimension(npencils) :: lpencil_in
!
      call keep_compiler_quiet(lpencil_in)
!
    endsubroutine pencil_interdep_shear
!***********************************************************************
    subroutine calc_pencils_shear(f,p)
!
!  Calculate Shear pencils.
!  Most basic pencils should come first, as others may depend on them.
!
!  01-may-09/wlad: coded
!
      real, dimension (mx,my,mz,mfarray) :: f
      type (pencil_case) :: p
!
      intent(in) :: f,p
!
      call keep_compiler_quiet(f)
      call keep_compiler_quiet(p)
!
    endsubroutine calc_pencils_shear
!***********************************************************************
    subroutine shearing(f,df,p)
!
!  Calculates the actual shear terms
!
!  2-july-02/nils: coded
!
      real, dimension (mx,my,mz,mfarray) :: f
      real, dimension (mx,my,mz,mvar) :: df
      type (pencil_case) :: p
!
      call keep_compiler_quiet(f)
      call keep_compiler_quiet(df)
      call keep_compiler_quiet(p)
!
    endsubroutine shearing
!***********************************************************************
    subroutine advance_shear(dt_shear)
!
!  Dummy routine: deltay remains unchanged.
!
!  18-aug-02/axel: incorporated from nompicomm.f90
!
      real :: dt_shear
!
!  Print identifier.
!
      if (headtt.or.ldebug) print*,'advance_shear: deltay=const=',deltay
!
      call keep_compiler_quiet(dt_shear)
!
    endsubroutine advance_shear
!***********************************************************************
    subroutine boundcond_shear(f,ivar1,ivar2)
!
!  Dummy routine.
!
!  01-oct-07/anders: coded
!
      real, dimension (mx,my,mz,mfarray) :: f
      integer :: ivar1, ivar2
!
      call keep_compiler_quiet(f)
      call keep_compiler_quiet(ivar1)
      call keep_compiler_quiet(ivar2)
!
    endsubroutine boundcond_shear
!***********************************************************************
    subroutine rprint_shear(lreset,lwrite)
!
!  dummy routine
!
!  02-jul-04/tobi: coded
!
      logical :: lreset
      logical, optional :: lwrite
!
      if (present(lwrite)) call keep_compiler_quiet(lreset)
!
    endsubroutine rprint_shear
!***********************************************************************
endmodule Shear

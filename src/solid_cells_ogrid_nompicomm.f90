!***********************************************************************
!  FROM NOMPICOMM.F90
!***********************************************************************
!  ROUTINE

module Solid_Cells_Mpicomm

  use Cparam

  implicit none

  include 'solid_cells_mpi.h'

  integer, parameter :: nx_ogrid=nxgrid_ogrid/nprocx,ny_ogrid=nygrid_ogrid/nprocy,nz_ogrid=nzgrid_ogrid/nprocz
  integer, parameter :: mx_ogrid=nx_ogrid+2*nghost,l1_ogrid=1+nghost,l2_ogrid=mx_ogrid-nghost
  integer, parameter :: my_ogrid=ny_ogrid+2*nghost,m1_ogrid=1+nghost,m2_ogrid=my_ogrid-nghost
  integer, parameter :: mz_ogrid=nz_ogrid+2*nghost,n1_ogrid=1+nghost,n2_ogrid=mz_ogrid-nghost

  contains 
!***********************************************************************
    subroutine initiate_isendrcv_bdry_ogrid(f)
!
!  For one processor, use periodic boundary conditions.
!  Dummy
!
      real, dimension (mx_ogrid,my_ogrid,mz_ogrid,mfarray) :: f
!
      if (ALWAYS_FALSE) print*, f
!
    endsubroutine initiate_isendrcv_bdry_ogrid
!***********************************************************************
    subroutine finalize_isendrcv_bdry_ogrid(f)
!
!  Apply boundary conditions.
!  Dummy
!
      real, dimension (mx_ogrid,my_ogrid,mz_ogrid,mfarray) :: f
!
      if (ALWAYS_FALSE) print*, f
!
    endsubroutine finalize_isendrcv_bdry_ogrid
!***********************************************************************
    subroutine isendrcv_bdry_x_ogrid(f)
!
!  Dummy
!
      real, dimension (mx_ogrid,my_ogrid,mz_ogrid,mfarray) :: f
!
      if (ALWAYS_FALSE) print *, f
!
    endsubroutine isendrcv_bdry_x_ogrid
!***********************************************************************
    subroutine finalize_isend_init_interpol(ireq1D,ireq2D,nreq1D,nreq2D)
!
!  Dummy
!
      integer :: nreq1D, nreq2D
      integer, dimension(nreq1D) :: ireq1D
      integer, dimension(nreq2D) :: ireq2D
!
      if (ALWAYS_FALSE) print *, nreq1D,nreq2D,ireq1D,ireq2D
!
    endsubroutine finalize_isend_init_interpol
!***********************************************************************
    subroutine initialize_mpicomm_ogrid
    endsubroutine initialize_mpicomm_ogrid
!***********************************************************************
end module Solid_Cells_Mpicomm

program seidel
  implicit none
  integer(8):: i,j,c,n
  real(8)::L,A,dx,k,Ta,Tb
  real(8),allocatable,dimension(:)::vx,vb,vxnew
  real(8),allocatable,dimension(:,:)::mA
!!dados do programa
  L = 0.5d0
  A = 10.d-3
  k = 1.d3
  Ta = 100.d0
  Tb = 500.d0
!!alocando vetores
  n = 5
  dx = L/dble(n)
  allocate(vx(n),vb(n),mA(n,n),vxnew(n))
    vx = 0.d0
    vb = 0.d0
    mA = 0.d0

    !!vetorB
    vb(1) = 2.d0*k*A*Ta/dx
    vb(n) = 2.d0*k*A*Ta/dx

    !!matriz A
    mA(1,1) = 3.d0*k*A*dx
    mA(1,2) = -k*A/dx
    do i =2,n-1
      mA(i,i-1) = -k*A*dx
      mA(i,i) = 2.d0*k*A/dx
      mA(i,i+1) = -k*A/dx
    enddo
    mA(n,n) = 3.d0*k*A/dx
    mA(n,n-1) = -k*A/dx

!!testando com loop o gauss-seidel
    do i=1,10
      do c=1,j-1
        vxnew(j) = ()/mA(i,i)
      enddo
    enddo

  deallocate(vx,vb,mA,vxnew)
end program

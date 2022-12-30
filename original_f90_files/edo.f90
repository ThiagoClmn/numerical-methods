program volterra

  implicit none
  integer::i,n
  real(8)::dt
  real(8),dimension(2)::vy,dvy
  dt = 0.01d0
  n = 100

!valor inicial
  vy(1)=1.d0
  vy(2)=0.9d0

!abrindo arquivo
  open(unit=10,file="out.txt",status="replace")

!metodo de euler
  do i=1,n
    call lotka(vy,dvy)
    vy = vy + dt*dvy
    write(unit=*,fmt=*) vy(1),vy(2)
    write(unit=10,fmt=*) vy(1),vy(2)
  enddo
  close(unit=10)
end program volterra


! Função da EDO de LOtka-Volterra
subroutine lotka(vz,dvz)
  implicit none
  real(8)::a,b,g,d
  real(8),dimension(2)::vz,dvz
  a = 1.d0
  b = 1.d0
  g = 1.d0
  d = 1.d0
  dvz(1) = vz(1)*(a-b*vz(2))
  dvz(2) = vz(2)*(d*vz(1)-g)
end subroutine


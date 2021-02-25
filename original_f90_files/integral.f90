program erro
  implicit none
  integer::i,n
  real(8)::funcao,x,Itr,Itrnew,soma,dx,a,b,eps,tol
  tol = 1.d-6
  a = 0.d0
  b = 0.5d0
  n = 2
  dx = (b-a)/dble(n)   !dble() --> converte int pra double
  soma = (funcao(a) + funcao(b))/2.d0 + funcao((a+b)/2)
  Itrnew = soma*dx
  write (unit=*,fmt=*) Itrnew
  eps = 1.d0
  do while (eps.gt.tol)
    Itr = Itrnew 
    dx = dx/2.d0
    n = 2*n
    do i=1,n-1,2
      soma = soma + funcao(dble(i)*dx) 
    enddo
    Itrnew = soma*dx
    eps = dabs(Itrnew - Itr)
    write(unit=*,fmt=*) n,Itr,eps
  enddo


end program erro

!subrot: programa q tu chama
!function: atribuida a uma var no programa 
!toda função tem um tipo

real(8) function funcao(x)
  implicit none
  real(8)::x,pi
  pi = dacos(-1.d0)
  funcao = 2.d0*dexp(-x**2.d0)/dsqrt(pi)
end function 

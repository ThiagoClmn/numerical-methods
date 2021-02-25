program erro
  implicit none
  integer::i,n
  real(8)::funcao,x,Itr,dx,a,b,pi

!variaveis
  pi = dacos(-1.d0)
  a = 0.d0
  b = 0.5d0
  n = 100000

!metodo do trapezio
  dx = (b-a)/dble(n)   !dble() --> converte int pra double
  Itr = (funcao(a) + funcao(b))/2.d0
  do i=1,n-1
    Itr = Itr + funcao(dble(i)*dx)
  enddo
  Itr = Itr*dx/dsqrt(pi)
  write(unit=*,fmt=*) Itr



end program erro

! subrotina e função: diferenças
!subrotina é um programa que necessita de uma chamada
!funcão deve ser atribuida a uma variavel no programa, toda função tem um tipo

real(8) function funcao(x)
  implicit none
  real(8)::x
  funcao = 2.d0*dexp(-x**2.d0)
end function 

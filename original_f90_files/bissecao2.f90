program bissecao
  implicit none
  integer::i,n,m
  real(8)::a,fa,b,fb,x,fx,tol,col,eD,Re
  !!!!!!!!!!!!!!!!!!!!
  !Método da Bisseção!
  !!!!!!!!!!!!!!!!!!!!
    open(unit=10,file="in.dat",status="old")
    read(unit=10,fmt=*)eD
    close(unit=10)
    open(unit=10,file="out.dat",status="replace")
    Re=1.d3
    do m=1,8
      !Re=Re*10.d0
      if(mod(m,2).ne.0.d0)then
        Re=Re*5.d0
      else
        Re=Re*2.d0
      endif
      a=0.008d0
      b=0.08d0
      fa=col(eD,Re,a)
      fb=col(eD,Re,b)
      tol=1.d-8
      n=nint(dlog10((b-a)/tol)/dlog10(2.d0))
      do i=1,n
        x=(a+b)/2.d0
        fx=col(eD,Re,x)
        if(fa*fx.lt.0.d0)then
          b=x
          fb=fx
        else
          a=x
          fa=fx
        endif
    enddo
    write(unit=10,fmt=*)Re,x
  enddo
  close(unit=10)
end program bissecao

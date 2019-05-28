subroutine trapecio(a, b, h, n)
  IMPLICIT NONE
  Real(16), INTENT(in):: a,b, h
  INTEGER, INTENT(in):: n
  REAL(16), external:: func
  REAL(16):: resultado
  INteger:: i
  Real(16):: termino
  termino=0
  Do i=1, n-1
     termino=termino+func(a+i*h)
  END DO

  resultado = (h/2)*(func(a)+func(b)+(2*termino))
  write(*,*) resultado
END subroutine trapecio

    

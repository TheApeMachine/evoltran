program evoltran

  implicit none

  character(255) :: in

  write (*,*) "evoltran"
  write (*,*) "v0.1b"
  write (*,*)

  do
    write (*,fmt="(1x, a, i0)", advance="no") "evol> "
    read (*,*) in

    call lexer(in)
  end do

end program

subroutine lexer(in)
  implicit none

  character(255) :: in
  print *, in

end subroutine

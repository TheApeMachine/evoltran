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
  character(5) :: word(5)
  integer :: pos1 = 1, pos2, n = 0, i

  do
    pos2 = index(in(pos1:), " ")

    if (pos2 == 0) then
      n = n + 1
      word(n) = in(pos1:)
      exit
    end if

    n = n + 1
    word(n) = in(pos1:pos1+pos2-2)
    pos1 = pos2 + pos1
  end do

  do i = 1, n
    write(*, "(2A)", advance="no") trim(word(i)), "."
  end do

end subroutine

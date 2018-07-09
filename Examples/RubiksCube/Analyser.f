!
! The Laboratory of Algorithms
!
! The MIT License
!
! Copyright 2011-2018 Andrey Pudov.
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the 'Software'), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in
! all copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
! THE SOFTWARE.
!

module MERubiksCubeAnalyser

    use MERubiksCubeCube
    use MERubiksCubeCommon

    implicit none
    private

    type, public :: TEAnalyser
    contains
        procedure, nopass :: cubiclesRate
    end type

contains
    ! total number of cubicles related to their side
    function cubiclesRate(cube) result(value)
        class(TECube), intent(in) :: cube
        integer value

        value = count(cube%cube(1:3, 1:3, WHITE) == WHITE) &
            + count(cube%cube(1:3, 1:3, BLUE) == BLUE) &
            + count(cube%cube(1:3, 1:3, RED) == RED) &
            + count(cube%cube(1:3, 1:3, GREEN) == GREEN) &
            + count(cube%cube(1:3, 1:3, ORANGE) == ORANGE) &
            + count(cube%cube(1:3, 1:3, YELLOW) == YELLOW)
    end function
end module
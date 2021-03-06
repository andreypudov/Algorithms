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

module MERubiksCubeCommon

    implicit none
    public

    integer, parameter :: LENGTH_OF_SIDE     = 3
    integer, parameter :: NUMBER_OF_SIDES    = 6
    integer, parameter :: NUMBER_OF_CUBICLES = LENGTH_OF_SIDE * LENGTH_OF_SIDE * NUMBER_OF_SIDES

    integer, parameter :: R = 1, RED    = 1
    integer, parameter :: W = 2, WHITE  = 2
    integer, parameter :: B = 3, BLUE   = 3
    integer, parameter :: Y = 4, YELLOW = 4
    integer, parameter :: G = 5, GREEN  = 5
    integer, parameter :: O = 6, ORANGE = 6

    integer, parameter :: R_CW  =  RED,    RED_CW     =  RED
    integer, parameter :: R_CCW = -RED,    RED_CCW    = -RED
    integer, parameter :: W_CW  =  WHITE,  WHITE_CW   =  WHITE
    integer, parameter :: W_CCW = -WHITE,  WHITE_CCW  = -WHITE
    integer, parameter :: B_CW  =  BLUE,   BLUE_CW    =  BLUE
    integer, parameter :: B_CCW = -BLUE,   BLUE_CCW   = -BLUE
    integer, parameter :: Y_CW  =  YELLOW, YELLOW_CW  =  YELLOW
    integer, parameter :: Y_CCW = -YELLOW, YELLOW_CCW = -YELLOW
    integer, parameter :: G_CW  =  GREEN,  GREEN_CW   =  GREEN
    integer, parameter :: G_CCW = -GREEN,  GREEN_CCW  = -GREEN
    integer, parameter :: O_CW  =  ORANGE, ORANGE_CW  =  ORANGE
    integer, parameter :: O_CCW = -ORANGE, ORANGE_CCW = -ORANGE

    ! the set of supported rotations
    character(len=2), parameter, dimension(-6:6) :: CUBE_ROTATIONS = &
            ['O-', 'G-', 'Y-', 'B-', 'W-', 'R-', ' ', 'R', 'W', 'B', 'Y', 'G', 'O']

    ! the set of colors
    character, parameter, dimension(0:6) :: CUBE_COLORS = [' ', 'R', 'W', 'B', 'Y', 'G', 'O']

    ! 30 - black    35 - purple        93 - light yellow
    ! 31 - red      36 - aqua          94 - light blue
    ! 32 - green    90 - dark grey     95 - pink
    ! 33 - yellow   91 - peach         96 - light aqua
    ! 34 - blue     92 - light green   97 - pearl white
    character(len=10), parameter, dimension(0:6) :: COLORIFY = &
           [achar(27) // '[34m ' // achar(27) // '[0m', &
            achar(27) // '[31mR' // achar(27) // '[0m', &
            achar(27) // '[97mW' // achar(27) // '[0m', &
            achar(27) // '[34mB' // achar(27) // '[0m', &
            achar(27) // '[33mY' // achar(27) // '[0m', &
            achar(27) // '[32mG' // achar(27) // '[0m', &
            achar(27) // '[35mO' // achar(27) // '[0m']

    logical, parameter :: SOLUTION_FOUND     = .true.
    logical, parameter :: SOLUTION_NOT_FOUND = .false.
end module

!
! The Laboratory of Algorithms
!
! The MIT License
!
! Copyright 2011-2016 Andrey Pudov.
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

submodule (Foundation) FoundationString
contains
    module subroutine initWithFormat(self)
        class(String), intent(in out) :: self
    end subroutine

    module subroutine initWithFString(self, text)
        class(String), intent(in out) :: self
        character(len=*), intent(in)  :: text

        allocate(self%data, source = text)
    end subroutine

    module function getFString(self) result(value)
        class(String), target, intent(in) :: self
        character(len=:), pointer         :: value

        value => self%data
    end function

    module function length(self) result(value)
        class(String), intent(in) :: self
        integer :: value

        value = len(self%data)
    end function

    module subroutine assign_fstring(instance, text)
        class(String), intent(out)   :: instance
        character(len=*), intent(in) :: text

        if (allocated(instance%data)) then
            deallocate(instance%data)
        end if

        call initWithFString(instance, text)
    end subroutine
end submodule

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

submodule (Foundation) Object
contains
    module subroutine object_init(self)
        class(Object), intent(in out) :: self
    end subroutine

    module subroutine object_destroy(self)
        class(Object), intent(in out) :: self
    end subroutine

    module function object_equals(self, any) result(value)
        class(Object), target, intent(in) :: self
        class(Object), target, intent(in) :: any
        logical :: value

        class(Object), pointer :: any_pointer
        any_pointer => any

        value = associated(any_pointer, self)
    end function

    module function object_description(self) result(value)
        class(Object), intent(in) :: self
        type(String) :: value

        type(String) string

        value = string
    end function
end submodule



	implicit none

	real*8 :: x(1:100000),T(1:100000),temp,y,T1
	integer*8 :: i,j,k,itype

	T1 = 300

	open(2,file='temperature_data.dat',action='write')

	write(*,*) 'do you want to run in sqaure temperature profile or gaussian profile?'
	write(*,*) 'for gaussian , type 1 , and for square, type 2 '
	read(*,*) itype

	do i=1,40

	   do j=1,625

		y = j*0.01d0 + (i-1)*6.25
		!if(j.ge.470.and.j.le.590) then

		if(itype.eq.1)	 write(2,*) y,temp(y)
		if(itype.eq.2)   then
			if(y.gt.6.2134*i-1.1d0.and.y.lt.6.2134*i-0.1d0) then
				write(2,*) y,'300'
			else
				write(2,*) y,'300'
			endif
		endif

		!else

		!	!write(2,*) y,T1

		!endif

	   enddo !j

	enddo !i


	end

	real*8 function temp(x)

	real*8 :: x,a,b,c,fwhm,d,sigma
	integer*8 :: i

	fwhm = 0.6d0 ; sigma = fwhm / 2.355d0 ; d = 1/(sigma*sqrt(2*3.14)) ; b = 1.0 / (2.0d0*sigma*sigma) ; c = 0.67d0

	temp = d*(exp(-b*(x-(6.2134d0*1-c))**2)+exp(-b*(x-(6.2134d0*2-c))**2)+exp(-b*(x-(6.2134d0*3-c))**2)   &
		+ exp(-b*(x-(6.2134d0*4-c))**2)+exp(-b*(x-(6.2134d0*5-c))**2)+exp(-b*(x-(6.2134d0*6-c))**2) &
		+ exp(-b*(x-(6.2134d0*7-c))**2)+exp(-b*(x-(6.2134d0*8-c))**2)+exp(-b*(x-(6.2134d0*9-c))**2) &
		+ exp(-b*(x-(6.2134d0*10-c))**2)+exp(-b*(x-(6.2134d0*11-c))**2)+exp(-b*(x-(6.2134d0*12-c))**2) &
		+ exp(-b*(x-(6.2134d0*13-c))**2)+exp(-b*(x-(6.2134d0*14-c))**2)+exp(-b*(x-(6.2134d0*15-c))**2) &
		+ exp(-b*(x-(6.2134d0*16-c))**2)+exp(-b*(x-(6.2134d0*17-c))**2)+exp(-b*(x-(6.2134d0*18-c))**2) &
		+ exp(-b*(x-(6.2134d0*19-c))**2)+exp(-b*(x-(6.2134d0*20-c))**2)+exp(-b*(x-(6.2134d0*21-c))**2) &
		+ exp(-b*(x-(6.2134d0*22-c))**2)+exp(-b*(x-(6.2134d0*23-c))**2)+exp(-b*(x-(6.2134d0*24-c))**2) &
		+ exp(-b*(x-(6.2134d0*25-c))**2)+exp(-b*(x-(6.2134d0*26-c))**2)+exp(-b*(x-(6.2134d0*27-c))**2) &
		+ exp(-b*(x-(6.2134d0*28-c))**2)+exp(-b*(x-(6.2134d0*29-c))**2)+exp(-b*(x-(6.2134d0*30-c))**2) &
		+ exp(-b*(x-(6.2134d0*31-c))**2)+exp(-b*(x-(6.2134d0*32-c))**2)+exp(-b*(x-(6.2134d0*33-c))**2) &
		+ exp(-b*(x-(6.2134d0*34-c))**2)+exp(-b*(x-(6.2134d0*35-c))**2)+exp(-b*(x-(6.2134d0*36-c))**2) &
		+ exp(-b*(x-(6.2134d0*37-c))**2)+exp(-b*(x-(6.2134d0*38-c))**2)+exp(-b*(x-(6.2134d0*39-c))**2) &
		+ exp(-b*(x-(6.2134d0*40-c))**2))*21d0 + 300.0d0

	return

	end

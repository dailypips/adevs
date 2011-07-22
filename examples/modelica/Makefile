# GNU gcc compiler
CFLAGS = -g -fopenmp -Wall -I../../include ${OMINCLUDE} -Wl,--unresolved-symbols=ignore-all
CC = g++44
OMHOME=${HOME}/development/openmodelica/trunk/build
OMINCLUDE=-I${OMHOME}/include/omc
OMLIBS=-L${OMHOME}/lib/omc -L../../src -ladevs -llapack -lf2c 

hello:
	omc +s +simCodeTarget=Adevs HelloWorld.mo 
	${CC} ${CFLAGS} main_hello.cpp HelloWorld.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_hello.mos

influenza:
	omc +s +simCodeTarget=Adevs Influenza.mo
	${CC} ${CFLAGS} main_influenza.cpp Influenza.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_Influenza.mos

bounce:
	omc +s +simCodeTarget=Adevs Bounce.mo
	${CC} ${CFLAGS} main_bounce.cpp Bounce.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_bounce.mos

ball:
	omc +s +simCodeTarget=Adevs BouncingBall.mo
	${CC} ${CFLAGS} main_bouncing_ball.cpp BouncingBall.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_BouncingBall.mos

vanderpol:
	omc +s +simCodeTarget=Adevs VanDerPol.mo
	${CC} ${CFLAGS} main_vanderpol.cpp VanDerPol.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_van.mos

dcm:
	omc +s +simCodeTarget=Adevs dcmotor.mo Modelica
	${CC} ${CFLAGS} main_dcmotor.cpp dcmotor.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_dcmotor.mos

robot:
	omc +s +simCodeTarget=Adevs Robot.mo 
	${CC} ${CFLAGS} Robot.cpp main_robot.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_robot.mos

tank:
	omc +s +simCodeTarget=Adevs Tank.mo Modelica
	${CC} ${CFLAGS} Tank.cpp main_tank.cpp ${OMLIBS} 
	./a.out 1 1 > soln
	omc sim_tank.mos

pendulum:
	omc +s +simCodeTarget=Adevs Pendulum.mo
	${CC} ${CFLAGS} Pendulum.cpp main_pendulum.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_pendulum.mos

nonlinearmixed:
	omc +s +simCodeTarget=Adevs NonlinearMixed.mo
	${CC} ${CFLAGS} NonlinearMixed.cpp main_nonlinearmixed.cpp ${OMLIBS} 
	./a.out > soln
	omc sim_nonlinearmixed.mos

clean:
	rm -f a.out soln *.h *.c *.xml *.mat *.libs *.makefile *.log *.plt *.o
	rm -f Bounce.cpp Bounce 
	rm -f Influenza.cpp Influenza 
	rm -f HelloWorld.cpp HelloWorld 
	rm -f VanDerPol.cpp VanDerPol 
	rm -f dcmotor.cpp dcmotor 
	rm -f Robot.cpp Robot 
	rm -f Tank.cpp Tank
	rm -f Pendulum.cpp Pendulum
	rm -f NonlinearMixed.cpp NonlinearMixed
	rm -f BouncingBall.cpp BouncingBall
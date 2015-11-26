################################################################################
#Applications Top Makefile.
################################################################################
subdirs =Svar_Test Timer_Test CameraTest

#  IMU_Test
all : $(subdirs)
	@for dir in $(subdirs);do \
	make -C $$dir --no-print-directory; done

clean :$(subdirs)
	@for dir in $(subdirs);do \
	make clean -C $$dir; done


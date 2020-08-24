HEAD	=header.v

VLOG	=ncverilog

SRC		=MM.v\
		 MM_tb.v

SRC_syn	=MM_syn.v\
		 MM_tb.v\
		 -v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v

SDF		=+define+SDF

TMPFILE	=*.log\
		 INCA_libs

RM		=-rm -rf

VLOGARG =+access+r\

all :: sim
sim:
	$(VLOG) $(HEAD) $(SRC) $(VLOGARG)
syn:
	$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(VLOGARG)
check:
	$(VLOG) -c $(SRC)
clean:
	$(RM) $(TMPFILE)


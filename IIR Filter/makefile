HEAD		=header.v
VLOG		=ncverilog

SRC			=IIR.v\
			testbench.v

SRC_syn		 =IIR_syn.v\
			testbench.v\
			-v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v
			
SDF			=+define+SDF

Pno_ok		=+define+PNO

Gtr_ok		=+define+GTR

Test_ok		=+define+TEST

TMPFILE		=*.log\
			 INCA_libs

RM 			=-rm -rf

VLOGARG     =+access+r\

all :: VIO
VIO :
		$(VLOG) $(HEAD) $(SRC) $(VLOGARG)

PNO :
		$(VLOG) $(HEAD) $(SRC) $(Pno_ok) $(VLOGARG)

GTR :
		$(VLOG) $(HEAD) $(SRC) $(Gtr_ok) $(VLOGARG)

TEST :
		$(VLOG) $(HEAD) $(SRC) $(Test_ok) $(VLOGARG)

syn_VIO :
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(VLOGARG)

syn_PNO :
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(Pno_ok) $(VLOGARG)

syn_GTR :
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(Gtr_ok) $(VLOGARG)

syn_TEST :
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(Test_ok) $(VLOGARG)


check :
		$(VLOG) -c $(SRC)
clean :
		$(RM) $(TMPFILE)

flush :
		rm -rf .DS_Store *.rc *.pvl *.mr *.syn *.sdf *.sdf.X *.svf nWaveLog *.conf


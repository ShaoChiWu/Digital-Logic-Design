HEAD		=header.v

VLOG		=ncverilog

SRC			=Bubble.v\
			 Bubble_tb.v

SRC_syn	=	Bubble_syn.v\
			Bubble_tb.v\
        	-v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v

SDF			=+define+SDF

TEST1	    =+define+TEST1

TEST2	    =+define+TEST2


TMPFILE		=*.log\
			 INCA_libs

RM 			=-rm -rf

all :: sim1

sim1 :
		$(RM) $(TMPFILE)
		$(VLOG) $(HEAD) $(SRC) $(TEST1) +access+r
sim2 :
		$(RM) $(TMPFILE)
		$(VLOG) $(HEAD) $(SRC) $(TEST2) +access+r

syn1 :
		$(RM) $(TMPFILE)
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(TEST1) +access+r

syn2 :
		$(RM) $(TMPFILE)
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(TEST2) +access+r

check :
		$(VLOG) -c $(SRC)

clean :
		$(RM) $(TMPFILE)


all: FSM_Digicode_loon.vst

FSM_Digicode_loon.vst: FSM_Digicode_boog.vst
	loon FSM_Digicode_boog_a FSM_Digicode_loon_a
	loon FSM_Digicode_boog_j FSM_Digicode_loon_j
	loon FSM_Digicode_boog_m FSM_Digicode_loon_m
	loon FSM_Digicode_boog_o FSM_Digicode_loon_o
	loon FSM_Digicode_boog_r FSM_Digicode_loon_r

FSM_Digicode_boog.vst: FSM_Digicode_boom.vbe
	export MBK_IN_LO=vst;\
	export MBK_OUT_LO=vst;\
	boog FSM_Digicode_boom_a FSM_Digicode_boog_a
	boog FSM_Digicode_boom_j FSM_Digicode_boog_j
	boog FSM_Digicode_boom_m FSM_Digicode_boog_m
	boog FSM_Digicode_boom_o FSM_Digicode_boog_o
	boog FSM_Digicode_boom_r FSM_Digicode_boog_r

FSM_Digicode_boom.vbe: FSM_Digicode_syf.vbe
	boom -V FSM_Digicode_syf_a FSM_Digicode_boom_a
	boom -V FSM_Digicode_syf_j FSM_Digicode_boom_j
	boom -V FSM_Digicode_syf_m FSM_Digicode_boom_m
	boom -V FSM_Digicode_syf_o FSM_Digicode_boom_o
	boom -V FSM_Digicode_syf_r FSM_Digicode_boom_r

FSM_Digicode_syf.vbe: FSM_Digicode.fsm
	syf -CVE -a FSM_Digicode.fsm FSM_Digicode_syf_a
	syf -CVE -j FSM_Digicode.fsm FSM_Digicode_syf_j
	syf -CVE -m FSM_Digicode.fsm FSM_Digicode_syf_m
	syf -CVE -o FSM_Digicode.fsm FSM_Digicode_syf_o
	syf -CVE -r FSM_Digicode.fsm FSM_Digicode_syf_r

resultat_pat: FSM_Digicode_loon.vst
	asimut FSM_Digicode_loon_a Digicode resultat_pat_a
	asimut FSM_Digicode_loon_j Digicode resultat_pat_j
	asimut FSM_Digicode_loon_m Digicode resultat_pat_m
	asimut FSM_Digicode_loon_o Digicode resultat_pat_o
	asimut FSM_Digicode_loon_r Digicode resultat_pat_r

xpat:
	xpat -l resultat_pat_a resultat_pat_m resultat_pat_j resultat_pat_o resultat_pat_r

#xsch:
#	xsch

clean:
	rm -rf FSM_Digicode_* resultat_pat_*

#syf -CVE -o compteur_3_1.fsm compteur_syf
#boom compteur_syf compteur_boom
#boog compteur_boom compteur_boog
#loon compteur_boog compteur_loon

#xsch
#		--> Literals : 61 option -o // les autres 58 // 60 pour -r


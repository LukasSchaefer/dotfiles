#!/bin/zsh

source ~/dotfiles/functions
selectstreams(){

select STREAM in quit lol dota cs other all
do
	case "$STREAM" in
		
		quit)
			return
			;;
	
		lol) 
			print "0) quit"
			print "1) Riotgames: riot, Riotgames"
			print "2) SummonersInnLive: gerlcs, summonersinnlive"
			print "3) esl_summonersinn: maxim, suminn"
			print "4) esl_lol: esllol, lolesl, esl_lol"
			print "5) Nightblue3: nb3, nightblue, nightblue3"
			print "6) SirhcEz: sirhcez, sirhcEz"
			print "7) PhreakStream: phreakstream, phreak"
			print "8) Cyanide: cyanide"
			print "9) Trick2g: trick, trick2g"
			print "10) Meteos: meteos"
			print "11) TSM_Bjergsen: bjerg, bjergsen"
			print "12) Zionspartan: zion, zionspartan"
			
			read WISH			

			case "$WISH" in

				0) return ;;
				1) livestream Riotgames 
					return
					;;
				2) livestream SummonersInnLive
					return
					;;
				3) livestream esl_summonersinn
					return
					;;
				4) livestream esl_lol
					return
					;;
				5) livestream Nightblue3
					return
					;;
				6) livestream SirhcEz
					return
					;;
				7) livestream PhreakStream
					return	
					;;
				8) livestream Cyanide
					return	
					;;
				9) livestream Trick2g
					return
					;;
				10) livestream Meteos
					return
					;;
				11) livestream TSM_Bjergsen
					return
					;;
				12) livestream Zionspartan
					return
					;;

			esac

		;;

		dota)
			print "0) quit"
			print "1) dota2ti: ti, dota2ti"
			print "2) dota2ti_newcomer: dota2newcomer, dota2tinewcomer, dota2ti_newcomer"

			read WISH

			case "$WISH" in

				0) return ;;
				1) livestream dota2ti
					return
					;;
				2) livestream dota2ti_newcomer
					return
					;;

			esac

			;;

		cs)
			print "0) quit"
			print "1) esl_csgo: csesl, eslcs, esl_csgo"
			print "2) FragbiteLive: fragbite, fragbitelive"
			print "3) FACEITTV: face, faceit, faceittv"
			print "4) Summit1g: summit, summit1g"

			read WISH

			case "$WISH" in

				0) return ;;
				1) livestream esl_csgo
					return
					;;
				2) livestream FragbiteLive
					return
					;;
				3) livestream FACEITTV
					return
					;;
				4) livestream Summit1g
					return
					;;

			esac

			;;

		other)
			print "0) quit"
			print "1) Kyleandrypiano: kyle, kylean, kyleandry, kyleandrypiano, kylepiano"
			print "2) Sodapoppin: soda, sodapoppin"
			print "3) GamesDoneQuick: gdq, gamesdonequick"
			print "4) Pewdiepie: pew, pewdiepie"

			read WISH

			case "$WISH" in

				0) return ;;
				1) livestream Kyleandrypiano
					return
					;;
				2) livestream Sodapoppin
					return
					;;
				3) livestream GamesDoneQuick
					return
					;;			
				4) livestream Pewdiepie
					return
					;;

			esac

			;;

		

		all)
			print "0) quit"
			print "1) Riotgames: riot, Riotgames"
			print "2) SummonersInnLive: gerlcs, summonersinnlive"
			print "3) esl_summonersinn: maxim"
			print "4) esl_lol: esllol, lolesl, esl_lol"
			print "5) Nightblue3: nb3, nightblue, nightblue3"
			print "6) SirhcEz: sirhcez, SirhcEz"
			print "7) PhreakStream: phreakstream, phreak"
			print "8) Cyanide: cyanide"
			print "9) Trick2g: trick, trick2g"
			print "10) Meteos: meteos"
			print "11) TSM_Bjergsen: bjerg, bjergsen"
			print "12) Zionspartan: zion, zionspartan" 
			print "13) dota2ti: ti, dota2ti"
			print "14) dota2ti_newcomer: dota2newcomer, dota2tinewcomer, dota2ti_newcomer"
			print "15) esl_csgo: csesl, eslcs, esl_csgo"
			print "16) FragbiteLive: fragbite, fragbitelive"
			print "17) FACEITTV: face, faceit, faceittv"
			print "18) Summit1g: summit, summit1g"
			print "19) Kyleandrypiano: kyle, kylean, kyleandry, kyleandrypiano, kylepiano"
			print "20) Sodapoppin: soda, sodapoppin"
			print "21) GamesDoneQuick: gdq, gamesdonequick"
			print "22) Pewdiepie: pew, pewdiepie"
			

			read WISH

			case "$WISH" in

				0) return ;;
				1) livestream Riotgames 
					return
					;;
				2) livestream SummonersInnLive
					return
					;;
				3) livestream esl_summonersinn
					return
					;;
				4) livestream esl_lol
					return
					;;
				5) livestream Nightblue3
					return
					;;
				6) livestream SirhcEz
					return
					;;
				7) livestream PhreakStream
					return	
					;;
				8) livestream Cyanide
					return	
					;;
				9) livestream Trick2g
					return
					;;
				10) livestream Meteos
					return
					;;
				11) livestream TSM_Bjergsen
					return
					;;
				12) livestream Zionspartan
					return
					;;
				13) livestream dota2ti
					return
					;;
				14) livestream dota2ti_newcomer
					return
					;;
				15) livestream esl_csgo
					return
					;;
				16) livestream FragbiteLive
					return
					;;
				17) livestream FACEITTV
					return
					;;
				18) livestream Summit1g
					return
					;;
				19) livestream Kyleandrypiano
					return
					;;
				20) livestream Sodapoppin
					return
					;;
				21) livestream GamesDoneQuick
					return
					;;
				22) livestream Pewdiepie
					return
					;;

			esac
				
			;;

		*)
			echo "invalid argument!"
			return
			;;

	esac

done

}
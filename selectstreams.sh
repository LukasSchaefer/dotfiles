#!/bin/zsh

source ~/dotfiles/functions

# Script to start various twitch streams with the help of livestream and a select/case implementation
# while listing the alias for all the streams 

selectstreams(){

# First we can select different groups of streams divided into games finished off by the option to
# show all streams or alternatively quit the script

select STREAM in quit lol dota cs other all
do
	# now the different cases with the categories from above are executed. While quit is fairly simple
	# the other cases first print the multiple streams of this category (or all in the case of the all
	# option) with its alias and then they give the option to start the streams with the help of
	# another case function again with the option to quit.

	case "$STREAM" in 
		
		quit)
			return
			;;
	
		lol) 
			print "0) quit"
			print "1) Riotgames: riot, Riotgames"
			print "2) SummonersInnLive: gerlcs, summonersinnlive"
			print "3) esl_summonersinn: maxim, suminn"
            print "4) kev1ntv: kevin"
			print "5) esl_lol: esllol, lolesl, esl_lol"
			print "6) Nightblue3: nb3, nightblue, nightblue3"
            print "7) imaqtpie: qtpie"
			print "8) SirhcEz: sirhcez, sirhcEz"
			print "9) PhreakStream: phreakstream, phreak"
			print "10) Cyanide: cyanide"
			print "11) Trick2g: trick, trick2g"
            print "12) C9Sneaky: c9sneaky, sneaky"
			print "13) Meteos: meteos"
			print "14) TSM_Bjergsen: bjerg, bjergsen"
			print "15) Zionspartan: zion, zionspartan"
			
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
                4) livestream kev1ntv
                    return
                    ;;
				5) livestream esl_lol
					return
					;;
				6) livestream Nightblue3
					return
					;;
                7) livestream imaqtpie
                    return
                    ;;
				8) livestream SirhcEz
					return
					;;
				9) livestream PhreakStream
					return	
					;;
				10) livestream Cyanide
					return	
					;;
				11) livestream Trick2g
					return
					;;
                12) livestream c9sneaky
                    return
                    ;;
				13) livestream Meteos
					return
					;;
				14) livestream TSM_Bjergsen
					return
					;;
				15) livestream Zionspartan
					return
					;;
				*) echo "invalid argument!"
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
				*) echo "invalid argument!"
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
				*) echo "invalid argument!"
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
				*) echo "invalid argument!"
				   return
				   ;;

			esac

			;;

		

		all)
			print "0) quit"
			print "1) Riotgames: riot, Riotgames"
			print "2) SummonersInnLive: gerlcs, summonersinnlive"
			print "3) esl_summonersinn: maxim, suminn"
            print "4) kev1ntv: kevin"
			print "5) esl_lol: esllol, lolesl, esl_lol"
			print "6) Nightblue3: nb3, nightblue, nightblue3"
            print "7) imaqtpie: qtpie"
			print "8) SirhcEz: sirhcez, sirhcEz"
			print "9) PhreakStream: phreakstream, phreak"
			print "10) Cyanide: cyanide"
			print "11) Trick2g: trick, trick2g"
            print "12) C9Sneaky: c9sneaky, sneaky"
			print "13) Meteos: meteos"
			print "14) TSM_Bjergsen: bjerg, bjergsen"
			print "15) Zionspartan: zion, zionspartan"
			print "16) dota2ti: ti, dota2ti"
			print "17) dota2ti_newcomer: dota2newcomer, dota2tinewcomer, dota2ti_newcomer"
			print "18) esl_csgo: csesl, eslcs, esl_csgo"
			print "19) FragbiteLive: fragbite, fragbitelive"
			print "20) FACEITTV: face, faceit, faceittv"
			print "21) Summit1g: summit, summit1g"
			print "22) Kyleandrypiano: kyle, kylean, kyleandry, kyleandrypiano, kylepiano"
			print "23) Sodapoppin: soda, sodapoppin"
			print "24) GamesDoneQuick: gdq, gamesdonequick"
			print "25) Pewdiepie: pew, pewdiepie"
			

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
                4) livestream kev1ntv
                    return
                    ;;
				5) livestream esl_lol
					return
					;;
				6) livestream Nightblue3
					return
					;;
                7) livestream imaqtpie
                    return
                    ;;
				8) livestream SirhcEz
					return
					;;
				9) livestream PhreakStream
					return	
					;;
				10) livestream Cyanide
					return	
					;;
				11) livestream Trick2g
					return
					;;
                12) livestream c9sneaky
                    return
                    ;;
				13) livestream Meteos
					return
					;;
				14) livestream TSM_Bjergsen
					return
					;;
				15) livestream Zionspartan
					return
					;;
				16) livestream dota2ti
					return
					;;
				17) livestream dota2ti_newcomer
					return
					;;
				18) livestream esl_csgo
					return
					;;
				19) livestream FragbiteLive
					return
					;;
				20) livestream FACEITTV
					return
					;;
				21) livestream Summit1g
					return
					;;
				22) livestream Kyleandrypiano
					return
					;;
				23) livestream Sodapoppin
					return
					;;
				24) livestream GamesDoneQuick
					return
					;;
				25) livestream Pewdiepie
					return
					;;
				*) echo "invalid argument!"
				   return
				   ;;

			esac
				
			;;

		# Short error message in case of an invalid argument
		*)
			echo "invalid argument!"
			return
			;;

	esac

done

}

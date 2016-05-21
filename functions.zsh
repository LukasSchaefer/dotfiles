# Web function to open Websites
web(){
	if [ "$1" = "reddit" ]; then
		if [ "$2" = "headphones" ]; then
			open 'http://www.reddit.com/r/headphones/'
			return
		fi
		if [ "$2" = "headphone" ]; then
			open 'http://www.reddit.com/r/headphones/'
			return
		fi
		if [ "$2" = "lol" ]; then
			open 'http://www.reddit.com/r/leagueoflegends/'
			return
		fi
		if [ "$2" = "csgo" ]; then
			open 'http://www.reddit.com/r/globaloffensive/'
			return
		fi
		if [ "$2" = "mechanicalkeyboards" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "mechs" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "keyboard" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "keyboards" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		open 'http://www.reddit.com/r/Dashboard/'
		return
	fi

	if [ "$1" = "youtube" ]; then
		if [ "$2" = "watchlater" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		if [ "$2" = "wl" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		open 'https://www.youtube.com/?gl=DE&hl=de'
		return
	fi

    if [ "$1" = "proxer" ]; then
        open 'http://proxer.me/anime/animeseries/rating/all#top'
        return
    fi

    if [ "$1" = "alluc" ]; then
        open 'http://www.alluc.ee'
        return
    fi

# Still to fill!!!!
# _____________________________________________________________________________________________
	if [ "$1" = "prog" ] || [ "$1" = "prog2" ]; then
        open 'https://prog2.cs.uni-saarland.de/ss16/'
        return
	fi

	if [ "$1" = "mfi" ] || [ "$1" = "mfi2" ]; then
        open 'https://www.mpi-inf.mpg.de/de/departments/algorithms-complexity/teaching/summer16/mathematik-fuer-informatiker-2/'
        return
	fi

    if [ "$1" = "sysarch" ]; then
        open 'https://sysarch.cdl.uni-saarland.de/ss16/'
        return
    fi

    if [ "$1" = "esem" ]; then
        open 'http://esem.bsz-bw.de/sulb/'
        return
    fi

    if [ "$1" = "netflix" ]; then
		open 'http://www.netflix.com'
		return
	fi

	if [ "$1" = "gh" ] || [ "$1" = "github" ]; then
		open 'https://github.com/LukasStudent'
		return
	fi

    if [ "$1" = "twitch" ]; then
		open 'http://www.twitch.tv'
		return
	fi

	echo "invalid input after function call"
}

# web_search from terminal
alias bing='web_search bing'
alias google='web_search google'
alias yahoo='web_search yahoo'
alias ddg='web_search duckduckgo'
alias yandex='web_search yandex'
alias github='web_search github'
alias baidu='web_search baidu'
alias ecosia='web_search ecosia'
#add your own !bang searches here
alias wiki='web_search duckduckgo \!w'
alias news='web_search duckduckgo \!n'
alias youtube='web_search duckduckgo \!yt'
alias map='web_search duckduckgo \!m'
alias image='web_search duckduckgo \!i'
alias ducky='web_search duckduckgo \!'

function web_search() {
  emulate -L zsh

  # define search engine URLS
  typeset -A urls
  urls=(
    google      "https://www.google.com/search?q="
    bing        "https://www.bing.com/search?q="
    yahoo       "https://search.yahoo.com/search?p="
    duckduckgo  "https://www.duckduckgo.com/?q="
    yandex      "https://yandex.ru/yandsearch?text="
    github      "https://github.com/search?q="
    baidu       "https://www.baidu.com/s?wd="
    ecosia      "https://www.ecosia.org/search?q="
  )

  # check whether the search engine is supported
  if [[ -z "$urls[$1]" ]]; then
    echo "Search engine $1 not supported."
    return 1
  fi

  # search or go to main page depending on number of arguments passed
  if [[ $# -gt 1 ]]; then
    # build search url:
    # join arguments passed with '+', then append to search engine URL
    url="${urls[$1]}${(j:+:)@[2,-1]}"
  else
    # build main page url:
    # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
    url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
  fi

  open "$url"
}

# function to start livestreamer with twitch source
livestream(){
    osascript <<-EOF
    tell application "iTerm"
    create window with profile "ZSH_livestream"
    select first window
    launch session "Default Session"
        tell current session of first window
            write text "livestreamer twitch.tv/'$1' source; exit"
        end tell
    end tell
EOF
}

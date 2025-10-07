//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "printf %s%s%s%s \"^c#31C950^\" $($HOME/.local/bin/package_updates.sh) \"^d^\"",	3600,		0},
	{"", "printf %s%s%s%s \"^c#21BCFF^\" $($HOME/.local/bin/cpu_usage.sh) \"^d^\"",	        60,		0},
	{"", "printf %s%s%s%s \"^c#A3B3FF^\" $($HOME/.local/bin/cpu_temperature.sh) \"^d^\"",	60,		0},
	{"", "printf %s%s%s%s \"^c#C27AFF^\" $($HOME/.local/bin/volume.sh) \"^d^\"",        	0,		2},
	{"", "printf %s%s%s%s \"^c#FB2C36^\" $($HOME/.local/bin/battery.sh) \"^d^\"",	        60,		1},
	{"", "printf %s%s%s%s \"^c#DC7633^\" $($HOME/.local/bin/ram_usage.sh) \"^d^\"",	        60,		0},
	{"", "printf %s%s%s%s \"^c#FFD900^\" \"\uf073 \" $(date '+%b %d (%a)') \"^d^\"",		3600,   0},
	{"", "printf %s%s%s%s \"^c#FFFC72^\" \"\uf017 \" $(date '+%H:%M') \"^d^ \"",		    5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;


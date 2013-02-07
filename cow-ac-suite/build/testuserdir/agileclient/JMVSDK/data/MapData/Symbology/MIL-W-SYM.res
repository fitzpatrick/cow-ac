
#
#	LineStyles and LineTyles cross reference
#
#
#	Format:
#
#	SymbolCode.remarks:			Short Description
#	SymbolCode.lineStyle:		LineStyle
#	SymbolCode.lineType:		LineType (Hex)
#	SymbolCode.lineColor:		FG-RGB(r,g,b)
#	SymbolCode.labelType:		0xffffffff
#	SymbolCode.labelTgls:		0xffffffff
#	SymbolCode.fillType:		FillType
#	SymbolCode.fillStipple:		Stipple (Hex or int)
#	SymbolCode.fillColor:		FG-RGB(r,g,b)
#	SymbolCode.maxPnts:			4
#
#/* =========================================== */
#/* Line types */
#/* =========================================== */
#
#   labelType : 0xAABBCCDD
#
#				where DD = ZmLABEL_BY_LABEL (01) 
#						   ZmLABEL_BY_NAME  (02) 
#						   ZmLABEL_BY_TYPE  (04)
#
#					  CC = LORG (1-9)
#
#					  BB = Justification (0,1,2)
#
#					  AA = FILL (0x02) | EDGE (0x01)
#
#				Example: 0x03020501
#
#					ZmLABEL_BY_LABEL + LORG=5 + JUST=2 + FILL + EDGE
#
#
# These are the Fill Styles
#
#define CkFillSolid             0
#define CkFillEmpty             1
#define CkFillStippled          2
#define CkFillPattern           3
#
# The Line Type field is a combination of the following two fields:
#
# This says whether the line is 
#
#	A: solid (paint with foreground) 
#	B: solid-empty dashes (paint with foreground then blank) 
#	C: Solid-Solid dashes (paint with foreground then background)
#	D: Empty
#
#define ZmLineSolid             0x00
#define ZmLineOnOffDash         0x01
#define ZmLineDoubleDash        0x02
#define ZmLineEmpty             0x03
#
# This says what lengths the dashes and dots should have
#
#define ZmLineDashed            0x10
#define ZmLineDotted            0x20
#define ZmLineDotDashed         0x30
#define ZmLineLongDashed        0x40
#define ZmLineLongDotDashed     0x50
#
################################################################################

#***************************************************************
#*** Begin Wind Barb
#***************************************************************
# Wind Barb
W---W----------.type:		ZmWindBarb
W---W----------.remarks:	Wind Barb
W---W----------.maxPnts:	1

#***************************************************************
#*** End Wind Barb
#***************************************************************


#***************************************************************
#*** Begin Single Point
#***************************************************************

# Broken Coverage
WAS-CCCSBCP----.type:		ZmMilPoint
WAS-CCCSBCP----.remarks:	Broken Coverage
WAS-CCCSBCP----.maxPnts:	1
WAS-CCCSBCP----.size:		40

# Clear Sky
WAS-CCCSCSP----.type:		ZmMilPoint
WAS-CCCSCSP----.remarks:	Clear Sky
WAS-CCCSCSP----.maxPnts:	1
WAS-CCCSCSP----.size:		40

# Scattered Coverage
WAS-CCCSSCP----.type:		ZmMilPoint
WAS-CCCSSCP----.remarks:	Scattered Coverage
WAS-CCCSSCP----.maxPnts:	1
WAS-CCCSSCP----.size:		40

# Few Coverage
WAS-CCCSFCP----.type:		ZmMilPoint
WAS-CCCSFCP----.remarks:	Few Coverage
WAS-CCCSFCP----.maxPnts:	1
WAS-CCCSFCP----.size:		40

# Sky Totally or Partially Obscured
WAS-CCCSOBP----.type:		ZmMilPoint
WAS-CCCSOBP----.remarks:	Sky Totally or Partially Obscured
WAS-CCCSOBP----.maxPnts:	1
WAS-CCCSOBP----.size:		40

# Overcast Coverage
WAS-CCCSOCP----.type:		ZmMilPoint
WAS-CCCSOCP----.remarks:	Overcast Coverage
WAS-CCCSOCP----.maxPnts:	1
WAS-CCCSOCP----.size:		40

# Low Pressure Center
WAS-PL----P----.type:		ZmMilPoint
WAS-PL----P----.remarks:	Low Pressure Center
WAS-PL----P----.maxPnts:	1
WAS-PL----P----.size:		40

# Cyclone Center
WAS-PC----P----.type:		ZmMilPoint
WAS-PC----P----.remarks:	Cyclone Center
WAS-PC----P----.maxPnts:	1
WAS-PC----P----.size:		40

# High Pressure Center  W---PH---------
WAS-PH----P----.type:		ZmMilPoint
WAS-PH----P----.remarks:	High Pressure Center
WAS-PH----P----.maxPnts:	1
WAS-PH----P----.size:		40

# Anticyclone Center
WAS-PA----P----.type:		ZmMilPoint
WAS-PA----P----.remarks:	Anticyclone Center
WAS-PA----P----.maxPnts:	1
WAS-PA----P----.size:		40

# Turbulence - Light
WAS-TL----P----.type:		ZmMilPoint
WAS-TL----P----.remarks:	Turbulence - Light
WAS-TL----P----.maxPnts:	1
WAS-TL----P----.size:		40

# Turbulence - Moderate
WAS-TM----P----.type:		ZmMilPoint
WAS-TM----P----.remarks:	Turbulence - Moderate
WAS-TM----P----.maxPnts:	1
WAS-TM----P----.size:		40

# Turbulence - Severe
WAS-TS----P----.type:		ZmMilPoint
WAS-TS----P----.remarks:	Turbulence - Severe
WAS-TS----P----.maxPnts:	1
WAS-TS----P----.size:		40

# Turbulence - Extreme
WAS-TE----P----.type:		ZmMilPoint
WAS-TE----P----.remarks:	Turbulence - Extreme
WAS-TE----P----.maxPnts:	1
WAS-TE----P----.size:		40

# Mountain Waves
WAS-T-MW--P----.type:		ZmMilPoint
WAS-T-MW--P----.remarks:	Mountain Waves
WAS-T-MW--P----.maxPnts:	1
WAS-T-MW--P----.size:		40
WAS-T-MW--P----.strippedCode:W---TMW--------

# Clear Icing - Light
WAS-ICL---P----.type:		ZmMilPoint
WAS-ICL---P----.remarks:	Clear Icing - Light
WAS-ICL---P----.maxPnts:	1
WAS-ICL---P----.size:		40

# Clear Icing - Moderate
WAS-ICM---P----.type:		ZmMilPoint
WAS-ICM---P----.remarks:	Clear Icing - Moderate
WAS-ICM---P----.maxPnts:	1
WAS-ICM---P----.size:		40

# Clear Icing - Severe
WAS-ICS---P----.type:		ZmMilPoint
WAS-ICS---P----.remarks:	Clear Icing - Severe
WAS-ICS---P----.maxPnts:	1
WAS-ICS---P----.size:		40

# Rime Icing - Light
WAS-IRL---P----.type:		ZmMilPoint
WAS-IRL---P----.remarks:	Rime Icing - Light
WAS-IRL---P----.maxPnts:	1
WAS-IRL---P----.size:		40

# Rime Icing - Moderate
WAS-IRM---P----.type:		ZmMilPoint
WAS-IRM---P----.remarks:	Rime Icing - Moderate
WAS-IRM---P----.maxPnts:	1
WAS-IRM---P----.size:		40

# Rime Icing - Severe
WAS-IRS---P----.type:		ZmMilPoint
WAS-IRS---P----.remarks:	Rime Icing - Severe
WAS-IRS---P----.maxPnts:	1
WAS-IRS---P----.size:		40

# Mixed Icing - Light
WAS-IML---P----.type:		ZmMilPoint
WAS-IML---P----.remarks:	Mixed Icing - Light
WAS-IML---P----.maxPnts:	1
WAS-IML---P----.size:		40

# Mixed Icing - Moderate
WAS-IMM---P----.type:		ZmMilPoint
WAS-IMM---P----.remarks:	Mixed Icing - Moderate
WAS-IMM---P----.maxPnts:	1
WAS-IMM---P----.size:		40

# Mixed Icing - Severe
WAS-IMS---P----.type:		ZmMilPoint
WAS-IMS---P----.remarks:	Mixed Icing - Severe
WAS-IMS---P----.maxPnts:	1
WAS-IMS---P----.size:		40

# Calm Winds
WAS-WC----P----.type:		ZmMilPoint
WAS-WC----P----.remarks:	Calm Winds
WAS-WC----P----.maxPnts:	1
WAS-WC----P----.size:		40

#Rain - Intermittent Light
WAS-WSR-LIP----.type:		ZmMilPoint
WAS-WSR-LIP----.remarks:	Rain - Intermittent Light
WAS-WSR-LIP----.maxPnts:	1
WAS-WSR-LIP----.size:		40
WAS-WSR-LIP----.strippedCode:W---WSRLI------

#Rain - Continuous Light
WAS-WSR-LCP----.type:		ZmMilPoint
WAS-WSR-LCP----.remarks:	Rain - Continuous Light
WAS-WSR-LCP----.maxPnts:	1
WAS-WSR-LCP----.size:		40
WAS-WSR-LCP----.strippedCode:W---WSRLC------

#Rain - Intermittent Moderate
WAS-WSR-MIP----.type:		ZmMilPoint
WAS-WSR-MIP----.remarks:	Rain - Intermittent Moderate
WAS-WSR-MIP----.maxPnts:	1
WAS-WSR-MIP----.size:		40
WAS-WSR-MIP----.strippedCode:W---WSRMI------

#Rain - Continuous Moderate
WAS-WSR-MCP----.type:		ZmMilPoint
WAS-WSR-MCP----.remarks:	Rain - Continuous Moderate
WAS-WSR-MCP----.maxPnts:	1
WAS-WSR-MCP----.size:		40
WAS-WSR-MCP----.strippedCode:W---WSRMC------

#Rain - Intermittent Heavy
WAS-WSR-HIP----.type:		ZmMilPoint
WAS-WSR-HIP----.remarks:	Rain - Intermittent Heavy
WAS-WSR-HIP----.maxPnts:	1
WAS-WSR-HIP----.size:		40
WAS-WSR-HIP----.strippedCode:W---WSRHI------

#Rain - Intermittent Heavy
WAS-WSR-HCP----.type:		ZmMilPoint
WAS-WSR-HCP----.remarks:	Rain - Continuous Heavy
WAS-WSR-HCP----.maxPnts:	1
WAS-WSR-HCP----.size:		40
WAS-WSR-HCP----.strippedCode:W---WSRHC------

#Freezing Rain - Light
WAS-WSRFL-P----.type:		ZmMilPoint
WAS-WSRFL-P----.remarks:	Freezing Rain - Light
WAS-WSRFL-P----.maxPnts:	1
WAS-WSRFL-P----.size:		40

#Freezing Rain - Moderate/Heavy
WAS-WSRFMHP----.type:		ZmMilPoint
WAS-WSRFMHP----.remarks:	Freezing Rain - Moderate/Heavy
WAS-WSRFMHP----.maxPnts:	1
WAS-WSRFMHP----.size:		40

#Rain Showers - Light
WAS-WSRSL-P----.type:		ZmMilPoint
WAS-WSRSL-P----.remarks:	Rain Showers - Light
WAS-WSRSL-P----.maxPnts:	1
WAS-WSRSL-P----.size:		40

#Rain Showers - Moderate/Heavy
WAS-WSRSMHP----.type:		ZmMilPoint
WAS-WSRSMHP----.remarks:	Rain Showers - Moderate/Heavy
WAS-WSRSMHP----.maxPnts:	1
WAS-WSRSMHP----.size:		40

#Rain Showers - Torrential
WAS-WSRST-P----.type:		ZmMilPoint
WAS-WSRST-P----.remarks:	Rain Showers - Torrential
WAS-WSRST-P----.maxPnts:	1
WAS-WSRST-P----.size:		40

#Drizzle - Intermittent Light
WAS-WSD-LIP----.type:		ZmMilPoint
WAS-WSD-LIP----.remarks:	Drizzle - Intermittent Light
WAS-WSD-LIP----.maxPnts:	1
WAS-WSD-LIP----.size:		40
WAS-WSD-LIP----.strippedCode:W---WSDLI------

#Drizzle - Continuous Light
WAS-WSD-LCP----.type:		ZmMilPoint
WAS-WSD-LCP----.remarks:	Drizzle - Continuous Light
WAS-WSD-LCP----.maxPnts:	1
WAS-WSD-LCP----.size:		40
WAS-WSD-LCP----.strippedCode:W---WSDLC------

#Drizzle - Intermittent Moderate
WAS-WSD-MIP----.type:		ZmMilPoint
WAS-WSD-MIP----.remarks:	Drizzle - Intermittent Moderate
WAS-WSD-MIP----.maxPnts:	1
WAS-WSD-MIP----.size:		40
WAS-WSD-MIP----.strippedCode:W---WSDMI------

#Drizzle - Continuous Moderate
WAS-WSD-MCP----.type:		ZmMilPoint
WAS-WSD-MCP----.remarks:	Drizzle - Continuous Moderate
WAS-WSD-MCP----.maxPnts:	1
WAS-WSD-MCP----.size:		40
WAS-WSD-MCP----.strippedCode:W---WSDMC------

#Drizzle - Intermittent Heavy
WAS-WSD-HIP----.type:		ZmMilPoint
WAS-WSD-HIP----.remarks:	Drizzle - Intermittent Heavy
WAS-WSD-HIP----.maxPnts:	1
WAS-WSD-HIP----.size:		40
WAS-WSD-HIP----.strippedCode:W---WSDHI------

#Drizzle - Continuous Heavy
WAS-WSD-HCP----.type:		ZmMilPoint
WAS-WSD-HCP----.remarks:	Drizzle - Continuous Heavy
WAS-WSD-HCP----.maxPnts:	1
WAS-WSD-HCP----.size:		40
WAS-WSD-HCP----.strippedCode:W---WSDHC------

#Freezing Drizzle - Light
WAS-WSDFL-P----.type:		ZmMilPoint
WAS-WSDFL-P----.remarks:	Freezing Drizzle - Light
WAS-WSDFL-P----.maxPnts:	1
WAS-WSDFL-P----.size:		40

#Freezing Drizzle - Moderate/Heavy
WAS-WSDFMHP----.type:		ZmMilPoint
WAS-WSDFMHP----.remarks:	Freezing Drizzle - Moderate/Heavy
WAS-WSDFMHP----.maxPnts:	1
WAS-WSDFMHP----.size:		40

#Rain or Drizzle and Snow - Light
WAS-WSM-L-P----.type:		ZmMilPoint
WAS-WSM-L-P----.remarks:	Rain or Drizzle and Snow - Light
WAS-WSM-L-P----.maxPnts:	1
WAS-WSM-L-P----.size:		40
WAS-WSM-L-P----.strippedCode:W---WSML-------

#Rain or Drizzle and Snow - Moderate/Heavy
WAS-WSM-MHP----.type:		ZmMilPoint
WAS-WSM-MHP----.remarks:	Rain or Drizzle and Snow - Moderate/Heavy
WAS-WSM-MHP----.maxPnts:	1
WAS-WSM-MHP----.size:		40
WAS-WSM-MHP----.strippedCode:W---WSMMH------

#Rain and Snow Showers - Light
WAS-WSMSL-P----.type:		ZmMilPoint
WAS-WSMSL-P----.remarks:	Rain and Snow Showers - Light
WAS-WSMSL-P----.maxPnts:	1
WAS-WSMSL-P----.size:		40

#Rain and Snow Showers - Moderate/Heavy
WAS-WSMSMHP----.type:		ZmMilPoint
WAS-WSMSMHP----.remarks:	Rain and Snow Showers - Moderate/Heavy
WAS-WSMSMHP----.maxPnts:	1
WAS-WSMSMHP----.size:		40

#Snow - Intermittent Light
WAS-WSS-LIP----.type:		ZmMilPoint
WAS-WSS-LIP----.remarks:	Snow - Intermittent Light
WAS-WSS-LIP----.maxPnts:	1
WAS-WSS-LIP----.size:		40
WAS-WSS-LIP----.strippedCode:W---WSSLI------

#Snow - Continuous Light
WAS-WSS-LCP----.type:		ZmMilPoint
WAS-WSS-LCP----.remarks:	Snow - Continuous Light
WAS-WSS-LCP----.maxPnts:	1
WAS-WSS-LCP----.size:		40
WAS-WSS-LCP----.strippedCode:W---WSSLC------

#Snow - Intermittent Moderate
WAS-WSS-MIP----.type:		ZmMilPoint
WAS-WSS-MIP----.remarks:	Snow - Intermittent Moderate
WAS-WSS-MIP----.maxPnts:	1
WAS-WSS-MIP----.size:		40
WAS-WSS-MIP----.strippedCode:W---WSSMI------

#Snow - Continuous Moderate
WAS-WSS-MCP----.type:		ZmMilPoint
WAS-WSS-MCP----.remarks:	Snow - Continuous Moderate
WAS-WSS-MCP----.maxPnts:	1
WAS-WSS-MCP----.size:		40
WAS-WSS-MCP----.strippedCode:W---WSSMC------

#Snow - Intermittent Heavy
WAS-WSS-HIP----.type:		ZmMilPoint
WAS-WSS-HIP----.remarks:	Snow - Intermittent Heavy
WAS-WSS-HIP----.maxPnts:	1
WAS-WSS-HIP----.size:		40
WAS-WSS-HIP----.strippedCode:W---WSSHI------

#Snow - Continuous Heavy
WAS-WSS-HCP----.type:		ZmMilPoint
WAS-WSS-HCP----.remarks:	Snow - Continuous Heavy
WAS-WSS-HCP----.maxPnts:	1
WAS-WSS-HCP----.size:		40
WAS-WSS-HCP----.strippedCode:W---WSSHC------

#Blowing Snow - Light/Moderate
WAS-WSSBLMP----.type:		ZmMilPoint
WAS-WSSBLMP----.remarks:	Blowing Snow - Light/Moderate
WAS-WSSBLMP----.maxPnts:	1
WAS-WSSBLMP----.size:		40

#Blowing Snow - Heavy
WAS-WSSBH-P----.type:		ZmMilPoint
WAS-WSSBH-P----.remarks:	Blowing Snow - Heavy
WAS-WSSBH-P----.maxPnts:	1
WAS-WSSBH-P----.size:		40

#Snow Grains
WAS-WSSG--P----.type:		ZmMilPoint
WAS-WSSG--P----.remarks:	Snow Grains
WAS-WSSG--P----.maxPnts:	1
WAS-WSSG--P----.size:		40

#Snow Showers - Light
WAS-WSSSL-P----.type:		ZmMilPoint
WAS-WSSSL-P----.remarks:	Snow Showers - Light
WAS-WSSSL-P----.maxPnts:	1
WAS-WSSSL-P----.size:		40

#Snow Showers - Moderate/Heavy
WAS-WSSSMHP----.type:		ZmMilPoint
WAS-WSSSMHP----.remarks:	Snow Showers - Moderate/Heavy
WAS-WSSSMHP----.maxPnts:	1
WAS-WSSSMHP----.size:		40

#Hail - Light Not Associated With Thunder
WAS-WSGRL-P----.type:		ZmMilPoint
WAS-WSGRL-P----.remarks:	Hail - Light Not Associated With Thunder
WAS-WSGRL-P----.maxPnts:	1
WAS-WSGRL-P----.size:		40

#Hail - Moderate/Heavy Not Associated With Thunder
WAS-WSGRMHP----.type:		ZmMilPoint
WAS-WSGRMHP----.remarks:	Hail - Moderate/Heavy Not Associated With Thunder
WAS-WSGRMHP----.maxPnts:	1
WAS-WSGRMHP----.size:		40

#Ice Crystals (Diamond Dust)
WAS-WSIC--P----.type:		ZmMilPoint
WAS-WSIC--P----.remarks:	Ice Crystals (Diamond Dust)
WAS-WSIC--P----.maxPnts:	1
WAS-WSIC--P----.size:		40

#Ice Pellets - Light
WAS-WSPLL-P----.type:		ZmMilPoint
WAS-WSPLL-P----.remarks:	Ice Pellets - Light
WAS-WSPLL-P----.maxPnts:	1
WAS-WSPLL-P----.size:		40

#Ice Pellets - Moderate
WAS-WSPLM-P----.type:		ZmMilPoint
WAS-WSPLM-P----.remarks:	Ice Pellets - Moderate
WAS-WSPLM-P----.maxPnts:	1
WAS-WSPLM-P----.size:		40

#Ice Pellets - Heavy
WAS-WSPLH-P----.type:		ZmMilPoint
WAS-WSPLH-P----.remarks:	Ice Pellets - Heavy
WAS-WSPLH-P----.maxPnts:	1
WAS-WSPLH-P----.size:		40

#Thunderstorm - No Precipitation
WAS-WST-NPP----.type:		ZmMilPoint
WAS-WST-NPP----.remarks:	Thunderstorm - No Precipitation
WAS-WST-NPP----.maxPnts:	1
WAS-WST-NPP----.size:		40
WAS-WST-NPP----.strippedCode:W---WSTNP------

#Thunderstorm Light To Moderate With Rain/Snow - No Hail
WAS-WSTMR-P----.type:		ZmMilPoint
WAS-WSTMR-P----.remarks:	Thunderstorm Light To Moderate With Rain/Snow - No Hail
WAS-WSTMR-P----.maxPnts:	1
WAS-WSTMR-P----.size:		40

#Thunderstorm Heavy with Rain/Snow - No Hail
WAS-WSTHR-P----.type:		ZmMilPoint
WAS-WSTHR-P----.remarks:	Thunderstorm Heavy with Rain/Snow - No Hail
WAS-WSTHR-P----.maxPnts:	1
WAS-WSTHR-P----.size:		40

#Thunderstorm Light To Moderate - With Hail
WAS-WSTMH-P----.type:		ZmMilPoint
WAS-WSTMH-P----.remarks:	Thunderstorm Light To Moderate - With Hail
WAS-WSTMH-P----.maxPnts:	1
WAS-WSTMH-P----.size:		40

#Thunderstorm Heavy - With Hail
WAS-WSTHH-P----.type:		ZmMilPoint
WAS-WSTHH-P----.remarks:	Thunderstorm Heavy - With Hail
WAS-WSTHH-P----.maxPnts:	1
WAS-WSTHH-P----.size:		40

#Funnel Cloud (Tornado/Waterspout)
WAS-WST-FCP----.type:		ZmMilPoint
WAS-WST-FCP----.remarks:	Funnel Cloud (Tornado/Waterspout)
WAS-WST-FCP----.maxPnts:	1
WAS-WST-FCP----.size:		40
WAS-WST-FCP----.strippedCode:W---WSTFC------

#Squall
WAS-WST-SQP----.type:		ZmMilPoint
WAS-WST-SQP----.remarks:	Squall
WAS-WST-SQP----.maxPnts:	1
WAS-WST-SQP----.size:		40
WAS-WST-SQP----.strippedCode:W---WSTSQ------

#Lightning
WAS-WST-LGP----.type:		ZmMilPoint
WAS-WST-LGP----.remarks:	Lightning
WAS-WST-LGP----.maxPnts:	1
WAS-WST-LGP----.size:		40
WAS-WST-LGP----.strippedCode:W---WSTLG------

#Fog - Shallow Patches
WAS-WSFGPSP----.type:		ZmMilPoint
WAS-WSFGPSP----.remarks:	Fog - Shallow Patches
WAS-WSFGPSP----.maxPnts:	1
WAS-WSFGPSP----.size:		40

#Fog - Shallow Continuous
WAS-WSFGCSP----.type:		ZmMilPoint
WAS-WSFGCSP----.remarks:	Fog - Shallow Continuous
WAS-WSFGCSP----.maxPnts:	1
WAS-WSFGCSP----.size:		40

#Fog - Patchy
WAS-WSFGP-P----.type:		ZmMilPoint
WAS-WSFGP-P----.remarks:	Fog - Patchy
WAS-WSFGP-P----.maxPnts:	1
WAS-WSFGP-P----.size:		40

#Fog - Sky Visible
WAS-WSFGSVP----.type:		ZmMilPoint
WAS-WSFGSVP----.remarks:	Fog - Sky Visible
WAS-WSFGSVP----.maxPnts:	1
WAS-WSFGSVP----.size:		40

#Fog - Sky Obscured
WAS-WSFGSOP----.type:		ZmMilPoint
WAS-WSFGSOP----.remarks:	Fog - Sky Obscured
WAS-WSFGSOP----.maxPnts:	1
WAS-WSFGSOP----.size:		40

#Fog - Freezing, Sky Visible
WAS-WSFGFVP----.type:		ZmMilPoint
WAS-WSFGFVP----.remarks:	Fog - Freezing, Sky Visible
WAS-WSFGFVP----.maxPnts:	1
WAS-WSFGFVP----.size:		40

#Fog - Freezing, Sky Not Visible
WAS-WSFGFOP----.type:		ZmMilPoint
WAS-WSFGFOP----.remarks:	Fog - Freezing, Sky Not Visible
WAS-WSFGFOP----.maxPnts:	1
WAS-WSFGFOP----.size:		40

#Mist
WAS-WSBR--P----.type:		ZmMilPoint
WAS-WSBR--P----.remarks:	Mist
WAS-WSBR--P----.maxPnts:	1
WAS-WSBR--P----.size:		40

#Smoke
WAS-WSFU--P----.type:		ZmMilPoint
WAS-WSFU--P----.remarks:	Smoke
WAS-WSFU--P----.maxPnts:	1
WAS-WSFU--P----.size:		40

#Haze
WAS-WSHZ--P----.type:		ZmMilPoint
WAS-WSHZ--P----.remarks:	Haze
WAS-WSHZ--P----.maxPnts:	1
WAS-WSHZ--P----.size:		40

#Dust/Sand Storm - Light To Moderate
WAS-WSDSLMP----.type:		ZmMilPoint
WAS-WSDSLMP----.remarks:	Dust/Sand Storm - Light To Moderate
WAS-WSDSLMP----.maxPnts:	1
WAS-WSDSLMP----.size:		40

#Dust/Sand Storm - Severe
WAS-WSDSS-P----.type:		ZmMilPoint
WAS-WSDSS-P----.remarks:	Dust/Sand Storm - Severe
WAS-WSDSS-P----.maxPnts:	1
WAS-WSDSS-P----.size:		40

#Dust Devil
WAS-WSDD--P----.type:		ZmMilPoint
WAS-WSDD--P----.remarks:	Dust Devil
WAS-WSDD--P----.maxPnts:	1
WAS-WSDD--P----.size:		40

#Blowing Dust or Sand
WAS-WSDB--P----.type:		ZmMilPoint
WAS-WSDB--P----.remarks:	Blowing Dust or Sand
WAS-WSDB--P----.maxPnts:	1
WAS-WSDB--P----.size:		40

#Tropical Depression
WAS-WSTSD-P----.type:		ZmMilPoint
WAS-WSTSD-P----.remarks:	Tropical Depression
WAS-WSTSD-P----.maxPnts:	1
WAS-WSTSD-P----.size:		40

#Tropical Storm
WAS-WSTSS-P----.type:		ZmMilPoint
WAS-WSTSS-P----.remarks:	Tropical Storm
WAS-WSTSS-P----.maxPnts:	1
WAS-WSTSS-P----.size:		40

#Hurricane/Typhoon
WAS-WSTSH-P----.type:		ZmMilPoint
WAS-WSTSH-P----.remarks:	Hurricane/Typhoon
WAS-WSTSH-P----.maxPnts:	1
WAS-WSTSH-P----.size:		40

#Volcanic Eruption
WAS-WSVE--P----.type:		ZmMilPoint
WAS-WSVE--P----.remarks:	Volcanic Eruption
WAS-WSVE--P----.maxPnts:	1
WAS-WSVE--P----.size:		40

#Volcanic Ash
WAS-WSVA--P----.type:		ZmMilPoint
WAS-WSVA--P----.remarks:	Volcanic Ash
WAS-WSVA--P----.maxPnts:	1
WAS-WSVA--P----.size:		40

#Precipitation of Unknown Type and Intensity
WAS-WSUKP-P----.type:		ZmMilPoint
WAS-WSUKP-P----.remarks:	Precipitation of Unknown Type and Intensity
WAS-WSUKP-P----.maxPnts:	1
WAS-WSUKP-P----.size:		40

#Surface Dry Without Cracks or Appreciable Dust or Loose Sand
WAS-GND-NCP----.type:		ZmMilPoint
WAS-GND-NCP----.remarks:	Surface Dry Without Cracks or Appreciable Dust or Loose Sand
WAS-GND-NCP----.maxPnts:	1
WAS-GND-NCP----.size:		40
WAS-GND-NCP----.strippedCode:W---GNDNC------

#Surface Moist
WAS-GNM---P----.type:		ZmMilPoint
WAS-GNM---P----.remarks:	Surface Moist
WAS-GNM---P----.maxPnts:	1
WAS-GNM---P----.size:		40

#Surface Wet, Standing Water in Small or Large Pools
WAS-GNW-SWP----.type:		ZmMilPoint
WAS-GNW-SWP----.remarks:	Surface Wet, Standing Water in Small or Large Pools
WAS-GNW-SWP----.maxPnts:	1
WAS-GNW-SWP----.size:		40
WAS-GNW-SWP----.strippedCode:W---GNWSW------

#Surface Flooded
WAS-GNFL--P----.type:		ZmMilPoint
WAS-GNFL--P----.remarks:	Surface Flooded
WAS-GNFL--P----.maxPnts:	1
WAS-GNFL--P----.size:		40

#Surface Frozen
WAS-GNFZ--P----.type:		ZmMilPoint
WAS-GNFZ--P----.remarks:	Surface Frozen
WAS-GNFZ--P----.maxPnts:	1
WAS-GNFZ--P----.size:		40

#Glaze (Thin Ice) on Ground
WAS-GNG-TIP----.type:		ZmMilPoint
WAS-GNG-TIP----.remarks:	Glaze (Thin Ice) on Ground
WAS-GNG-TIP----.maxPnts:	1
WAS-GNG-TIP----.size:		40
WAS-GNG-TIP----.strippedCode:W---GNGTI------

#Loose Dry Dust or Sand Not Covering Ground Completely
WAS-GNLDN-P----.type:		ZmMilPoint
WAS-GNLDN-P----.remarks:	Loose Dry Dust or Sand Not Covering Ground Completely
WAS-GNLDN-P----.maxPnts:	1
WAS-GNLDN-P----.size:		40

#Thin Loose Dry Dust or Sand Covering Ground Completely
WAS-GNLDTCP----.type:		ZmMilPoint
WAS-GNLDTCP----.remarks:	Thin Loose Dry Dust or Sand Covering Ground Completely
WAS-GNLDTCP----.maxPnts:	1
WAS-GNLDTCP----.size:		40

#Moderate/Thick Dry Dust or Sand Covering Ground Completely
WAS-GNLDMCP----.type:		ZmMilPoint
WAS-GNLDMCP----.remarks:	Moderate/Thick Dry Dust or Sand Covering Ground Completely
WAS-GNLDMCP----.maxPnts:	1
WAS-GNLDMCP----.size:		40

#Exremely Dry With Cracks
WAS-GNDEWCP----.type:		ZmMilPoint
WAS-GNDEWCP----.remarks:	Exremely Dry With Cracks
WAS-GNDEWCP----.maxPnts:	1
WAS-GNDEWCP----.size:		40

#Predominantely Ice Covered
WAS-GSI---P----.type:		ZmMilPoint
WAS-GSI---P----.remarks:	Predominantely Ice Covered
WAS-GSI---P----.maxPnts:	1
WAS-GSI---P----.size:		40

#Compact or Wet Snow (With or Without Ice) Covering Less Than One-Half of Ground
WAS-GSSCL-P----.type:		ZmMilPoint
WAS-GSSCL-P----.remarks:	Compact or Wet Snow (With or Without Ice) Covering Less Than One-Half of Ground
WAS-GSSCL-P----.maxPnts:	1
WAS-GSSCL-P----.size:		40

#Compact or Wet Snow (With or Without Ice) Covering At Least One-Half Ground, But Ground Not Completely Covered
WAS-GSSCH-P----.type:		ZmMilPoint
WAS-GSSCH-P----.remarks:	Compact or Wet Snow (With or Without Ice) Covering At Least One-Half Ground, But Ground Not Completely Covered
WAS-GSSCH-P----.maxPnts:	1
WAS-GSSCH-P----.size:		40

#Even Layer of Compact or Wet Snow Covering Ground Completely
WAS-GSSCCEP----.type:		ZmMilPoint
WAS-GSSCCEP----.remarks:	Even Layer of Compact or Wet Snow Covering Ground Completely
WAS-GSSCCEP----.maxPnts:	1
WAS-GSSCCEP----.size:		40

#Uneven Layer of Compact or Wet Snow Covering Ground Completely
WAS-GSSCCUP----.type:		ZmMilPoint
WAS-GSSCCUP----.remarks:	Uneven Layer of Compact or Wet Snow Covering Ground Completely
WAS-GSSCCUP----.maxPnts:	1
WAS-GSSCCUP----.size:		40

#Loose Dry Snow Covering Less Than One-Half of Ground
WAS-GSSLL-P----.type:		ZmMilPoint
WAS-GSSLL-P----.remarks:	Loose Dry Snow Covering Less Than One-Half of Ground
WAS-GSSLL-P----.maxPnts:	1
WAS-GSSLL-P----.size:		40

#Loose Dry Snow Covering At Least One-Half Ground, But Ground Not Completely Covered
WAS-GSSLH-P----.type:		ZmMilPoint
WAS-GSSLH-P----.remarks:	Loose Dry Snow Covering At Least One-Half Ground, But Ground Not Completely Covered
WAS-GSSLH-P----.maxPnts:	1
WAS-GSSLH-P----.size:		40

#Even Layer of Loose Dry Snow Covering Ground Completely
WAS-GSSLCEP----.type:		ZmMilPoint
WAS-GSSLCEP----.remarks:	Even Layer of Loose Dry Snow Covering Ground Completely
WAS-GSSLCEP----.maxPnts:	1
WAS-GSSLCEP----.size:		40

#Uneven Layer of Loose Dry Snow Covering Ground Completely
WAS-GSSLCUP----.type:		ZmMilPoint
WAS-GSSLCUP----.remarks:	Uneven Layer of Loose Dry Snow Covering Ground Completely
WAS-GSSLCUP----.maxPnts:	1
WAS-GSSLCUP----.size:		40

#Snow Covering Ground Completely; Deep Drifts
WAS-GSSDC-P----.type:		ZmMilPoint
WAS-GSSDC-P----.remarks:	Snow Covering Ground Completely; Deep Drifts
WAS-GSSDC-P----.maxPnts:	1
WAS-GSSDC-P----.size:		40

#Icebergs
WOS-IB----P----.type:		ZmMilPoint
WOS-IB----P----.remarks:	Icebergs
WOS-IB----P----.maxPnts:	1
WOS-IB----P----.size:		40

#Many Icebergs
WOS-IBM---P----.type:		ZmMilPoint
WOS-IBM---P----.remarks:	Many Icebergs
WOS-IBM---P----.maxPnts:	1
WOS-IBM---P----.size:		40

#Belts and Strips
WOS-IBBS--P----.type:		ZmMilPoint
WOS-IBBS--P----.remarks:	Belts and Strips
WOS-IBBS--P----.maxPnts:	1
WOS-IBBS--P----.size:		40

#Iceberg - General
WOS-IBG---P----.type:		ZmMilPoint
WOS-IBG---P----.remarks:	Iceberg - General
WOS-IBG---P----.maxPnts:	1
WOS-IBG---P----.size:		40

#Many Icebergs - General
WOS-IBMG--P----.type:		ZmMilPoint
WOS-IBMG--P----.remarks:	Many Icebergs - General
WOS-IBMG--P----.maxPnts:	1
WOS-IBMG--P----.size:		40

#Bergy Bit
WOS-IBBB--P----.type:		ZmMilPoint
WOS-IBBB--P----.remarks:	Bergy Bit
WOS-IBBB--P----.maxPnts:	1
WOS-IBBB--P----.size:		40

#Many Bergy Bits
WOS-IBBBM-P----.type:		ZmMilPoint
WOS-IBBBM-P----.remarks:	Many Bergy Bits
WOS-IBBBM-P----.maxPnts:	1
WOS-IBBBM-P----.size:		40

#Growler
WOS-IBGL--P----.type:		ZmMilPoint
WOS-IBGL--P----.remarks:	Growler
WOS-IBGL--P----.maxPnts:	1
WOS-IBGL--P----.size:		40

#Many Growlers
WOS-IBGLM-P----.type:		ZmMilPoint
WOS-IBGLM-P----.remarks:	Many Growlers
WOS-IBGLM-P----.maxPnts:	1
WOS-IBGLM-P----.size:		40

#Floeberg
WOS-IBF---P----.type:		ZmMilPoint
WOS-IBF---P----.remarks:	Floeberg
WOS-IBF---P----.maxPnts:	1
WOS-IBF---P----.size:		40

#Ice Island
WOS-IBII--P----.type:		ZmMilPoint
WOS-IBII--P----.remarks:	Ice Island
WOS-IBII--P----.maxPnts:	1
WOS-IBII--P----.size:		40

#Bergy Water
WOS-ICWB--P----.type:		ZmMilPoint
WOS-ICWB--P----.remarks:	Bergy Water
WOS-ICWB--P----.maxPnts:	1
WOS-ICWB--P----.size:		40

#Water With Radar Targets
WOS-ICWR--P----.type:		ZmMilPoint
WOS-ICWR--P----.remarks:	Water With Radar Targets
WOS-ICWR--P----.maxPnts:	1
WOS-ICWR--P----.size:		40

#Ice Free
WOS-ICIF--P----.type:		ZmMilPoint
WOS-ICIF--P----.remarks:	Ice Free
WOS-ICIF--P----.maxPnts:	1
WOS-ICIF--P----.size:		40

#Convergence
WOS-IDC---P----.type:		ZmMilPoint
WOS-IDC---P----.remarks:	Convergence
WOS-IDC---P----.maxPnts:	1
WOS-IDC---P----.size:		40

#Divergence
WOS-IDD---P----.type:		ZmMilPoint
WOS-IDD---P----.remarks:	Divergence
WOS-IDD---P----.maxPnts:	1
WOS-IDD---P----.size:		40

#Shearing or Shear Zone
WOS-IDS---P----.type:		ZmMilPoint
WOS-IDS---P----.remarks:	Shearing or Shear Zone
WOS-IDS---P----.maxPnts:	1
WOS-IDS---P----.size:		40

#Sea Ice
WOS-II----P----.type:		ZmMilPoint
WOS-II----P----.remarks:	Sea Ice
WOS-II----P----.maxPnts:	1
WOS-II----P----.size:		40

#Ice Thickness (Observed)
WOS-IITM--P----.type:		ZmMilPoint
WOS-IITM--P----.remarks:	Ice Thickness (Observed)
WOS-IITM--P----.maxPnts:	1
WOS-IITM--P----.size:		40

#Ice Thickness (Estimated)
WOS-IITE--P----.type:		ZmMilPoint
WOS-IITE--P----.remarks:	Ice Thickness (Estimated)
WOS-IITE--P----.maxPnts:	1
WOS-IITE--P----.size:		40

#Melt Puddles or Flooded Ice
WOS-IIP---P----.type:		ZmMilPoint
WOS-IIP---P----.remarks:	Melt Puddles or Flooded Ice
WOS-IIP---P----.maxPnts:	1
WOS-IIP---P----.size:		40

#Snow Cover
WOS-ISC---P----.type:		ZmMilPoint
WOS-ISC---P----.remarks:	Snow Cover
WOS-ISC---P----.maxPnts:	1
WOS-ISC---P----.size:		40

#Sastrugi (With Orientation)
WOS-ISS---P----.type:		ZmMilPoint
WOS-ISS---P----.remarks:	Sastrugi (With Orientation)
WOS-ISS---P----.maxPnts:	1
WOS-ISS---P----.size:		40

#Ridges of Hummocks
WOS-ITRH--P----.type:		ZmMilPoint
WOS-ITRH--P----.remarks:	Ridges of Hummocks
WOS-ITRH--P----.maxPnts:	1
WOS-ITRH--P----.size:		40

#Rafting
WOS-ITR---P----.type:		ZmMilPoint
WOS-ITR---P----.remarks:	Rafting
WOS-ITR---P----.maxPnts:	1
WOS-ITR---P----.size:		40

#Jammed Brash Barrier
WOS-ITBB--P----.type:		ZmMilPoint
WOS-ITBB--P----.remarks:	Jammed Brash Barrier
WOS-ITBB--P----.maxPnts:	1
WOS-ITBB--P----.size:		40

#Soundings
WOS-HDS---P----.type:		ZmMilPoint
WOS-HDS---P----.remarks:	Soundings
WOS-HDS---P----.maxPnts:	1
WOS-HDS---P----.size:		40

#Berths (Onshore)
WOS-HPB-O-P----.type:		ZmMilPoint
WOS-HPB-O-P----.remarks:	Berths (Onshore)
WOS-HPB-O-P----.maxPnts:	1
WOS-HPB-O-P----.size:		40
WOS-HPB-O-P----.strippedCode:W---HPBO-------

#Berths (Anchor)
WOS-HPB-A-P----.type:		ZmMilPoint
WOS-HPB-A-P----.remarks:	Berths (Anchor)
WOS-HPB-A-P----.maxPnts:	1
WOS-HPB-A-P----.size:		40
WOS-HPB-A-P----.strippedCode:W---HPBAN------

#Anchorage
WOS-HPBA--P----.type:		ZmMilPoint
WOS-HPBA--P----.remarks:	Anchorage
WOS-HPBA--P----.maxPnts:	1
WOS-HPBA--P----.size:		40

#Call In Point
WOS-HPCP--P----.type:		ZmMilPoint
WOS-HPCP--P----.remarks:	Call In Point
WOS-HPCP--P----.maxPnts:	1
WOS-HPCP--P----.size:		40

#Fishing Harbor
WOS-HPFH--P----.type:		ZmMilPoint
WOS-HPFH--P----.remarks:	Fishing Harbor
WOS-HPFH--P----.maxPnts:	1
WOS-HPFH--P----.size:		40

#Fish Stakes/Traps/Weirs
WOS-HPFS--P----.type:		ZmMilPoint
WOS-HPFS--P----.remarks:	Fish Stakes/Traps/Weirs
WOS-HPFS--P----.maxPnts:	1
WOS-HPFS--P----.size:		40

#Fish Stakes/Traps/Wiers (Line)
WOS-HPFS---L---.type:		ZmMilPoint
WOS-HPFS---L---.remarks:	Fish Stakes/Traps/Wiers (Line)
WOS-HPFS---L---.maxPnts:	1
WOS-HPFS---L---.size:		40
WOS-HPFS---L---.strippedCode:W---HPFSL------

#Landing Place
WOS-HPML--P----.type:		ZmMilPoint
WOS-HPML--P----.remarks:	Landing Place
WOS-HPML--P----.maxPnts:	1
WOS-HPML--P----.size:		40

#Offshore Loading Facility
WO-DHPMO--P----.type:		ZmMilPoint
WO-DHPMO--P----.remarks:	Offshore Loading Facility
WO-DHPMO--P----.maxPnts:	1
WO-DHPMO--P----.size:		40

#Offshore Loading Facility (Line)
WO-DHPMO---L---.type:		ZmMilPoint
WO-DHPMO---L---.remarks:	Offshore Loading Facility (Line)
WO-DHPMO---L---.maxPnts:	1
WO-DHPMO---L---.size:		40
WO-DHPMO---L---.strippedCode:W---HPMOL------

#Landing Ring
WOS-HPM-R-P----.type:		ZmMilPoint
WOS-HPM-R-P----.remarks:	Landing Ring
WOS-HPM-R-P----.maxPnts:	1
WOS-HPM-R-P----.size:		40
WOS-HPM-R-P----.strippedCode:W---HPMR-------

#Ferry Crossing
WOS-HPM-FC-L---.type:		ZmMilPoint
WOS-HPM-FC-L---.remarks:	Ferry Crossing
WOS-HPM-FC-L---.maxPnts:	1
WOS-HPM-FC-L---.size:		40
WOS-HPM-FC-L---.strippedCode:W---HPMFC------

#Cable Ferry Crossing
WOS-HPM-CC-L---.type:		ZmMilPoint
WOS-HPM-CC-L---.remarks:	Cable Ferry Crossing
WOS-HPM-CC-L---.maxPnts:	1
WOS-HPM-CC-L---.size:		40
WOS-HPM-CC-L---.strippedCode:W---HPMCC------

#Dolphin
WOS-HPD---P----.type:		ZmMilPoint
WOS-HPD---P----.remarks:	Dolphin
WOS-HPD---P----.maxPnts:	1
WOS-HPD---P----.size:		40

#Beacon
WOS-HABA--P----.type:		ZmMilPoint
WOS-HABA--P----.remarks:	Beacon
WOS-HABA--P----.maxPnts:	1
WOS-HABA--P----.size:		40

#Buoy Default
WOS-HABB--P----.type:		ZmMilPoint
WOS-HABB--P----.remarks:	Buoy Default
WOS-HABB--P----.maxPnts:	1
WOS-HABB--P----.size:		40

#Marker
WOS-HABM--P----.type:		ZmMilPoint
WOS-HABM--P----.remarks:	Marker
WOS-HABM--P----.maxPnts:	1
WOS-HABM--P----.size:		40

#Perches/Stakes (Point)
WOS-HABP--P----.type:		ZmMilPoint
WOS-HABP--P----.remarks:	Perches/Stakes (Point)
WOS-HABP--P----.maxPnts:	1
WOS-HABP--P----.size:		40

#Light
WOS-HAL---P----.type:		ZmMilPoint
WOS-HAL---P----.remarks:	Light
WOS-HAL---P----.maxPnts:	1
WOS-HAL---P----.size:		40

#Light Vessel/Lightship
WOS-HALV--P----.type:		ZmMilPoint
WOS-HALV--P----.remarks:	Light Vessel/Lightship
WOS-HALV--P----.maxPnts:	1
WOS-HALV--P----.size:		40

#Lighthouse
WOS-HALH--P----.type:		ZmMilPoint
WOS-HALH--P----.remarks:	Lighthouse
WOS-HALH--P----.maxPnts:	1
WOS-HALH--P----.size:		40

#Rock Submerged
WOS-HHRS--P----.type:		ZmMilPoint
WOS-HHRS--P----.remarks:	Rock Submerged
WOS-HHRS--P----.maxPnts:	1
WOS-HHRS--P----.size:		40

#Rock Awashed
WOS-HHRA--P----.type:		ZmMilPoint
WOS-HHRA--P----.remarks:	Rock Awashed
WOS-HHRA--P----.maxPnts:	1
WOS-HHRA--P----.size:		40

#Foul Ground (Point)
WOS-HHDF--P----.type:		ZmMilPoint
WOS-HHDF--P----.remarks:	Foul Ground (Point)
WOS-HHDF--P----.maxPnts:	1
WOS-HHDF--P----.size:		40

#Mine-Naval (Doubtful)
WOS-HHDMDBP----.type:		ZmMilPoint
WOS-HHDMDBP----.remarks:	Mine-Naval (Doubtful)
WOS-HHDMDBP----.maxPnts:	1
WOS-HHDMDBP----.size:		40

#Mine-Naval (Definite)
WOS-HHDMDFP----.type:		ZmMilPoint
WOS-HHDMDFP----.remarks:	Mine-Naval (Definite)
WOS-HHDMDFP----.maxPnts:	1
WOS-HHDMDFP----.size:		40

#Snags/Stumps
WOS-HHDS--P----.type:		ZmMilPoint
WOS-HHDS--P----.remarks:	Snags/Stumps
WOS-HHDS--P----.maxPnts:	1
WOS-HHDS--P----.size:		40

#Wreck (Uncovers)
WOS-HHDWA-P----.type:		ZmMilPoint
WOS-HHDWA-P----.remarks:	Wreck (Uncovers)
WOS-HHDWA-P----.maxPnts:	1
WOS-HHDWA-P----.size:		40

#Wreck (Submerged)
WOS-HHDWB-P----.type:		ZmMilPoint
WOS-HHDWB-P----.remarks:	Wreck (Submerged)
WOS-HHDWB-P----.maxPnts:	1
WOS-HHDWB-P----.size:		40

#Eddies/Overfalls/Tide Rips
WOS-HHDE--P----.type:		ZmMilPoint
WOS-HHDE--P----.remarks:	Eddies/Overfalls/Tide Rips
WOS-HHDE--P----.maxPnts:	1
WOS-HHDE--P----.size:		40

#Sand
WOS-BFC-S-P----.type:		ZmMilPoint
WOS-BFC-S-P----.remarks:	Sand
WOS-BFC-S-P----.maxPnts:	1
WOS-BFC-S-P----.size:		40
WOS-BFC-S-P----.strippedCode:W---BFCS-------

#Mud
WOS-BFC-M-P----.type:		ZmMilPoint
WOS-BFC-M-P----.remarks:	Mud
WOS-BFC-M-P----.maxPnts:	1
WOS-BFC-M-P----.size:		40
WOS-BFC-M-P----.strippedCode:W---BFCM-------

#Clay
WOS-BFC-CLP----.type:		ZmMilPoint
WOS-BFC-CLP----.remarks:	Clay
WOS-BFC-CLP----.maxPnts:	1
WOS-BFC-CLP----.size:		40
WOS-BFC-CLP----.strippedCode:W---BFCCL------

#Silt
WOS-BFC-SIP----.type:		ZmMilPoint
WOS-BFC-SIP----.remarks:	Silt
WOS-BFC-SIP----.maxPnts:	1
WOS-BFC-SIP----.size:		40
WOS-BFC-SIP----.strippedCode:W---BFCSI------

#Stones
WOS-BFC-STP----.type:		ZmMilPoint
WOS-BFC-STP----.remarks:	Stones
WOS-BFC-STP----.maxPnts:	1
WOS-BFC-STP----.size:		40
WOS-BFC-STP----.strippedCode:W---BFCST------

#Gravel
WOS-BFC-G-P----.type:		ZmMilPoint
WOS-BFC-G-P----.remarks:	Gravel
WOS-BFC-G-P----.maxPnts:	1
WOS-BFC-G-P----.size:		40
WOS-BFC-G-P----.strippedCode:W---BFCG-------

#Pebbles
WOS-BFC-P-P----.type:		ZmMilPoint
WOS-BFC-P-P----.remarks:	Pebbles
WOS-BFC-P-P----.maxPnts:	1
WOS-BFC-P-P----.size:		40
WOS-BFC-P-P----.strippedCode:W---BFCP-------

#Cobbles
WOS-BFC-CBP----.type:		ZmMilPoint
WOS-BFC-CBP----.remarks:	Cobbles
WOS-BFC-CBP----.maxPnts:	1
WOS-BFC-CBP----.size:		40
WOS-BFC-CBP----.strippedCode:W---BFCCB------

#Rock
WOS-BFC-R-P----.type:		ZmMilPoint
WOS-BFC-R-P----.remarks:	Rock
WOS-BFC-R-P----.maxPnts:	1
WOS-BFC-R-P----.size:		40
WOS-BFC-R-P----.strippedCode:W---BFCR-------

#Coral
WOS-BFC-COP----.type:		ZmMilPoint
WOS-BFC-COP----.remarks:	Coral
WOS-BFC-COP----.maxPnts:	1
WOS-BFC-COP----.size:		40
WOS-BFC-COP----.strippedCode:W---BFCCO------

#Shell
WOS-BFC-SHP----.type:		ZmMilPoint
WOS-BFC-SHP----.remarks:	Shell
WOS-BFC-SHP----.maxPnts:	1
WOS-BFC-SHP----.size:		40
WOS-BFC-SHP----.strippedCode:W---BFCSH------

#Fine
WOS-BFQ-F-P----.type:		ZmMilPoint
WOS-BFQ-F-P----.remarks:	Fine
WOS-BFQ-F-P----.maxPnts:	1
WOS-BFQ-F-P----.size:		40
WOS-BFQ-F-P----.strippedCode:W---BFQF-------

#Medium
WOS-BFQ-M-P----.type:		ZmMilPoint
WOS-BFQ-M-P----.remarks:	Medium
WOS-BFQ-M-P----.maxPnts:	1
WOS-BFQ-M-P----.size:		40
WOS-BFQ-M-P----.strippedCode:W---BFQM-------

#Coarse
WOS-BFQ-C-P----.type:		ZmMilPoint
WOS-BFQ-C-P----.remarks:	Coarse
WOS-BFQ-C-P----.maxPnts:	1
WOS-BFQ-C-P----.size:		40
WOS-BFQ-C-P----.strippedCode:W---BFQC-------

#Water Turbulence
WOS-TCCW--P----.type:		ZmMilPoint
WOS-TCCW--P----.remarks:	Water Turbulence
WOS-TCCW--P----.maxPnts:	1
WOS-TCCW--P----.size:		40

#Tide Data Point
WOS-TCCTD-P----.type:		ZmMilPoint
WOS-TCCTD-P----.remarks:	Tide Data Point
WOS-TCCTD-P----.maxPnts:	1
WOS-TCCTD-P----.size:		40

#Tide Gauge
WOS-TCCTG-P----.type:		ZmMilPoint
WOS-TCCTG-P----.remarks:	Tide Gauge
WOS-TCCTG-P----.maxPnts:	1
WOS-TCCTG-P----.size:		40

#Ford
WOS-MF----P----.type:		ZmMilPoint
WOS-MF----P----.remarks:	Ford
WOS-MF----P----.maxPnts:	1
WOS-MF----P----.size:		40

#Lock
WOS-ML----P----.type:		ZmMilPoint
WOS-ML----P----.remarks:	Lock
WOS-ML----P----.maxPnts:	1
WOS-ML----P----.size:		40

#Oil/Gas Rig
WOS-MOA---P----.type:		ZmMilPoint
WOS-MOA---P----.remarks:	Oil/Gas Rig
WOS-MOA---P----.maxPnts:	1
WOS-MOA---P----.size:		40

#Pile/Piling/Post
WOS-MPA---P----.type:		ZmMilPoint
WOS-MPA---P----.remarks:	Pile/Piling/Post
WOS-MPA---P----.maxPnts:	1
WOS-MPA---P----.size:		40

#Kelp/Seaweed (Point)
WO-DHHDK--P----.type:		ZmMilPoint
WO-DHHDK--P----.remarks:	Kelp/Seaweed (Point)
WO-DHHDK--P----.maxPnts:	1
WO-DHHDK--P----.size:		40

#***************************************************************

#Tropopause Low
WAS-PLT---P----.type:		ZmMilPoint
WAS-PLT---P----.remarks:	Tropopause Low
WAS-PLT---P----.maxPnts:	1
WAS-PLT---P----.size:		40
WAS-PLT---P----.innerData:	1
WAS-PLT---P----.uid:		20000
W---PLT--------.uid:		20000
WAS-PLT---P----.plotMask2:	0x00000040

#Tropopause High
WAS-PHT---P----.type:		ZmMilPoint
WAS-PHT---P----.remarks:	Tropopause High
WAS-PHT---P----.maxPnts:	1
WAS-PHT---P----.size:		40
WAS-PHT---P----.innerData:	1
WAS-PHT---P----.uid:		20001
W---PHT--------.uid:		20001
WAS-PHT---P----.plotMask2:	0x00000040

#Tropopause Level
WAS-WST-LVP----.type:		ZmMilPoint
WAS-WST-LVP----.remarks:	Tropopause Level
WAS-WST-LVP----.maxPnts:	1
WAS-WST-LVP----.size:		40
WAS-WST-LVP----.innerData:	1
WAS-WST-LVP----.strippedCode:W---WSTLV------
WAS-WST-LVP----.uid:		20002
W---WSTLV------.uid:		20002
WAS-WST-LVP----.plotMask2:	0x00000040

#Freezing Level
WAS-WSF-LVP----.type:		ZmMilPoint
WAS-WSF-LVP----.remarks:	Freezing Level
WAS-WSF-LVP----.maxPnts:	1
WAS-WSF-LVP----.size:		40
WAS-WSF-LVP----.innerData:	1
WAS-WSF-LVP----.strippedCode:W---WSFLV------
WAS-WSF-LVP----.uid:		20003
W---WSFLV------.uid:		20003
WAS-WSF-LVP----.plotMask2:	0x80000040

#***************************************************************
#*** End Single Point
#***************************************************************


#***************************************************************
#*** Begin Polygons
#***************************************************************

# Cold Front
WA-DPFC----L---.type:		ZmMilPolygon
WA-DPFC----L---.remarks:	Cold Front
WA-DPFC----L---.lineStyle:	2
WA-DPFC----L---.lineType:	0x00
WA-DPFC----L---.lineColor:	FG-RGB(0,0,255)
WA-DPFC----L---.fillColor:	FG-RGB(0,0,255)
WA-DPFC----L---.labelType:	0x0
WA-DPFC----L---.labelTgls:	0x0
WA-DPFC----L---.maxPnts:	-1


# Upper Cold Front
WA-DPFCU---L---.type:		ZmMilPolygon
WA-DPFCU---L---.remarks:	Upper Cold Front
WA-DPFCU---L---.lineStyle:	33
WA-DPFCU---L---.lineType:	0x00
WA-DPFCU---L---.lineColor:	FG-RGB(0,0,255)
WA-DPFCU---L---.fillColor:	FG-RGB(0,0,0)
WA-DPFCU---L---.labelType:	0x0
WA-DPFCU---L---.labelTgls:	0x0
WA-DPFCU---L---.maxPnts:	-1

# Warm Front
WA-DPFW----L---.type:		ZmMilPolygon
WA-DPFW----L---.remarks:	Warm Front
WA-DPFW----L---.lineStyle:	1
WA-DPFW----L---.lineType:	0x00
WA-DPFW----L---.lineColor:	FG-RGB(255,0,0)
WA-DPFW----L---.fillColor:	FG-RGB(255,0,0)
WA-DPFW----L---.labelType:	0x0
WA-DPFW----L---.labelTgls:	0x0
WA-DPFW----L---.maxPnts:	-1

# Upper Warm Front
WA-DPFWU---L---.type:		ZmMilPolygon
WA-DPFWU---L---.remarks:	Upper Warm Front
WA-DPFWU---L---.lineStyle:	32
WA-DPFWU---L---.lineType:	0x00
WA-DPFWU---L---.lineColor:	FG-RGB(255,0,0)
WA-DPFWU---L---.fillColor:	FG-RGB(0,0,0)
WA-DPFWU---L---.labelType:	0x0
WA-DPFWU---L---.labelTgls:	0x0
WA-DPFWU---L---.maxPnts:	-1

# Occluded Front
WA-DPFO----L---.type:		ZmMilPolygon
WA-DPFO----L---.remarks:	Occluded Front
WA-DPFO----L---.lineStyle:	4
WA-DPFO----L---.lineType:	0x00
WA-DPFO----L---.lineColor:	FG-RGB(255,0,255)
WA-DPFO----L---.labelType:	0x0
WA-DPFO----L---.labelTgls:	0x0
WA-DPFO----L---.maxPnts:	-1

# Upper Occluded Front
WA-DPFOU---L---.type:		ZmMilPolygon
WA-DPFOU---L---.remarks:	Upper Occluded Front
WA-DPFOU---L---.lineStyle:	308
WA-DPFOU---L---.lineType:	0x00
WA-DPFOU---L---.lineColor:	FG-RGB(255,0,255)
WA-DPFOU---L---.labelType:	0x0
WA-DPFOU---L---.labelTgls:	0x0
WA-DPFOU---L---.maxPnts:	-1

# Stationary Front
WA-DPFS----L---.type:		ZmMilPolygon
WA-DPFS----L---.remarks:	Stationary Front
WA-DPFS----L---.lineStyle:	3
WA-DPFS----L---.lineType:	0x00
WA-DPFS----L---.lineColor:	FG-RGB(255,0,0)
WA-DPFS----L---.fillColor:	FG-RGB(0,0,255)
WA-DPFS----L---.labelType:	0x0
WA-DPFS----L---.labelTgls:	0x0
WA-DPFS----L---.maxPnts:	-1

# Upper Stationary Front
WA-DPFSU---L---.type:		ZmMilPolygon
WA-DPFSU---L---.remarks:	Upper Stationary Front
WA-DPFSU---L---.lineStyle:	309
WA-DPFSU---L---.lineType:	0x00
WA-DPFSU---L---.lineColor:	FG-RGB(255,0,0)
WA-DPFSU---L---.fillColor:	FG-RGB(0,0,255)
WA-DPFSU---L---.labelType:	0x0
WA-DPFSU---L---.labelTgls:	0x0
WA-DPFSU---L---.maxPnts:	-1


# Instrument Flight Rule (IFR)
WA-DBAIF----A--.type:		ZmMilPolygon
WA-DBAIF----A--.remarks:	Instrument Flight Rule (IFR)
WA-DBAIF----A--.lineStyle:	0
WA-DBAIF----A--.lineType:	0x00
WA-DBAIF----A--.lineColor:	FG-RGB(255,0,0)
WA-DBAIF----A--.labelType:	0x0
WA-DBAIF----A--.labelTgls:	0x0
WA-DBAIF----A--.closed:		1
WA-DBAIF----A--.maxPnts:	-1

# Liquid Precipitation - Non-Convective Continuous Or Intermittent
WA-DBALPNC--A--.type:		ZmMilPolygon
WA-DBALPNC--A--.remarks:	Liquid Precipitation - Non-Convective Continuous Or Intermittent
WA-DBALPNC--A--.lineStyle:	0
WA-DBALPNC--A--.lineType:	0x00
WA-DBALPNC--A--.lineColor:	FG-RGB(0,255,0)
WA-DBALPNC--A--.labelType:	0x0
WA-DBALPNC--A--.labelTgls:	0x0
WA-DBALPNC--A--.closed:		1
WA-DBALPNC--A--.maxPnts:	-1

# Liquid Precipitation - Convective
WA-DBALPC---A--.type:		ZmMilPolygon
WA-DBALPC---A--.remarks:	Liquid Precipitation - Convective
WA-DBALPC---A--.lineStyle:	0
WA-DBALPC---A--.lineType:	0x30
WA-DBALPC---A--.lineColor:	FG-RGB(0,255,0)
WA-DBALPC---A--.labelType:	0x0
WA-DBALPC---A--.labelTgls:	0x0
WA-DBALPC---A--.closed:		1
WA-DBALPC---A--.maxPnts:	-1

# Freezing/Frozen Precipitation
WA-DBAFP----A--.type:		ZmMilPolygon
WA-DBAFP----A--.remarks:	Freezing/Frozen Precipitation
WA-DBAFP----A--.lineStyle:	0
WA-DBAFP----A--.lineType:	0x00
WA-DBAFP----A--.lineColor:	FG-RGB(255,0,0)
WA-DBAFP----A--.labelType:	0x0
WA-DBAFP----A--.labelTgls:	0x0
WA-DBAFP----A--.closed:		1
WA-DBAFP----A--.maxPnts:	-1

# Thunderstorms
WA-DBAT-----A--.type:		ZmMilPolygon
WA-DBAT-----A--.remarks:	Thunderstorms
WA-DBAT-----A--.lineStyle:	0
WA-DBAT-----A--.lineType:	0x30
WA-DBAT-----A--.lineColor:	FG-RGB(255,0,0)
WA-DBAT-----A--.labelType:	0x0
WA-DBAT-----A--.labelTgls:	0x0
WA-DBAT-----A--.closed:		1
WA-DBAT-----A--.maxPnts:	-1

# Fog
WA-DBAFG----A--.type:		ZmMilPolygon
WA-DBAFG----A--.remarks:	Fog
WA-DBAFG----A--.lineStyle:	0
WA-DBAFG----A--.lineType:	0x00
WA-DBAFG----A--.lineColor:	FG-RGB(255,255,0)
WA-DBAFG----A--.labelType:	0x0
WA-DBAFG----A--.labelTgls:	0x0
WA-DBAFG----A--.closed:		1
WA-DBAFG----A--.maxPnts:	-1

# Dust Or Sand
WA-DBAD-----A--.type:		ZmMilPolygon
WA-DBAD-----A--.remarks:	Dust Or Sand
WA-DBAD-----A--.lineStyle:	0
WA-DBAD-----A--.lineType:	0x00
WA-DBAD-----A--.lineColor:	FG-RGB(128,98,16)
WA-DBAD-----A--.labelType:	0x0
WA-DBAD-----A--.labelTgls:	0x0
WA-DBAD-----A--.closed:		1
WA-DBAD-----A--.maxPnts:	-1

# Operator-Defined Freeform
WA-DBAFF----A--.type:		ZmMilPolygon
WA-DBAFF----A--.remarks:	Operator-Defined Freeform
WA-DBAFF----A--.lineStyle:	0
WA-DBAFF----A--.lineType:	0x00
WA-DBAFF----A--.lineColor:	FG-RGB(0,0,0)
WA-DBAFF----A--.labelType:	0x0
WA-DBAFF----A--.labelTgls:	0x0
WA-DBAFF----A--.closed:		1
WA-DBAFF----A--.maxPnts:	-1

# Island
WO-DHCI-----A--.type:		ZmMilPolygon
WO-DHCI-----A--.remarks:	Island
WO-DHCI-----A--.lineStyle:	0
WO-DHCI-----A--.lineType:	0x00
WO-DHCI-----A--.lineColor:	FG-RGB(128,98,16)
WO-DHCI-----A--.fillType:	0
WO-DHCI-----A--.fillColor:	FG-RGB(128,98,16)
WO-DHCI-----A--.labelType:	0x0
WO-DHCI-----A--.labelTgls:	0x0
WO-DHCI-----A--.closed:		1
WO-DHCI-----A--.maxPnts:	-1

# Beach
WO-DHCB-----A--.type:		ZmMilPolygon
WO-DHCB-----A--.remarks:	Beach
WO-DHCB-----A--.lineStyle:	0
WO-DHCB-----A--.lineWidth:	2
WO-DHCB-----A--.lineType:	0x00
WO-DHCB-----A--.lineColor:	FG-RGB(160,82,45)
WO-DHCB-----A--.fillType:	0
WO-DHCB-----A--.fillColor:	FG-RGB(237,217,208)
WO-DHCB-----A--.labelType:	0x0
WO-DHCB-----A--.labelTgls:	0x0
WO-DHCB-----A--.closed:		1
WO-DHCB-----A--.maxPnts:	-1

# Water
WO-DHCW-----A--.type:		ZmMilPolygon
WO-DHCW-----A--.remarks:	Water
WO-DHCW-----A--.lineStyle:	0
WO-DHCW-----A--.lineType:	0x10
WO-DHCW-----A--.lineWidth:	2
WO-DHCW-----A--.lineColor:	FG-RGB(190,190,190)
WO-DHCW-----A--.labelType:	0x0
WO-DHCW-----A--.labelTgls:	0x0
WO-DHCW-----A--.closed:		1
WO-DHCW-----A--.maxPnts:	-1

# Foreshore (Line)
WO-DHCF----L---.type:		ZmMilPolygon
WO-DHCF----L---.remarks:	Foreshore (Line)
WO-DHCF----L---.lineStyle:	0
WO-DHCF----L---.lineType:	0x00
WO-DHCF----L---.lineColor:	FG-RGB(173,255,47)
WO-DHCF----L---.fillColor:	FG-RGB(173,255,47)
WO-DHCF----L---.labelType:	0x0
WO-DHCF----L---.labelTgls:	0x0
WO-DHCF----L---.maxPnts:	-1

# Foreshore (Area)
WO-DHCF-----A--.type:		ZmMilPolygon
WO-DHCF-----A--.remarks:	Foreshore (Area)
WO-DHCF-----A--.lineStyle:	0
WO-DHCF-----A--.lineType:	0x00
WO-DHCF-----A--.lineColor:	FG-RGB(173,255,47)
WO-DHCF-----A--.fillType:	0
WO-DHCF-----A--.fillColor:	FG-RGB(173,255,47)
WO-DHCF-----A--.labelType:	0x0
WO-DHCF-----A--.labelTgls:	0x0
WO-DHCF-----A--.closed:		1
WO-DHCF-----A--.maxPnts:	-1

# Fish Stakes/Traps/Wiers (Area)
WOS-HPFF----A--.type:		ZmMilPolygon
WOS-HPFF----A--.remarks:	Fish Stakes/Traps/Wiers (Area)
WOS-HPFF----A--.lineStyle:	0
WOS-HPFF----A--.lineType:	0x10
WOS-HPFF----A--.lineColor:	FG-RGB(190,190,190)
WOS-HPFF----A--.fillType:	0x08000000
WOS-HPFF----A--.fillColor:	FG-RGB(190,190,190)
WOS-HPFF----A--.labelType:	0x0
WOS-HPFF----A--.labelTgls:	0x0
WOS-HPFF----A--.closed:		1
WOS-HPFF----A--.maxPnts:	-1

# Drydock
WO-DHPMD----A--.type:		ZmMilPolygon
WO-DHPMD----A--.remarks:	Drydock
WO-DHPMD----A--.lineStyle:	0
WO-DHPMD----A--.lineWidth:	2
WO-DHPMD----A--.lineType:	0x10
WO-DHPMD----A--.lineColor:	FG-RGB(0,0,0)
WO-DHPMD----A--.fillType:	0
WO-DHPMD----A--.fillColor:	FG-RGB(128,98,16)
WO-DHPMD----A--.labelType:	0x0
WO-DHPMD----A--.labelTgls:	0x0
WO-DHPMD----A--.closed:		1
WO-DHPMD----A--.maxPnts:	-1

# Offshore Loading Facility (Area)
WO-DHPMO----A--.type:		ZmMilPolygon
WO-DHPMO----A--.remarks:	Offshore Loading Facility (Area)
WO-DHPMO----A--.lineStyle:	0
WO-DHPMO----A--.lineType:	0
WO-DHPMO----A--.lineColor:	FG-RGB(128,98,16)
WO-DHPMO----A--.fillType:	0
WO-DHPMO----A--.fillColor:	FG-RGB(128,98,16)
WO-DHPMO----A--.labelType:	0x0
WO-DHPMO----A--.labelTgls:	0x0
WO-DHPMO----A--.closed:		1
WO-DHPMO----A--.maxPnts:	-1

# Perches/Stakes (Area)
WO-DHABP----A--.type:		ZmMilPolygon
WO-DHABP----A--.remarks:	Perches/Stakes (Area)
WO-DHABP----A--.lineStyle:	0
WO-DHABP----A--.lineWidth:	2
WO-DHABP----A--.lineType:	0x10
WO-DHABP----A--.lineColor:	FG-RGB(0,0,0)
WO-DHABP----A--.fillType:	0
WO-DHABP----A--.fillColor:	FG-RGB(0,0,255)
WO-DHABP----A--.labelType:	0x0
WO-DHABP----A--.labelTgls:	0x0
WO-DHABP----A--.closed:		1
WO-DHABP----A--.maxPnts:	-1

# Underwater Danger/Hazard
WO-DHHD-----A--.type:		ZmMilPolygon
WO-DHHD-----A--.remarks:	Underwater Danger/Hazard
WO-DHHD-----A--.lineStyle:	0
WO-DHHD-----A--.lineWidth:	2
WO-DHHD-----A--.lineType:	0x10
WO-DHHD-----A--.lineColor:	FG-RGB(0,0,0)
WO-DHHD-----A--.fillType:	0
WO-DHHD-----A--.fillColor:	FG-RGB(0,191,255)
WO-DHHD-----A--.labelType:	0x0
WO-DHHD-----A--.labelTgls:	0x0
WO-DHHD-----A--.closed:		1
WO-DHHD-----A--.maxPnts:	-1

# Foul Ground (Area)
WO-DHHDF----A--.type:		ZmMilPolygon
WO-DHHDF----A--.remarks:	Foul Ground (Area)
WO-DHHDF----A--.lineStyle:	0
WO-DHHDF----A--.lineType:	0x03
WO-DHHDF----A--.lineColor:	FG-RGB(190,190,190)
WO-DHHDF----A--.fillType:	0x07000000
WO-DHHDF----A--.fillColor:	FG-RGB(190,190,190)
WO-DHHDF----A--.labelType:	0x0
WO-DHHDF----A--.labelTgls:	0x0
WO-DHHDF----A--.closed:		1
WO-DHHDF----A--.strippedCode:W---HHDFA------
WO-DHHDF----A--.maxPnts:	-1

# Kelp/Seaweed (Area)
WO-DHHDK----A--.type:		ZmMilPolygon
WO-DHHDK----A--.remarks:	Kelp/Seaweed (Area)
WO-DHHDK----A--.lineStyle:	0
WO-DHHDK----A--.lineType:	0x03
WO-DHHDK----A--.lineColor:	FG-RGB(190,190,190)
WO-DHHDK----A--.fillType:	0x09000000
WO-DHHDK----A--.fillColor:	FG-RGB(190,190,190)
WO-DHHDK----A--.labelType:	0x0
WO-DHHDK----A--.labelTgls:	0x0
WO-DHHDK----A--.closed:		1
WO-DHHDK----A--.maxPnts:	-1

# Discolored Water
WO-DHHDD----A--.type:		ZmMilPolygon
WO-DHHDD----A--.remarks:	Discolored Water
WO-DHHDD----A--.lineStyle:	0
WO-DHHDD----A--.lineWidth:	2
WO-DHHDD----A--.lineType:	0x10
WO-DHHDD----A--.lineColor:	FG-RGB(0,0,0)
WO-DHHDD----A--.fillType:	0
WO-DHHDD----A--.fillColor:	FG-RGB(0,191,255)
WO-DHHDD----A--.labelType:	0x0
WO-DHHDD----A--.labelTgls:	0x0
WO-DHHDD----A--.closed:		1
WO-DHHDD----A--.maxPnts:	-1

# VDR Level 1-2
WO-DOBVA----A--.type:		ZmMilPolygon
WO-DOBVA----A--.remarks:	VDR Level 1-2
WO-DOBVA----A--.lineStyle:	0
WO-DOBVA----A--.lineType:	0
WO-DOBVA----A--.lineColor:	FG-RGB(26,153,77)
WO-DOBVA----A--.fillType:	0
WO-DOBVA----A--.fillColor:	FG-RGB(26,153,77)
WO-DOBVA----A--.labelType:	0x0
WO-DOBVA----A--.labelTgls:	0x0
WO-DOBVA----A--.closed:		1
WO-DOBVA----A--.maxPnts:	-1

# VDR Level 2-3
WO-DOBVB----A--.type:		ZmMilPolygon
WO-DOBVB----A--.remarks:	VDR Level 2-3
WO-DOBVB----A--.lineStyle:	0
WO-DOBVB----A--.lineType:	0
WO-DOBVB----A--.lineColor:	FG-RGB(26,204,77)
WO-DOBVB----A--.fillType:	0
WO-DOBVB----A--.fillColor:	FG-RGB(26,204,77)
WO-DOBVB----A--.labelType:	0x0
WO-DOBVB----A--.labelTgls:	0x0
WO-DOBVB----A--.closed:		1
WO-DOBVB----A--.maxPnts:	-1

# VDR Level 3-4
WO-DOBVC----A--.type:		ZmMilPolygon
WO-DOBVC----A--.remarks:	VDR Level 3-4
WO-DOBVC----A--.lineStyle:	0
WO-DOBVC----A--.lineType:	0
WO-DOBVC----A--.lineColor:	FG-RGB(128,255,51)
WO-DOBVC----A--.fillType:	0
WO-DOBVC----A--.fillColor:	FG-RGB(128,255,51)
WO-DOBVC----A--.labelType:	0x0
WO-DOBVC----A--.labelTgls:	0x0
WO-DOBVC----A--.closed:		1
WO-DOBVC----A--.maxPnts:	-1

# VDR Level 4-5
WO-DOBVD----A--.type:		ZmMilPolygon
WO-DOBVD----A--.remarks:	VDR Level 4-5
WO-DOBVD----A--.lineStyle:	0
WO-DOBVD----A--.lineType:	0
WO-DOBVD----A--.lineColor:	FG-RGB(204,255,26)
WO-DOBVD----A--.fillType:	0
WO-DOBVD----A--.fillColor:	FG-RGB(204,255,26)
WO-DOBVD----A--.labelType:	0x0
WO-DOBVD----A--.labelTgls:	0x0
WO-DOBVD----A--.closed:		1
WO-DOBVD----A--.maxPnts:	-1

# VDR Level 5-6
WO-DOBVE----A--.type:		ZmMilPolygon
WO-DOBVE----A--.remarks:	VDR Level 5-6
WO-DOBVE----A--.lineStyle:	0
WO-DOBVE----A--.lineType:	0
WO-DOBVE----A--.lineColor:	FG-RGB(255,255,0)
WO-DOBVE----A--.fillType:	0
WO-DOBVE----A--.fillColor:	FG-RGB(255,255,0)
WO-DOBVE----A--.labelType:	0x0
WO-DOBVE----A--.labelTgls:	0x0
WO-DOBVE----A--.closed:		1
WO-DOBVE----A--.maxPnts:	-1

# VDR Level 6-7
WO-DOBVF----A--.type:		ZmMilPolygon
WO-DOBVF----A--.remarks:	VDR Level 6-7
WO-DOBVF----A--.lineStyle:	0
WO-DOBVF----A--.lineType:	0
WO-DOBVF----A--.lineColor:	FG-RGB(255,204,0)
WO-DOBVF----A--.fillType:	0
WO-DOBVF----A--.fillColor:	FG-RGB(255,204,0)
WO-DOBVF----A--.labelType:	0x0
WO-DOBVF----A--.labelTgls:	0x0
WO-DOBVF----A--.closed:		1
WO-DOBVF----A--.maxPnts:	-1

# VDR Level 7-8
WO-DOBVG----A--.type:		ZmMilPolygon
WO-DOBVG----A--.remarks:	VDR Level 7-8
WO-DOBVG----A--.lineStyle:	0
WO-DOBVG----A--.lineType:	0
WO-DOBVG----A--.lineColor:	FG-RGB(255,128,0)
WO-DOBVG----A--.fillType:	0
WO-DOBVG----A--.fillColor:	FG-RGB(255,128,0)
WO-DOBVG----A--.labelType:	0x0
WO-DOBVG----A--.labelTgls:	0x0
WO-DOBVG----A--.closed:		1
WO-DOBVG----A--.maxPnts:	-1

# VDR Level 8-9
WO-DOBVH----A--.type:		ZmMilPolygon
WO-DOBVH----A--.remarks:	VDR Level 8-9
WO-DOBVH----A--.lineStyle:	0
WO-DOBVH----A--.lineType:	0
WO-DOBVH----A--.lineColor:	FG-RGB(255,77,0)
WO-DOBVH----A--.fillType:	0
WO-DOBVH----A--.fillColor:	FG-RGB(255,77,0)
WO-DOBVH----A--.labelType:	0x0
WO-DOBVH----A--.labelTgls:	0x0
WO-DOBVH----A--.closed:		1
WO-DOBVH----A--.maxPnts:	-1

# VDR Level 9-10
WO-DOBVI----A--.type:		ZmMilPolygon
WO-DOBVI----A--.remarks:	VDR Level 9-10
WO-DOBVI----A--.lineStyle:	0
WO-DOBVI----A--.lineType:	0
WO-DOBVI----A--.lineColor:	FG-RGB(255,0,0)
WO-DOBVI----A--.fillType:	0
WO-DOBVI----A--.fillColor:	FG-RGB(255,0,0)
WO-DOBVI----A--.labelType:	0x0
WO-DOBVI----A--.labelTgls:	0x0
WO-DOBVI----A--.closed:		1
WO-DOBVI----A--.maxPnts:	-1

# Beach Slope - Flat
WO-DBSF-----A--.type:		ZmMilPolygon
WO-DBSF-----A--.remarks:	Beach Slope - Flat
WO-DBSF-----A--.lineStyle:	0
WO-DBSF-----A--.lineType:	0
WO-DBSF-----A--.lineColor:	FG-RGB(211,211,211)
WO-DBSF-----A--.fillColor:	FG-RGB(255,255,255)
WO-DBSF-----A--.labelType:	0x0
WO-DBSF-----A--.labelTgls:	0x0
WO-DBSF-----A--.closed:		1
WO-DBSF-----A--.maxPnts:	-1

# Beach Slope - Gentle
WO-DBSG-----A--.type:		ZmMilPolygon
WO-DBSG-----A--.remarks:	Beach Slope - Gentle
WO-DBSG-----A--.lineStyle:	0
WO-DBSG-----A--.lineType:	0
WO-DBSG-----A--.lineColor:	FG-RGB(105,105,105)
WO-DBSG-----A--.fillColor:	FG-RGB(255,255,255)
WO-DBSG-----A--.labelType:	0x0
WO-DBSG-----A--.labelTgls:	0x0
WO-DBSG-----A--.closed:		1
WO-DBSG-----A--.maxPnts:	-1

# Beach Slope - Moderate
WO-DBSM-----A--.type:		ZmMilPolygon
WO-DBSM-----A--.remarks:	Beach Slope - Moderate
WO-DBSM-----A--.lineStyle:	0
WO-DBSM-----A--.lineType:	0
WO-DBSM-----A--.lineColor:	FG-RGB(211,211,211)
WO-DBSM-----A--.fillType:	8388608
WO-DBSM-----A--.fillColor:	FG-RGB(211,211,211)
WO-DBSM-----A--.labelType:	0x0
WO-DBSM-----A--.labelTgls:	0x0
WO-DBSM-----A--.closed:		1
WO-DBSM-----A--.maxPnts:	-1

# Beach Slope - Steep
WO-DBST-----A--.type:		ZmMilPolygon
WO-DBST-----A--.remarks:	Beach Slope - Steep
WO-DBST-----A--.lineStyle:	0
WO-DBST-----A--.lineType:	0
WO-DBST-----A--.lineColor:	FG-RGB(105,105,105)
WO-DBST-----A--.fillType:	8388608
WO-DBST-----A--.fillColor:	FG-RGB(105,105,105)
WO-DBST-----A--.labelType:	0x0
WO-DBST-----A--.labelTgls:	0x0
WO-DBST-----A--.closed:		1
WO-DBST-----A--.maxPnts:	-1

# Solid Rock
WO-DGMSR----A--.type:		ZmMilPolygon
WO-DGMSR----A--.remarks:	Solid Rock
WO-DGMSR----A--.lineStyle:	0
WO-DGMSR----A--.lineType:	0
WO-DGMSR----A--.lineColor:	FG-RGB(160,32,240)
WO-DGMSR----A--.fillType:	0
WO-DGMSR----A--.fillColor:	FG-RGB(160,32,240)
WO-DGMSR----A--.labelType:	0x0
WO-DGMSR----A--.labelTgls:	0x0
WO-DGMSR----A--.closed:		1
WO-DGMSR----A--.maxPnts:	-1

# Clay (Area)
WO-DGMSC----A--.type:		ZmMilPolygon
WO-DGMSC----A--.remarks:	Clay (Area)
WO-DGMSC----A--.lineStyle:	0
WO-DGMSC----A--.lineType:	0
WO-DGMSC----A--.lineColor:	FG-RGB(100,130,255)
WO-DGMSC----A--.fillType:	0
WO-DGMSC----A--.fillColor:	FG-RGB(100,130,255)
WO-DGMSC----A--.labelType:	0x0
WO-DGMSC----A--.labelTgls:	0x0
WO-DGMSC----A--.closed:		1
WO-DGMSC----A--.maxPnts:	-1

# Very Coarse Sand
WO-DGMSSVS--A--.type:		ZmMilPolygon
WO-DGMSSVS--A--.remarks:	Very Coarse Sand
WO-DGMSSVS--A--.lineStyle:	0
WO-DGMSSVS--A--.lineType:	0
WO-DGMSSVS--A--.lineColor:	FG-RGB(255,180,0)
WO-DGMSSVS--A--.fillType:	0
WO-DGMSSVS--A--.fillColor:	FG-RGB(255,180,0)
WO-DGMSSVS--A--.labelType:	0x0
WO-DGMSSVS--A--.labelTgls:	0x0
WO-DGMSSVS--A--.closed:		1
WO-DGMSSVS--A--.maxPnts:	-1

# Coarse Sand
WO-DGMSSC---A--.type:		ZmMilPolygon
WO-DGMSSC---A--.remarks:	Coarse Sand
WO-DGMSSC---A--.lineStyle:	0
WO-DGMSSC---A--.lineType:	0
WO-DGMSSC---A--.lineColor:	FG-RGB(255,215,0)
WO-DGMSSC---A--.fillType:	0
WO-DGMSSC---A--.fillColor:	FG-RGB(255,215,0)
WO-DGMSSC---A--.labelType:	0x0
WO-DGMSSC---A--.labelTgls:	0x0
WO-DGMSSC---A--.closed:		1
WO-DGMSSC---A--.maxPnts:	-1

# Medium Sand
WO-DGMSSM---A--.type:		ZmMilPolygon
WO-DGMSSM---A--.remarks:	Medium Sand
WO-DGMSSM---A--.lineStyle:	0
WO-DGMSSM---A--.lineType:	0
WO-DGMSSM---A--.lineColor:	FG-RGB(255,235,0)
WO-DGMSSM---A--.fillType:	0
WO-DGMSSM---A--.fillColor:	FG-RGB(255,235,0)
WO-DGMSSM---A--.labelType:	0x0
WO-DGMSSM---A--.labelTgls:	0x0
WO-DGMSSM---A--.closed:		1
WO-DGMSSM---A--.maxPnts:	-1

# Fine Sand
WO-DGMSSF---A--.type:		ZmMilPolygon
WO-DGMSSF---A--.remarks:	Fine Sand
WO-DGMSSF---A--.lineStyle:	0
WO-DGMSSF---A--.lineType:	0
WO-DGMSSF---A--.lineColor:	FG-RGB(255,255,140)
WO-DGMSSF---A--.fillType:	0
WO-DGMSSF---A--.fillColor:	FG-RGB(255,255,140)
WO-DGMSSF---A--.labelType:	0x0
WO-DGMSSF---A--.labelTgls:	0x0
WO-DGMSSF---A--.closed:		1
WO-DGMSSF---A--.maxPnts:	-1

# Very Fine Sand
WO-DGMSSVF--A--.type:		ZmMilPolygon
WO-DGMSSVF--A--.remarks:	Very Fine Sand
WO-DGMSSVF--A--.lineStyle:	0
WO-DGMSSVF--A--.lineType:	0
WO-DGMSSVF--A--.lineColor:	FG-RGB(255,255,220)
WO-DGMSSVF--A--.fillType:	0
WO-DGMSSVF--A--.fillColor:	FG-RGB(255,255,220)
WO-DGMSSVF--A--.labelType:	0x0
WO-DGMSSVF--A--.labelTgls:	0x0
WO-DGMSSVF--A--.closed:		1
WO-DGMSSVF--A--.maxPnts:	-1

# Very Fine Silt
WO-DGMSIVF--A--.type:		ZmMilPolygon
WO-DGMSIVF--A--.remarks:	Very Fine Silt
WO-DGMSIVF--A--.lineStyle:	0
WO-DGMSIVF--A--.lineType:	0
WO-DGMSIVF--A--.lineColor:	FG-RGB(0,215,255)
WO-DGMSIVF--A--.fillType:	0
WO-DGMSIVF--A--.fillColor:	FG-RGB(0,215,255)
WO-DGMSIVF--A--.labelType:	0x0
WO-DGMSIVF--A--.labelTgls:	0x0
WO-DGMSIVF--A--.closed:		1
WO-DGMSIVF--A--.maxPnts:	-1

# Fine Silt
WO-DGMSIF---A--.type:		ZmMilPolygon
WO-DGMSIF---A--.remarks:	Fine Silt
WO-DGMSIF---A--.lineStyle:	0
WO-DGMSIF---A--.lineType:	0
WO-DGMSIF---A--.lineColor:	FG-RGB(25,255,230)
WO-DGMSIF---A--.fillType:	0
WO-DGMSIF---A--.fillColor:	FG-RGB(25,255,230)
WO-DGMSIF---A--.labelType:	0x0
WO-DGMSIF---A--.labelTgls:	0x0
WO-DGMSIF---A--.closed:		1
WO-DGMSIF---A--.maxPnts:	-1

# Medium Silt
WO-DGMSIM---A--.type:		ZmMilPolygon
WO-DGMSIM---A--.remarks:	Medium Silt
WO-DGMSIM---A--.lineStyle:	0
WO-DGMSIM---A--.lineType:	0
WO-DGMSIM---A--.lineColor:	FG-RGB(0,255,0)
WO-DGMSIM---A--.fillType:	0
WO-DGMSIM---A--.fillColor:	FG-RGB(0,255,0)
WO-DGMSIM---A--.labelType:	0x0
WO-DGMSIM---A--.labelTgls:	0x0
WO-DGMSIM---A--.closed:		1
WO-DGMSIM---A--.maxPnts:	-1

# Coarse Silt
WO-DGMSIC---A--.type:		ZmMilPolygon
WO-DGMSIC---A--.remarks:	Coarse Silt
WO-DGMSIC---A--.lineStyle:	0
WO-DGMSIC---A--.lineType:	0
WO-DGMSIC---A--.lineColor:	FG-RGB(200,255,105)
WO-DGMSIC---A--.fillType:	0
WO-DGMSIC---A--.fillColor:	FG-RGB(200,255,105)
WO-DGMSIC---A--.labelType:	0x0
WO-DGMSIC---A--.labelTgls:	0x0
WO-DGMSIC---A--.closed:		1
WO-DGMSIC---A--.maxPnts:	-1

# Boulders
WO-DGMSB----A--.type:		ZmMilPolygon
WO-DGMSB----A--.remarks:	Boulders
WO-DGMSB----A--.lineStyle:	0
WO-DGMSB----A--.lineType:	0
WO-DGMSB----A--.lineColor:	FG-RGB(255,0,0)
WO-DGMSB----A--.fillType:	0
WO-DGMSB----A--.fillColor:	FG-RGB(255,0,0)
WO-DGMSB----A--.labelType:	0x0
WO-DGMSB----A--.labelTgls:	0x0
WO-DGMSB----A--.closed:		1
WO-DGMSB----A--.maxPnts:	-1

# Cobbles, Oyster Shells
WO-DGMS-CO--A--.type:		ZmMilPolygon
WO-DGMS-CO--A--.remarks:	Cobbles, Oyster Shells
WO-DGMS-CO--A--.lineStyle:	0
WO-DGMS-CO--A--.lineType:	0
WO-DGMS-CO--A--.lineColor:	FG-RGB(255,150,150)
WO-DGMS-CO--A--.fillType:	0
WO-DGMS-CO--A--.fillColor:	FG-RGB(255,150,150)
WO-DGMS-CO--A--.labelType:	0x0
WO-DGMS-CO--A--.labelTgls:	0x0
WO-DGMS-CO--A--.closed:		1
WO-DGMS-CO--A--.maxPnts:	-1

# Pebbles, Shells
WO-DGMS-PH--A--.type:		ZmMilPolygon
WO-DGMS-PH--A--.remarks:	Pebbles, Shells
WO-DGMS-PH--A--.lineStyle:	0
WO-DGMS-PH--A--.lineType:	0
WO-DGMS-PH--A--.lineColor:	FG-RGB(255,190,190)
WO-DGMS-PH--A--.fillType:	0
WO-DGMS-PH--A--.fillColor:	FG-RGB(255,190,190)
WO-DGMS-PH--A--.labelType:	0x0
WO-DGMS-PH--A--.labelTgls:	0x0
WO-DGMS-PH--A--.closed:		1
WO-DGMS-PH--A--.maxPnts:	-1

# Sand And Shells
WO-DGMS-SH--A--.type:		ZmMilPolygon
WO-DGMS-SH--A--.remarks:	Sand And Shells
WO-DGMS-SH--A--.lineStyle:	0
WO-DGMS-SH--A--.lineType:	0
WO-DGMS-SH--A--.lineColor:	FG-RGB(255,220,220)
WO-DGMS-SH--A--.fillType:	0
WO-DGMS-SH--A--.fillColor:	FG-RGB(255,220,220)
WO-DGMS-SH--A--.labelType:	0x0
WO-DGMS-SH--A--.labelTgls:	0x0
WO-DGMS-SH--A--.closed:		1
WO-DGMS-SH--A--.maxPnts:	-1

# Land
WO-DGML-----A--.type:		ZmMilPolygon
WO-DGML-----A--.remarks:	Land
WO-DGML-----A--.lineStyle:	0
WO-DGML-----A--.lineType:	0
WO-DGML-----A--.lineColor:	FG-RGB(220,220,220)
WO-DGML-----A--.fillType:	0
WO-DGML-----A--.fillColor:	FG-RGB(220,220,220)
WO-DGML-----A--.labelType:	0x0
WO-DGML-----A--.labelTgls:	0x0
WO-DGML-----A--.closed:		1
WO-DGML-----A--.maxPnts:	-1

# No Data
WO-DGMN-----A--.type:		ZmMilPolygon
WO-DGMN-----A--.remarks:	No Data
WO-DGMN-----A--.lineStyle:	0
WO-DGMN-----A--.lineType:	0
WO-DGMN-----A--.lineColor:	FG-RGB(230,230,230)
WO-DGMN-----A--.fillType:	0
WO-DGMN-----A--.fillColor:	FG-RGB(230,230,230)
WO-DGMN-----A--.labelType:	0x0
WO-DGMN-----A--.labelTgls:	0x0
WO-DGMN-----A--.closed:		1
WO-DGMN-----A--.maxPnts:	-1

# Bottom Roughness - Smooth
WO-DGMRS----A--.type:		ZmMilPolygon
WO-DGMRS----A--.remarks:	Bottom Roughness - Smooth
WO-DGMRS----A--.lineStyle:	0
WO-DGMRS----A--.lineType:	0
WO-DGMRS----A--.lineColor:	FG-RGB(0,255,0)
WO-DGMRS----A--.fillType:	0
WO-DGMRS----A--.fillColor:	FG-RGB(0,255,0)
WO-DGMRS----A--.labelType:	0x0
WO-DGMRS----A--.labelTgls:	0x0
WO-DGMRS----A--.closed:		1
WO-DGMRS----A--.maxPnts:	-1

# Bottom Roughness - Moderate
WO-DGMRM----A--.type:		ZmMilPolygon
WO-DGMRM----A--.remarks:	Bottom Roughness - Moderate
WO-DGMRM----A--.lineStyle:	0
WO-DGMRM----A--.lineType:	0
WO-DGMRM----A--.lineColor:	FG-RGB(255,255,0)
WO-DGMRM----A--.fillType:	0
WO-DGMRM----A--.fillColor:	FG-RGB(255,255,0)
WO-DGMRM----A--.labelType:	0x0
WO-DGMRM----A--.labelTgls:	0x0
WO-DGMRM----A--.closed:		1
WO-DGMRM----A--.maxPnts:	-1

# Bottom Roughness - Rough
WO-DGMRR----A--.type:		ZmMilPolygon
WO-DGMRR----A--.remarks:	Bottom Roughness - Rough
WO-DGMRR----A--.lineStyle:	0
WO-DGMRR----A--.lineType:	0
WO-DGMRR----A--.lineColor:	FG-RGB(255,0,0)
WO-DGMRR----A--.fillType:	0
WO-DGMRR----A--.fillColor:	FG-RGB(255,0,0)
WO-DGMRR----A--.labelType:	0x0
WO-DGMRR----A--.labelTgls:	0x0
WO-DGMRR----A--.closed:		1
WO-DGMRR----A--.maxPnts:	-1

# Low
WO-DGMCL----A--.type:		ZmMilPolygon
WO-DGMCL----A--.remarks:	Low
WO-DGMCL----A--.lineStyle:	0
WO-DGMCL----A--.lineType:	0
WO-DGMCL----A--.lineColor:	FG-RGB(0,255,0)
WO-DGMCL----A--.fillType:	0
WO-DGMCL----A--.fillColor:	FG-RGB(0,255,0)
WO-DGMCL----A--.labelType:	0x0
WO-DGMCL----A--.labelTgls:	0x0
WO-DGMCL----A--.closed:		1
WO-DGMCL----A--.maxPnts:	-1

# Medium
WO-DGMCM----A--.type:		ZmMilPolygon
WO-DGMCM----A--.remarks:	Medium
WO-DGMCM----A--.lineStyle:	0
WO-DGMCM----A--.lineType:	0
WO-DGMCM----A--.lineColor:	FG-RGB(255,255,0)
WO-DGMCM----A--.fillType:	0
WO-DGMCM----A--.fillColor:	FG-RGB(255,255,0)
WO-DGMCM----A--.labelType:	0x0
WO-DGMCM----A--.labelTgls:	0x0
WO-DGMCM----A--.closed:		1
WO-DGMCM----A--.maxPnts:	-1

# High
WO-DGMCH----A--.type:		ZmMilPolygon
WO-DGMCH----A--.remarks:	High
WO-DGMCH----A--.lineStyle:	0
WO-DGMCH----A--.lineType:	0
WO-DGMCH----A--.lineColor:	FG-RGB(255,0,0)
WO-DGMCH----A--.fillType:	0
WO-DGMCH----A--.fillColor:	FG-RGB(255,0,0)
WO-DGMCH----A--.labelType:	0x0
WO-DGMCH----A--.labelTgls:	0x0
WO-DGMCH----A--.closed:		1
WO-DGMCH----A--.maxPnts:	-1

# 0%
WO-DGMIBA---A--.type:		ZmMilPolygon
WO-DGMIBA---A--.remarks:	0%
WO-DGMIBA---A--.lineStyle:	0
WO-DGMIBA---A--.lineType:	0
WO-DGMIBA---A--.lineColor:	FG-RGB(0,0,255)
WO-DGMIBA---A--.fillType:	0
WO-DGMIBA---A--.fillColor:	FG-RGB(0,0,255)
WO-DGMIBA---A--.labelType:	0x0
WO-DGMIBA---A--.labelTgls:	0x0
WO-DGMIBA---A--.closed:		1
WO-DGMIBA---A--.maxPnts:	-1

# 0-10%
WO-DGMIBB---A--.type:		ZmMilPolygon
WO-DGMIBB---A--.remarks:	0-10%
WO-DGMIBB---A--.lineStyle:	0
WO-DGMIBB---A--.lineType:	0
WO-DGMIBB---A--.lineColor:	FG-RGB(0,255,0)
WO-DGMIBB---A--.fillType:	0
WO-DGMIBB---A--.fillColor:	FG-RGB(0,255,0)
WO-DGMIBB---A--.labelType:	0x0
WO-DGMIBB---A--.labelTgls:	0x0
WO-DGMIBB---A--.closed:		1
WO-DGMIBB---A--.maxPnts:	-1

# 10-20%
WO-DGMIBC---A--.type:		ZmMilPolygon
WO-DGMIBC---A--.remarks:	10-20%
WO-DGMIBC---A--.lineStyle:	0
WO-DGMIBC---A--.lineType:	0
WO-DGMIBC---A--.lineColor:	FG-RGB(255,255,0)
WO-DGMIBC---A--.fillType:	0
WO-DGMIBC---A--.fillColor:	FG-RGB(255,255,0)
WO-DGMIBC---A--.labelType:	0x0
WO-DGMIBC---A--.labelTgls:	0x0
WO-DGMIBC---A--.closed:		1
WO-DGMIBC---A--.maxPnts:	-1

# 20-75%
WO-DGMIBD---A--.type:		ZmMilPolygon
WO-DGMIBD---A--.remarks:	20-75%
WO-DGMIBD---A--.lineStyle:	0
WO-DGMIBD---A--.lineType:	0
WO-DGMIBD---A--.lineColor:	FG-RGB(255,127,0)
WO-DGMIBD---A--.fillType:	0
WO-DGMIBD---A--.fillColor:	FG-RGB(255,127,0)
WO-DGMIBD---A--.labelType:	0x0
WO-DGMIBD---A--.labelTgls:	0x0
WO-DGMIBD---A--.closed:		1
WO-DGMIBD---A--.maxPnts:	-1

# >75%
WO-DGMIBE---A--.type:		ZmMilPolygon
WO-DGMIBE---A--.remarks:	>75%
WO-DGMIBE---A--.lineStyle:	0
WO-DGMIBE---A--.lineType:	0
WO-DGMIBE---A--.lineColor:	FG-RGB(255,0,0)
WO-DGMIBE---A--.fillType:	0
WO-DGMIBE---A--.fillColor:	FG-RGB(255,0,0)
WO-DGMIBE---A--.labelType:	0x0
WO-DGMIBE---A--.labelTgls:	0x0
WO-DGMIBE---A--.closed:		1
WO-DGMIBE---A--.maxPnts:	-1

# A
WO-DGMBCA---A--.type:		ZmMilPolygon
WO-DGMBCA---A--.remarks:	A
WO-DGMBCA---A--.lineStyle:	0
WO-DGMBCA---A--.lineType:	0
WO-DGMBCA---A--.lineColor:	FG-RGB(0,255,0)
WO-DGMBCA---A--.fillType:	0
WO-DGMBCA---A--.fillColor:	FG-RGB(0,255,0)
WO-DGMBCA---A--.labelType:	0x0
WO-DGMBCA---A--.labelTgls:	0x0
WO-DGMBCA---A--.closed:		1
WO-DGMBCA---A--.maxPnts:	-1

# B
WO-DGMBCB---A--.type:		ZmMilPolygon
WO-DGMBCB---A--.remarks:	B
WO-DGMBCB---A--.lineStyle:	0
WO-DGMBCB---A--.lineType:	0
WO-DGMBCB---A--.lineColor:	FG-RGB(255,255,0)
WO-DGMBCB---A--.fillType:	0
WO-DGMBCB---A--.fillColor:	FG-RGB(255,255,0)
WO-DGMBCB---A--.labelType:	0x0
WO-DGMBCB---A--.labelTgls:	0x0
WO-DGMBCB---A--.closed:		1
WO-DGMBCB---A--.maxPnts:	-1

# C
WO-DGMBCC---A--.type:		ZmMilPolygon
WO-DGMBCC---A--.remarks:	C
WO-DGMBCC---A--.lineStyle:	0
WO-DGMBCC---A--.lineType:	0
WO-DGMBCC---A--.lineColor:	FG-RGB(255,0,0)
WO-DGMBCC---A--.fillType:	0
WO-DGMBCC---A--.fillColor:	FG-RGB(255,0,0)
WO-DGMBCC---A--.labelType:	0x0
WO-DGMBCC---A--.labelTgls:	0x0
WO-DGMBCC---A--.closed:		1
WO-DGMBCC---A--.maxPnts:	-1

# A1
WO-DGMBTA---A--.type:		ZmMilPolygon
WO-DGMBTA---A--.remarks:	A1
WO-DGMBTA---A--.lineStyle:	0
WO-DGMBTA---A--.lineType:	0
WO-DGMBTA---A--.lineColor:	FG-RGB(0,255,0)
WO-DGMBTA---A--.fillType:	0
WO-DGMBTA---A--.fillColor:	FG-RGB(0,255,0)
WO-DGMBTA---A--.labelType:	0x0
WO-DGMBTA---A--.labelTgls:	0x0
WO-DGMBTA---A--.closed:		1
WO-DGMBTA---A--.maxPnts:	-1

# A2
WO-DGMBTB---A--.type:		ZmMilPolygon
WO-DGMBTB---A--.remarks:	A2
WO-DGMBTB---A--.lineStyle:	0
WO-DGMBTB---A--.lineType:	0
WO-DGMBTB---A--.lineColor:	FG-RGB(127,255,0)
WO-DGMBTB---A--.fillType:	0
WO-DGMBTB---A--.fillColor:	FG-RGB(127,255,0)
WO-DGMBTB---A--.labelType:	0x0
WO-DGMBTB---A--.labelTgls:	0x0
WO-DGMBTB---A--.closed:		1
WO-DGMBTB---A--.maxPnts:	-1

# A3
WO-DGMBTC---A--.type:		ZmMilPolygon
WO-DGMBTC---A--.remarks:	A3
WO-DGMBTC---A--.lineStyle:	0
WO-DGMBTC---A--.lineType:	0
WO-DGMBTC---A--.lineColor:	FG-RGB(175,255,0)
WO-DGMBTC---A--.fillType:	0
WO-DGMBTC---A--.fillColor:	FG-RGB(175,255,0)
WO-DGMBTC---A--.labelType:	0x0
WO-DGMBTC---A--.labelTgls:	0x0
WO-DGMBTC---A--.closed:		1
WO-DGMBTC---A--.maxPnts:	-1

# B1
WO-DGMBTD---A--.type:		ZmMilPolygon
WO-DGMBTD---A--.remarks:	B1
WO-DGMBTD---A--.lineStyle:	0
WO-DGMBTD---A--.lineType:	0
WO-DGMBTD---A--.lineColor:	FG-RGB(207,255,0)
WO-DGMBTD---A--.fillType:	0
WO-DGMBTD---A--.fillColor:	FG-RGB(207,255,0)
WO-DGMBTD---A--.labelType:	0x0
WO-DGMBTD---A--.labelTgls:	0x0
WO-DGMBTD---A--.closed:		1
WO-DGMBTD---A--.maxPnts:	-1

# B2
WO-DGMBTE---A--.type:		ZmMilPolygon
WO-DGMBTE---A--.remarks:	B2
WO-DGMBTE---A--.lineStyle:	0
WO-DGMBTE---A--.lineType:	0
WO-DGMBTE---A--.lineColor:	FG-RGB(255,255,0)
WO-DGMBTE---A--.fillType:	0
WO-DGMBTE---A--.fillColor:	FG-RGB(255,255,0)
WO-DGMBTE---A--.labelType:	0x0
WO-DGMBTE---A--.labelTgls:	0x0
WO-DGMBTE---A--.closed:		1
WO-DGMBTE---A--.maxPnts:	-1

# B3
WO-DGMBTF---A--.type:		ZmMilPolygon
WO-DGMBTF---A--.remarks:	B3
WO-DGMBTF---A--.lineStyle:	0
WO-DGMBTF---A--.lineType:	0
WO-DGMBTF---A--.lineColor:	FG-RGB(255,207,0)
WO-DGMBTF---A--.fillType:	0
WO-DGMBTF---A--.fillColor:	FG-RGB(255,207,0)
WO-DGMBTF---A--.labelType:	0x0
WO-DGMBTF---A--.labelTgls:	0x0
WO-DGMBTF---A--.closed:		1
WO-DGMBTF---A--.maxPnts:	-1

# C1
WO-DGMBTG---A--.type:		ZmMilPolygon
WO-DGMBTG---A--.remarks:	C1
WO-DGMBTG---A--.lineStyle:	0
WO-DGMBTG---A--.lineType:	0
WO-DGMBTG---A--.lineColor:	FG-RGB(255,127,0)
WO-DGMBTG---A--.fillType:	0
WO-DGMBTG---A--.fillColor:	FG-RGB(255,127,0)
WO-DGMBTG---A--.labelType:	0x0
WO-DGMBTG---A--.labelTgls:	0x0
WO-DGMBTG---A--.closed:		1
WO-DGMBTG---A--.maxPnts:	-1

# C2
WO-DGMBTH---A--.type:		ZmMilPolygon
WO-DGMBTH---A--.remarks:	C2
WO-DGMBTH---A--.lineStyle:	0
WO-DGMBTH---A--.lineType:	0
WO-DGMBTH---A--.lineColor:	FG-RGB(255,080,0)
WO-DGMBTH---A--.fillType:	0
WO-DGMBTH---A--.fillColor:	FG-RGB(255,080,0)
WO-DGMBTH---A--.labelType:	0x0
WO-DGMBTH---A--.labelTgls:	0x0
WO-DGMBTH---A--.closed:		1
WO-DGMBTH---A--.maxPnts:	-1

# C3
WO-DGMBTI---A--.type:		ZmMilPolygon
WO-DGMBTI---A--.remarks:	C3
WO-DGMBTI---A--.lineStyle:	0
WO-DGMBTI---A--.lineType:	0
WO-DGMBTI---A--.lineColor:	FG-RGB(255,048,0)
WO-DGMBTI---A--.fillType:	0
WO-DGMBTI---A--.fillColor:	FG-RGB(255,048,0)
WO-DGMBTI---A--.labelType:	0x0
WO-DGMBTI---A--.labelTgls:	0x0
WO-DGMBTI---A--.closed:		1
WO-DGMBTI---A--.maxPnts:	-1

# Maritime Area
WO-DL-MA----A--.type:		ZmMilPolygon
WO-DL-MA----A--.remarks:	Maritime Area
WO-DL-MA----A--.lineStyle:	0
WO-DL-MA----A--.lineType:	0x10
WO-DL-MA----A--.lineColor:	FG-RGB(255,0,255)
WO-DL-MA----A--.fillColor:	FG-RGB(255,0,255)
WO-DL-MA----A--.labelType:	0x0
WO-DL-MA----A--.labelTgls:	0x0
WO-DL-MA----A--.closed:		1
WO-DL-MA----A--.strippedCode:W---LMA--------
WO-DL-MA----A--.maxPnts:	-1

# Swept Area
WO-DL-SA----A--.type:		ZmMilPolygon
WO-DL-SA----A--.remarks:	Swept Area
WO-DL-SA----A--.lineStyle:	0
WO-DL-SA----A--.lineType:	0x03
WO-DL-SA----A--.lineColor:	FG-RGB(190,190,190)
WO-DL-SA----A--.fillType:	0x04000000
WO-DL-SA----A--.fillColor:	FG-RGB(255,192,203)
WO-DL-SA----A--.labelType:	0x0
WO-DL-SA----A--.labelTgls:	0x0
WO-DL-SA----A--.closed:		1
WO-DL-SA----A--.strippedCode:W---LSA--------
WO-DL-SA----A--.maxPnts:	-1

# Operator-Defined
WO-DL-O-----A--.type:		ZmMilPolygon
WO-DL-O-----A--.remarks:	Operator-Defined
WO-DL-O-----A--.lineStyle:	0
WO-DL-O-----A--.lineType:	0
WO-DL-O-----A--.lineColor:	FG-RGB(255,165,0)
WO-DL-O-----A--.fillColor:	FG-RGB(255,165,0)
WO-DL-O-----A--.labelType:	0x0
WO-DL-O-----A--.labelTgls:	0x0
WO-DL-O-----A--.closed:		1
WO-DL-O-----A--.maxPnts:	-1

# Submerged Crib
WO-DMCC-----A--.type:		ZmMilPolygon
WO-DMCC-----A--.remarks:	Submerged Crib
WO-DMCC-----A--.lineStyle:	0
WO-DMCC-----A--.lineWidth:	2
WO-DMCC-----A--.lineType:	0x10
WO-DMCC-----A--.lineColor:	FG-RGB(0,0,0)
WO-DMCC-----A--.fillType:	0
WO-DMCC-----A--.fillColor:	FG-RGB(0,0,255)
WO-DMCC-----A--.labelType:	0x0
WO-DMCC-----A--.labelTgls:	0x0
WO-DMCC-----A--.closed:		1
WO-DMCC-----A--.maxPnts:	-1

# Oil/Gas Rig Field
WO-DMOA-----A--.type:		ZmMilPolygon
WO-DMOA-----A--.remarks:	Oil/Gas Rig Field
WO-DMOA-----A--.lineStyle:	0
WO-DMOA-----A--.lineType:	0x03
WO-DMOA-----A--.lineColor:	FG-RGB(190,190,190)
WO-DMOA-----A--.fillType:	8388608
WO-DMOA-----A--.fillColor:	FG-RGB(190,190,190)
WO-DMOA-----A--.labelType:	0x0
WO-DMOA-----A--.labelTgls:	0x0
WO-DMOA-----A--.closed:		1
WO-DMOA-----A--.maxPnts:	-1

# Trough Axis
WA-DPXT----L---.type:		ZmMilPolygon
WA-DPXT----L---.remarks:	Trough Axis
WA-DPXT----L---.lineStyle:	101
WA-DPXT----L---.lineType:	0x00
WA-DPXT----L---.lineColor:	FG-RGB(0,0,0)
WA-DPXT----L---.labelType:	0x0
WA-DPXT----L---.labelTgls:	0x0
WA-DPXT----L---.maxPnts:	-1

# Ridge Axis
WA-DPXR----L---.type:		ZmMilPolygon
WA-DPXR----L---.remarks:	Ridge Axis
WA-DPXR----L---.lineStyle:	196
WA-DPXR----L---.lineType:	0x00
WA-DPXR----L---.lineColor:	FG-RGB(0,0,0)
WA-DPXR----L---.labelType:	0x0
WA-DPXR----L---.labelTgls:	0x0
WA-DPXR----L---.maxPnts:	-1

# Limit Of Visual Observation
WO-DILOV---L---.type:		ZmMilPolygon
WO-DILOV---L---.remarks:	Limit Of Visual Observation
WO-DILOV---L---.lineStyle:	310
WO-DILOV---L---.lineType:	0x00
WO-DILOV---L---.lineColor:	FG-RGB(0,0,0)
WO-DILOV---L---.fillColor:	FG-RGB(0,0,0)
WO-DILOV---L---.labelType:	0x0
WO-DILOV---L---.labelTgls:	0x0
WO-DILOV---L---.maxPnts:	-1

# Limit Of Undercast
WO-DILUC---L---.type:		ZmMilPolygon
WO-DILUC---L---.remarks:	Limit Of Undercast
WO-DILUC---L---.lineStyle:	311
WO-DILUC---L---.lineType:	0x00
WO-DILUC---L---.lineColor:	FG-RGB(0,0,0)
WO-DILUC---L---.fillColor:	FG-RGB(0,0,0)
WO-DILUC---L---.labelType:	0x0
WO-DILUC---L---.labelTgls:	0x0
WO-DILUC---L---.maxPnts:	-1

# Limit Of Radar Observation
WO-DILOR---L---.type:		ZmMilPolygon
WO-DILOR---L---.remarks:	Limit Of Radar Observation
WO-DILOR---L---.lineStyle:	312
WO-DILOR---L---.lineType:	0x00
WO-DILOR---L---.lineColor:	FG-RGB(0,0,0)
WO-DILOR---L---.fillColor:	FG-RGB(0,0,0)
WO-DILOR---L---.labelType:	0x0
WO-DILOR---L---.labelTgls:	0x0
WO-DILOR---L---.maxPnts:	-1

# Ice Edge Or Boundary From Radar
WO-DILIER--L---.type:		ZmMilPolygon
WO-DILIER--L---.remarks:	Ice Edge Or Boundary From Radar
WO-DILIER--L---.lineStyle:	313
WO-DILIER--L---.lineType:	0x00
WO-DILIER--L---.lineColor:	FG-RGB(0,0,0)
WO-DILIER--L---.labelType:	0x0
WO-DILIER--L---.labelTgls:	0x0
WO-DILIER--L---.maxPnts:	-1

# Cracks At A Specific Location
WO-DIOCS---L---.type:		ZmMilPolygon
WO-DIOCS---L---.remarks:	Cracks At A Specific Location
WO-DIOCS---L---.lineStyle:	314
WO-DIOCS---L---.lineType:	0x00
WO-DIOCS---L---.lineColor:	FG-RGB(0,0,0)
WO-DIOCS---L---.labelType:	0x0
WO-DIOCS---L---.labelTgls:	0x0
WO-DIOCS---L---.maxPnts:	-1

# Severe Squall Line
WA-DPXSQ---L---.type:		ZmMilPolygon
WA-DPXSQ---L---.remarks:	Severe Squall Line
WA-DPXSQ---L---.lineStyle:	315
WA-DPXSQ---L---.lineType:	0x00
WA-DPXSQ---L---.lineColor:	FG-RGB(0,0,0)
WA-DPXSQ---L---.fillColor:	FG-RGB(0,0,0)
WA-DPXSQ---L---.labelType:	0x0
WA-DPXSQ---L---.labelTgls:	0x0
WA-DPXSQ---L---.maxPnts:	-1

# Turbulence (Line)
WA-DBATB----A--.type:		ZmMilPolygon
WA-DBATB----A--.remarks:	Turbulence (Line)
WA-DBATB----A--.lineStyle:	316
WA-DBATB----A--.lineType:	0x00
WA-DBATB----A--.lineColor:	FG-RGB(0,0,255)
WA-DBATB----A--.fillColor:	FG-RGB(0,0,0)
WA-DBATB----A--.labelType:	0x0
WA-DBATB----A--.labelTgls:	0x0
WA-DBATB----A--.closed:		1
WA-DBATB----A--.maxPnts:	-1

# Marginal Visual Flight Rule (MVFR)
WA-DBAMV----A--.type:		ZmMilPolygon
WA-DBAMV----A--.remarks:	Marginal Visual Flight Rule (MVFR)
WA-DBAMV----A--.lineStyle:	317
WA-DBAMV----A--.lineType:	0x00
WA-DBAMV----A--.lineColor:	FG-RGB(0,0,255)
WA-DBAMV----A--.fillColor:	FG-RGB(0,0,0)
WA-DBAMV----A--.labelType:	0x0
WA-DBAMV----A--.labelTgls:	0x0
WA-DBAMV----A--.closed:		1
WA-DBAMV----A--.maxPnts:	-1

# Icing (Line)
WA-DBAI-----A--.type:		ZmMilPolygon
WA-DBAI-----A--.remarks:	Icing (Line)
WA-DBAI-----A--.lineStyle:	318
WA-DBAI-----A--.lineType:	0x00
WA-DBAI-----A--.lineColor:	FG-RGB(205,133,63)
WA-DBAI-----A--.fillColor:	FG-RGB(0,0,0)
WA-DBAI-----A--.labelType:	0x0
WA-DBAI-----A--.labelTgls:	0x0
WA-DBAI-----A--.closed:		1
WA-DBAI-----A--.maxPnts:	-1

# Cold Frontogenesis
WA-DPFC-FG-L---.type:		ZmMilPolygon
WA-DPFC-FG-L---.remarks:	Cold Frontogenesis
WA-DPFC-FG-L---.lineStyle:	319
WA-DPFC-FG-L---.lineType:	0x00
WA-DPFC-FG-L---.lineColor:	FG-RGB(0,0,255)
WA-DPFC-FG-L---.fillColor:	FG-RGB(0,0,255)
WA-DPFC-FG-L---.labelType:	0x0
WA-DPFC-FG-L---.labelTgls:	0x0
WA-DPFC-FG-L---.maxPnts:	-1

# Warm Frontogenesis
WA-DPFW-FG-L---.type:		ZmMilPolygon
WA-DPFW-FG-L---.remarks:	Warm Frontogenesis
WA-DPFW-FG-L---.lineStyle:	321
WA-DPFW-FG-L---.lineType:	0x00
WA-DPFW-FG-L---.lineColor:	FG-RGB(255,0,0)
WA-DPFW-FG-L---.fillColor:	FG-RGB(255,0,0)
WA-DPFW-FG-L---.labelType:	0x0
WA-DPFW-FG-L---.labelTgls:	0x0
WA-DPFW-FG-L---.maxPnts:	-1

# Stationary Frontogenesis
WA-DPFS-FG-L---.type:		ZmMilPolygon
WA-DPFS-FG-L---.remarks:	Stationary Frontogenesis
WA-DPFS-FG-L---.lineStyle:	324
WA-DPFS-FG-L---.lineType:	0x00
WA-DPFS-FG-L---.lineColor:	FG-RGB(255,0,0)
WA-DPFS-FG-L---.fillColor:	FG-RGB(0,0,255)
WA-DPFS-FG-L---.labelType:	0x0
WA-DPFS-FG-L---.labelTgls:	0x0
WA-DPFS-FG-L---.maxPnts:	-1

# Cold Frontolysis
WA-DPFC-FY-L---.type:		ZmMilPolygon
WA-DPFC-FY-L---.remarks:	Cold Frontolysis
WA-DPFC-FY-L---.lineStyle:	320
WA-DPFC-FY-L---.lineType:	0x00
WA-DPFC-FY-L---.lineColor:	FG-RGB(0,0,255)
WA-DPFC-FY-L---.fillColor:	FG-RGB(0,0,255)
WA-DPFC-FY-L---.labelType:	0x0
WA-DPFC-FY-L---.labelTgls:	0x0
WA-DPFC-FY-L---.maxPnts:	-1

# Warm Frontolysis
WA-DPFW-FY-L---.type:		ZmMilPolygon
WA-DPFW-FY-L---.remarks:	Warm Frontolysis
WA-DPFW-FY-L---.lineStyle:	322
WA-DPFW-FY-L---.lineType:	0x00
WA-DPFW-FY-L---.lineColor:	FG-RGB(255,0,0)
WA-DPFW-FY-L---.fillColor:	FG-RGB(255,0,0)
WA-DPFW-FY-L---.labelType:	0x0
WA-DPFW-FY-L---.labelTgls:	0x0
WA-DPFW-FY-L---.maxPnts:	-1

# Occluded Frontolysis
WA-DPFO-FY-L---.type:		ZmMilPolygon
WA-DPFO-FY-L---.remarks:	Occluded Frontolysis
WA-DPFO-FY-L---.lineStyle:	323
WA-DPFO-FY-L---.lineType:	0x00
WA-DPFO-FY-L---.lineColor:	FG-RGB(255,0,255)
WA-DPFO-FY-L---.fillColor:	FG-RGB(0,0,255)
WA-DPFO-FY-L---.labelType:	0x0
WA-DPFO-FY-L---.labelTgls:	0x0
WA-DPFO-FY-L---.maxPnts:	-1

# Stationary Frontolysis
WA-DPFS-FY-L---.type:		ZmMilPolygon
WA-DPFS-FY-L---.remarks:	Stationary Frontolysis
WA-DPFS-FY-L---.lineStyle:	325
WA-DPFS-FY-L---.lineType:	0x00
WA-DPFS-FY-L---.lineColor:	FG-RGB(255,0,0)
WA-DPFS-FY-L---.fillColor:	FG-RGB(0,0,255)
WA-DPFS-FY-L---.labelType:	0x0
WA-DPFS-FY-L---.labelTgls:	0x0
WA-DPFS-FY-L---.maxPnts:	-1

# Instability Line
WA-DPXIL---L---.type:		ZmMilPolygon
WA-DPXIL---L---.remarks:	Instability Line
WA-DPXIL---L---.lineStyle:	326
WA-DPXIL---L---.lineType:	0x00
WA-DPXIL---L---.lineColor:	FG-RGB(0,0,0)
WA-DPXIL---L---.fillColor:	FG-RGB(0,0,255)
WA-DPXIL---L---.labelType:	0x0
WA-DPXIL---L---.labelTgls:	0x0
WA-DPXIL---L---.maxPnts:	-1

# Shear Line
WA-DPXSH---L---.type:		ZmMilPolygon
WA-DPXSH---L---.remarks:	Shear Line
WA-DPXSH---L---.lineStyle:	327
WA-DPXSH---L---.lineType:	0x00
WA-DPXSH---L---.lineColor:	FG-RGB(0,0,0)
WA-DPXSH---L---.fillColor:	FG-RGB(0,0,255)
WA-DPXSH---L---.labelType:	0x0
WA-DPXSH---L---.labelTgls:	0x0
WA-DPXSH---L---.maxPnts:	-1

# Convergance Line
WA-DPXCV---L---.type:		ZmMilPolygon
WA-DPXCV---L---.remarks:	Convergance Line
WA-DPXCV---L---.lineStyle:	328
WA-DPXCV---L---.lineType:	0x00
WA-DPXCV---L---.lineColor:	FG-RGB(255,140,0)
WA-DPXCV---L---.fillColor:	FG-RGB(255,140,0)
WA-DPXCV---L---.labelType:	0x0
WA-DPXCV---L---.labelTgls:	0x0
WA-DPXCV---L---.maxPnts:	-1

# Inter-Tropical Discountinuity
WA-DPXITD--L---.type:		ZmMilPolygon
WA-DPXITD--L---.remarks:	Inter-Tropical Discountinuity
WA-DPXITD--L---.lineStyle:	329
WA-DPXITD--L---.lineType:	0x00
WA-DPXITD--L---.lineColor:	FG-RGB(255,0,0)
WA-DPXITD--L---.fillColor:	FG-RGB(0,255,0)
WA-DPXITD--L---.labelType:	0x0
WA-DPXITD--L---.labelTgls:	0x0
WA-DPXITD--L---.maxPnts:	-1

#Isobar - Surface
WA-DIPIB---L---.type:		ZmMilPolygon
WA-DIPIB---L---.remarks:	Isobar - Surface
WA-DIPIB---L---.lineStyle:	0
WA-DIPIB---L---.lineType:	0x00
WA-DIPIB---L---.lineColor:	FG-RGB(0,0,0)
WA-DIPIB---L---.maxPnts:	-1

#Contour - Upper Air
WA-DIPCO---L---.type:		ZmMilPolygon
WA-DIPCO---L---.remarks:	Contour - Upper Air
WA-DIPCO---L---.lineStyle:	0
WA-DIPCO---L---.lineType:	0x00
WA-DIPCO---L---.lineColor:	FG-RGB(0,0,0)
WA-DIPCO---L---.maxPnts:	-1

#Isotherm
WA-DIPIS---L---.type:		ZmMilPolygon
WA-DIPIS---L---.remarks:	Isotherm
WA-DIPIS---L---.lineStyle:	336
WA-DIPIS---L---.lineType:	0x40
WA-DIPIS---L---.lineColor:	FG-RGB(255,0,0)
WA-DIPIS---L---.maxPnts:	-1

#Isotach
WA-DIPIT---L---.type:		ZmMilPolygon
WA-DIPIT---L---.remarks:	Isotach
WA-DIPIT---L---.lineStyle:	336
WA-DIPIT---L---.lineType:	0x40
WA-DIPIT---L---.lineColor:	FG-RGB(160,32,240)
WA-DIPIT---L---.maxPnts:	-1

#Isodrosotherm
WA-DIPID---L---.type:		ZmMilPolygon
WA-DIPID---L---.remarks:	Isodrosotherm
WA-DIPID---L---.lineStyle:	0
WA-DIPID---L---.lineType:	0x00
WA-DIPID---L---.lineColor:	FG-RGB(0,255,0)
WA-DIPID---L---.maxPnts:	-1

#Thickness
WA-DIPTH---L---.type:		ZmMilPolygon
WA-DIPTH---L---.remarks:	Thickness
WA-DIPTH---L---.lineStyle:	336
WA-DIPTH---L---.lineType:	0x40
WA-DIPTH---L---.lineColor:	FG-RGB(255,0,0)
WA-DIPTH---L---.maxPnts:	-1

#Operator-Defined Freeform (Isopleths)
WA-DIPFF---L---.type:		ZmMilPolygon
WA-DIPFF---L---.remarks:	Operator-Defined Freeform (Isopleths)
WA-DIPFF---L---.lineStyle:	0
WA-DIPFF---L---.lineType:	0x00
WA-DIPFF---L---.lineColor:	FG-RGB(0,0,0)
WA-DIPFF---L---.maxPnts:	-1

#Ice Drift (Direction)
WO-DIDID---L---.type:		ZmMilPolygon
WO-DIDID---L---.remarks:	Ice Drift (Direction)
WO-DIDID---L---.lineStyle:	331
WO-DIDID---L---.lineType:	0x00
WO-DIDID---L---.lineColor:	FG-RGB(0,0,0)
WO-DIDID---L---.maxPnts:	-1

#Observed Ice Edge Or Boundary
WO-DILIEO--L---.type:		ZmMilPolygon
WO-DILIEO--L---.remarks:	Observed Ice Edge Or Boundary
WO-DILIEO--L---.lineStyle:	0
WO-DILIEO--L---.lineType:	0x00
WO-DILIEO--L---.lineColor:	FG-RGB(0,0,0)
WO-DILIEO--L---.maxPnts:	-1

#Estimated Ice Edge Or Boundary
WO-DILIEE--L---.type:		ZmMilPolygon
WO-DILIEE--L---.remarks:	Estimated Ice Edge Or Boundary
WO-DILIEE--L---.lineStyle:	336
WO-DILIEE--L---.lineType:	0x40
WO-DILIEE--L---.lineColor:	FG-RGB(0,0,0)
WO-DILIEE--L---.maxPnts:	-1

#Cracks
WO-DIOC----L---.type:		ZmMilPolygon
WO-DIOC----L---.remarks:	Cracks
WO-DIOC----L---.lineStyle:	0
WO-DIOC----L---.lineType:	0x00
WO-DIOC----L---.lineColor:	FG-RGB(0,0,0)
WO-DIOC----L---.maxPnts:	-1

#Depth Curve
WO-DHDDL---L---.type:		ZmMilPolygon
WO-DHDDL---L---.remarks:	Depth Curve
WO-DHDDL---L---.lineStyle:	0
WO-DHDDL---L---.lineType:	0x00
WO-DHDDL---L---.lineColor:	FG-RGB(190,190,190)
WO-DHDDL---L---.maxPnts:	-1

#Depth Contour
WO-DHDDC---L---.type:		ZmMilPolygon
WO-DHDDC---L---.remarks:	Depth Contour
WO-DHDDC---L---.lineStyle:	0
WO-DHDDC---L---.lineType:	0x00
WO-DHDDC---L---.lineColor:	FG-RGB(190,190,190)
WO-DHDDC---L---.maxPnts:	-1

#Depth Area
WO-DHDDA----A--.type:		ZmMilPolygon
WO-DHDDA----A--.remarks:	Depth Area
WO-DHDDA----A--.lineStyle:	334
WO-DHDDA----A--.lineType:	0x00
WO-DHDDA----A--.lineColor:	FG-RGB(190,190,190)
WO-DHDDA----A--.fillType:	0
WO-DHDDA----A--.fillColor:	FG-RGB(255,255,255)
WO-DHDDA----A--.closed:		1
WO-DHDDA----A--.maxPnts:	-1

#Coastline
WO-DHCC----L---.type:		ZmMilPolygon
WO-DHCC----L---.remarks:	Coastline
WO-DHCC----L---.lineStyle:	0
WO-DHCC----L---.lineType:	0x00
WO-DHCC----L---.lineColor:	FG-RGB(190,190,190)
WO-DHCC----L---.maxPnts:	-1

#Pier/Wharf/Quay
WO-DHPBP---L---.type:		ZmMilPolygon
WO-DHPBP---L---.remarks:	Pier/Wharf/Quay
WO-DHPBP---L---.lineStyle:	0
WO-DHPBP---L---.lineType:	0x00
WO-DHPBP---L---.lineColor:	FG-RGB(190,190,190)
WO-DHPBP---L---.maxPnts:	-1

#Ramp (Above Water)
WO-DHPMRA--L---.type:		ZmMilPolygon
WO-DHPMRA--L---.remarks:	Ramp (Above Water)
WO-DHPMRA--L---.lineStyle:	0
WO-DHPMRA--L---.lineType:	0x00
WO-DHPMRA--L---.lineColor:	FG-RGB(0,0,0)
WO-DHPMRA--L---.maxPnts:	-1

#Ramp (Below Water)
WO-DHPMRB--L---.type:		ZmMilPolygon
WO-DHPMRB--L---.remarks:	Ramp (Below Water)
WO-DHPMRB--L---.lineStyle:	336
WO-DHPMRB--L---.lineType:	0x40
WO-DHPMRB--L---.lineColor:	FG-RGB(0,0,0)
WO-DHPMRB--L---.maxPnts:	-1

#Breakwater/Groin/Jetty (Above Water)
WO-DHPSPA--L---.type:		ZmMilPolygon
WO-DHPSPA--L---.remarks:	Breakwater/Groin/Jetty (Above Water)
WO-DHPSPA--L---.lineStyle:	0
WO-DHPSPA--L---.lineType:	0x00
WO-DHPSPA--L---.lineColor:	FG-RGB(190,190,190)
WO-DHPSPA--L---.maxPnts:	-1

#Breakwater/Groin/Jetty (Below Water)
WO-DHPSPB--L---.type:		ZmMilPolygon
WO-DHPSPB--L---.remarks:	Breakwater/Groin/Jetty (Below Water)
WO-DHPSPB--L---.lineStyle:	336
WO-DHPSPB--L---.lineType:	0x40
WO-DHPSPB--L---.lineColor:	FG-RGB(190,190,190)
WO-DHPSPB--L---.maxPnts:	-1

#Seawall
WO-DHPSPS--L---.type:		ZmMilPolygon
WO-DHPSPS--L---.remarks:	Seawall
WO-DHPSPS--L---.lineStyle:	0
WO-DHPSPS--L---.lineType:	0x00
WO-DHPSPS--L---.lineColor:	FG-RGB(190,190,190)
WO-DHPSPS--L---.maxPnts:	-1

#Leading Line
WO-DHALLA--L---.type:		ZmMilPolygon
WO-DHALLA--L---.remarks:	Leading Line
WO-DHALLA--L---.lineStyle:	335
WO-DHALLA--L---.lineType:	0x00
WO-DHALLA--L---.lineColor:	FG-RGB(0,0,0)
WO-DHALLA--L---.fillColor:	FG-RGB(0,0,0)
WO-DHALLA--L---.maxPnts:	-1

#Breakers
WO-DHHDB---L---.type:		ZmMilPolygon
WO-DHHDB---L---.remarks:	Breakers
WO-DHHDB---L---.lineStyle:	336
WO-DHHDB---L---.lineType:	0x10
WO-DHHDB---L---.lineColor:	FG-RGB(190,190,190)
WO-DHHDB---L---.fillColor:	FG-RGB(190,190,190)
WO-DHHDB---L---.maxPnts:	-1

#Reef
WOS-HHDR---L---.type:		ZmMilPolygon
WOS-HHDR---L---.remarks:	Reefs
WOS-HHDR---L---.lineStyle:	337
WOS-HHDR---L---.lineType:	0x00
WOS-HHDR---L---.lineColor:	FG-RGB(0,0,0)
WOS-HHDR---L---.fillColor:	FG-RGB(0,0,0)
WOS-HHDR---L---.maxPnts:	-1

#Current Flow - EBB
WO-DTCCCFE-L---.type:		ZmMilPolygon
WO-DTCCCFE-L---.remarks:	Current Flow - EBB
WO-DTCCCFE-L---.lineStyle:	338
WO-DTCCCFE-L---.lineType:	0x00
WO-DTCCCFE-L---.lineColor:	FG-RGB(190,190,190)
WO-DTCCCFE-L---.fillColor:	FG-RGB(190,190,190)
WO-DTCCCFE-L---.maxPnts:	-1

#Current Flow - Flood
WO-DTCCCFF-L---.type:		ZmMilPolygon
WO-DTCCCFF-L---.remarks:	Current Flow - Flood
WO-DTCCCFF-L---.lineStyle:	339
WO-DTCCCFF-L---.lineType:	0x00
WO-DTCCCFF-L---.lineColor:	FG-RGB(190,190,190)
WO-DTCCCFF-L---.fillColor:	FG-RGB(190,190,190)
WO-DTCCCFF-L---.maxPnts:	-1

#Maritime Limit Boundary
WO-DL-ML---L---.type:		ZmMilPolygon
WO-DL-ML---L---.remarks:	Maritime Limit Boundary
WO-DL-ML---L---.lineStyle:	336
WO-DL-ML---L---.lineType:	0x10
WO-DL-ML---L---.lineColor:	FG-RGB(255,0,255)
WO-DL-ML---L---.fillColor:	FG-RGB(255,0,255)
WO-DL-ML---L---.maxPnts:	-1

#Restricted Area
WO-DL-RA---L---.type:		ZmMilPolygon
WO-DL-RA---L---.remarks:	Restricted Area
WO-DL-RA---L---.lineStyle:	318
WO-DL-RA---L---.lineType:	0x00
WO-DL-RA---L---.lineColor:	FG-RGB(255,0,255)
WO-DL-RA---L---.fillColor:	FG-RGB(255,0,255)
WO-DL-RA---L---.maxPnts:	-1

#Submarine Cable
WO-DMCA----L---.type:		ZmMilPolygon
WO-DMCA----L---.remarks:	Submarine Cable
WO-DMCA----L---.lineStyle:	0
WO-DMCA----L---.lineType:	0x00
WO-DMCA----L---.lineColor:	FG-RGB(255,0,255)
WO-DMCA----L---.fillColor:	FG-RGB(255,0,255)
WO-DMCA----L---.maxPnts:	-1

#Canal
WO-DMCD----L---.type:		ZmMilPolygon
WO-DMCD----L---.remarks:	Canal
WO-DMCD----L---.lineStyle:	0
WO-DMCD----L---.lineType:	0x00
WO-DMCD----L---.lineColor:	FG-RGB(0,0,0)
WO-DMCD----L---.lineWidth:	2
WO-DMCD----L---.maxPnts:	-1

#Pipelines/Pipe
WO-DMPA----L---.type:		ZmMilPolygon
WO-DMPA----L---.remarks:	Pipelines/Pipe
WO-DMPA----L---.lineStyle:	340
WO-DMPA----L---.lineType:	0x00
WO-DMPA----L---.lineColor:	FG-RGB(190,190,190)
WO-DMPA----L---.fillColor:	FG-RGB(190,190,190)
WO-DMPA----L---.maxPnts:	-1

# Anchorage (Line)
WO-DHPBA---L---.type:		ZmMilPolygon
WO-DHPBA---L---.remarks:	Anchorage (Line)
WO-DHPBA---L---.lineStyle:	342
WO-DHPBA---L---.lineType:	0x00
WO-DHPBA---L---.lineWidth:	2
WO-DHPBA---L---.lineColor:	FG-RGB(255,0,255)
WO-DHPBA---L---.fillColor:	FG-RGB(255,0,255)
WO-DHPBA---L---.labelType:	0x0
WO-DHPBA---L---.labelTgls:	0x0
WO-DHPBA---L---.maxPnts:	-1

# Anchorage (Area)
WO-DHPBA----A--.type:		ZmMilPolygon
WO-DHPBA----A--.remarks:	Anchorage (Area)
WO-DHPBA----A--.lineStyle:	342
WO-DHPBA----A--.lineType:	0x00
WO-DHPBA----A--.lineWidth:	2
WO-DHPBA----A--.lineColor:	FG-RGB(255,0,255)
WO-DHPBA----A--.fillColor:	FG-RGB(255,0,255)
WO-DHPBA----A--.labelType:	0x0
WO-DHPBA----A--.labelTgls:	0x0
WO-DHPBA----A--.closed:		1
WO-DHPBA----A--.maxPnts:	-1

# Training Area
WO-DL-TA----A--.type:		ZmMilPolygon
WO-DL-TA----A--.remarks:	Training Area
WO-DL-TA----A--.lineStyle:	343
WO-DL-TA----A--.lineType:	0x10
WO-DL-TA----A--.lineWidth:	2
WO-DL-TA----A--.lineColor:	FG-RGB(255,0,255)
WO-DL-TA----A--.fillColor:	FG-RGB(255,0,255)
WO-DL-TA----A--.labelType:	0x0
WO-DL-TA----A--.labelTgls:	0x0
WO-DL-TA----A--.closed:		1
WO-DL-TA----A--.maxPnts:	-1


#***************************************************************
# Jet Stream
WA-DWJ-----L---.type:		ZmMilBPolygon
WA-DWJ-----L---.remarks:	Jet Stream
WA-DWJ-----L---.lineStyle:	100
WA-DWJ-----L---.lineType:	0x00
WA-DWJ-----L---.lineColor:	FG-RGB(255,0,0)
WA-DWJ-----L---.labelType:	0x0
WA-DWJ-----L---.labelTgls:	0x0
WA-DWJ-----L---.plotMask2:	0x00000010
WA-DWJ-----L---.maxPnts:	-1

# Stream Line
WA-DWS-----L---.type:		ZmMilBPolygon
WA-DWS-----L---.remarks:	Stream Line
WA-DWS-----L---.lineStyle:	100
WA-DWS-----L---.lineType:	0x00
WA-DWS-----L---.lineColor:	FG-RGB(0,0,0)
WA-DWS-----L---.labelType:	0x0
WA-DWS-----L---.labelTgls:	0x0
WA-DWS-----L---.plotMask2:	0x00000010
WA-DWS-----L---.maxPnts:	-1

# Inter-Tropical Convergance Zone
WA-DPXITCZ-L---.type:		ZmMilBPolygon
WA-DPXITCZ-L---.remarks:	Inter-Tropical Convergance Zone
WA-DPXITCZ-L---.lineStyle:	341
WA-DPXITCZ-L---.lineType:	0x00
WA-DPXITCZ-L---.lineColor:	FG-RGB(255,140,0)
WA-DPXITCZ-L---.fillColor:	FG-RGB(255,140,0)
WA-DPXITCZ-L---.labelType:	0x0
WA-DPXITCZ-L---.labelTgls:	0x0
WA-DPXITCZ-L---.plotMask2:	0x00000011
WA-DPXITCZ-L---.maxPnts:	-1

#Lead
WO-DIOL----L---.type:		ZmMilPolygon
WO-DIOL----L---.remarks:	Lead
WO-DIOL----L---.lineStyle:	332
WO-DIOL----L---.lineType:	0x00
WO-DIOL----L---.lineColor:	FG-RGB(0,0,0)
WO-DIOL----L---.fillColor:	FG-RGB(0,0,0)
WO-DIOL----L---.plotMask2:	0x00000001
WO-DIOL----L---.maxPnts:	-1

#Frozen Lead
WO-DIOLF---L---.type:		ZmMilPolygon
WO-DIOLF---L---.remarks:	Frozen Lead
WO-DIOLF---L---.lineStyle:	333
WO-DIOLF---L---.lineType:	0x00
WO-DIOLF---L---.lineColor:	FG-RGB(0,0,0)
WO-DIOLF---L---.fillColor:	FG-RGB(0,0,0)
WO-DIOLF---L---.plotMask2:	0x00000001
WO-DIOLF---L---.maxPnts:	-1
#***************************************************************


#***************************************************************
#*** End Polygon
#***************************************************************


#***************************************************************
#*** Start WindBarb
#***************************************************************

# Wind Plot
WAS-WP----P----.type:		ZmWindBarb
WAS-WP----P----.remarks:	Wind Plot
WAS-WP----P----.maxPnts:	2
WAS-WP----P----.lineColor:	FG-RGB(0,0,0)

#***************************************************************
#*** End WindBarb
#***************************************************************

#***************************************************************
#*** Start WindArea
#***************************************************************

# Tropical Storm Wind Areas And Date/Time Labels
WA-DWSTSWA--A--.type:		ZmWindArea
WA-DWSTSWA--A--.remarks:	Tropical Storm Wind Areas And Date/Time Labels
WA-DWSTSWA--A--.maxPnts:	2

#***************************************************************
#*** End WindArea
#***************************************************************

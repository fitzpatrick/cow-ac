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
#	SymbolCode.labelTgl:		1
#	SymbolCode.fillType:		FillType
#	SymbolCode.fillStipple:		Stipple (Hex or int)
#	SymbolCode.fillColor:		FG-RGB(r,g,b)
#	SymbolCode.maxPnts:			4
#
#	SymbolCode.plotMask1:		0x00

#	SymbolCode.plotMask2:		0x00010000	SHOW_T
#	SymbolCode.plotMask2:		0x40000000	SHOW_T1
#	SymbolCode.plotMask2:		0x00000040	SHOW_H
#	SymbolCode.plotMask2:		0x80000000	SHOW_H1
#	SymbolCode.plotMask2:		0x00040000	SHOW_W
#	SymbolCode.plotMask2:		0x10000000	SHOW_W1
#	SymbolCode.plotMask2:		0x00000800	SHOW_N
#
#	SymbolCode.plotMask2:		0x90050040	T|H|H1|W|W1
#	SymbolCode.plotMask2:		0x10040000	W|W1
#	SymbolCode.plotMask2:		0x10050000	T|W|W1
#	SymbolCode.plotMask2:		0x50050000	T|T1|W|W1
#
#	A 10
#	B 11
#	C 12
#	D 13
#	E 14
#	F 15
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
#
# G General
# T Tasks
# M Mobility/Surviveability
# F Fire Support
# S Combat Service Support
# O Other
#
# G-T------------ Tasks
# G-T-A---------- Tasks : Follow and Assume
# G-T-B---------- Tasks : Block
# G-T-C---------- Tasks : Canalize
# G-T-D---------- Tasks : Destroy
# G-T-E---------- Tasks : Isolate
# G-T-F---------- Tasks : Fix
# G-T-H---------- Tasks : Breach
# G-T-I---------- Tasks : Interdict
# G-T-J---------- Tasks : Contain
# G-T-K---------- Tasks : Counterattack
# G-T-L---------- Tasks : Delay
# G-T-M---------- Tasks : Retirement
# G-T-N---------- Tasks : Neutralize
# G-T-O---------- Tasks : Occupy
# G-T-P---------- Tasks : Penetrate
# G-T-Q---------- Tasks : Retain
# G-T-R---------- Tasks : Relief in Place
# G-T-S---------- Tasks : Secure
# G-T-T---------- Tasks : Disrupt
# G-T-U---------- Tasks : Security
# G-T-W---------- Tasks : Withdraw
# G-T-X---------- Tasks : Clear
# G-T-Y---------- Tasks : Bypass
# G-T-Z---------- Tasks : Seize
#
# G-G------------ Command and Control General Maneuver
# G-G-A---------- Command and Control General Maneuver : Aviation
# G-G-D---------- Command and Control General Maneuver : Defense
# G-G-G---------- Command and Control General Maneuver : General
# G-G-O---------- Command and Control General Maneuver : Offense
# G-G-P---------- Command and Control General Maneuver : Deception
# G-G-S---------- Command and Control General Maneuver : Special
#
# G-F------------ Fire Support
# G-F-A---------- Fire Support: Areas
# G-F-L---------- Fire Support: Lines
# G-F-P---------- Fire Support: Points
#
# G-M------------ Mobility/Survivablity
# G-M-B---------- Mobility/Survivablity : Obstacle Bypass
# G-M-N---------- Mobility/Survivablity : NBC
# G-M-O---------- Mobility/Survivablity : Obstacles
# G-M-S---------- Mobility/Survivablity : Survivability
#
# G-S------------ Combat Survice Support
# G-S-A---------- Combat Survice Support : Areas
# G-S-L---------- Combat Survice Support : Lines
# G-S-P---------- Combat Survice Support : Points
#
# G-O------------ Other
# G-O-B---------- Other : Bearing Line
# G-O-E---------- Other : Emergency
# G-O-F---------- Other : Fix
# G-O-H---------- Other : Hazard
# G-O-S---------- Other : Sea Subsurface Return
#
# W-------------- Weather
#
################################################################################

# Block (Task)
G-T-B----------.type:		ZmMilPolygon
G-T-B----------.uid:		10001
G-T-B----------.remarks:	Task (Block)
G-T-B----------.lineStyle:	70
G-T-B----------.lineType:	0x0
G-T-B----------.labelTgl:	0
G-T-B----------.maxPnts:	3
G-T-B----------.size:		10.0

# Breach
G-T-H----------.type:		ZmMilPolygon
G-T-H----------.uid:		10002
G-T-H----------.remarks:	Task (Breach)
G-T-H----------.lineStyle:	93
G-T-H----------.lineType:	0x0
G-T-H----------.labelTgl:	0
G-T-H----------.maxPnts:	3
G-T-H----------.size:		19

# Bypass (Task)
G-T-Y----------.type:		ZmMilPolygon
G-T-Y----------.uid:		10003
G-T-Y----------.remarks:	Task (Bypass)
G-T-Y----------.lineStyle:	94
G-T-Y----------.lineType:	0x0
G-T-Y----------.labelTgl:	0
G-T-Y----------.maxPnts:	3
G-T-Y----------.size:		0

# Canalize
G-T-C----------.type:		ZmMilPolygon
G-T-C----------.uid:		10004
G-T-C----------.remarks:	Task (Canalize)
G-T-C----------.lineStyle:	96
G-T-C----------.lineType:	0x0
G-T-C----------.labelTgl:	0
G-T-C----------.maxPnts:	3
G-T-C----------.size:		19

# Clear
G-T-X----------.type:		ZmMilPolygon
G-T-X----------.uid:		10005
G-T-X----------.remarks:	Task (Clear)
G-T-X----------.lineStyle:	97
G-T-X----------.lineType:	0x0
G-T-X----------.labelTgl:	0
G-T-X----------.maxPnts:	3
G-T-X----------.size:		10.0

# Contain
G-T-J----------.type:		ZmMilPolygon
G-T-J----------.uid:		10006
G-T-J----------.remarks:	Task (Contain)
G-T-J----------.lineStyle:	98
G-T-J----------.lineType:	0x0
G-T-J----------.labelTgl:	0
G-T-J----------.maxPnts:	3
G-T-J----------.size:		10.0

# Counterattack (CATK)
G-T-K----------.type:		ZmMilPolygon
G-T-K----------.uid:		10007
G-T-K----------.remarks:	Task (Counterattack/CATK)
G-T-K----------.lineStyle:	202
G-T-K----------.lineType:	0x41
G-T-K----------.labelTgl:	0
G-T-K----------.maxPnts:	3

# Counterattack by Fire (CATK)
G-T-KF---------.type:		ZmMilPolygon
G-T-KF---------.uid:		10008
G-T-KF---------.remarks:	Task (Counterattack by Fire/CATK)
G-T-KF---------.lineStyle:	203
G-T-KF---------.lineType:	0x41
G-T-KF---------.labelTgl:	0
G-T-KF---------.maxPnts:	3

# Delay
G-T-L----------.type:		ZmMilPolygon
G-T-L----------.uid:		10009
G-T-L----------.remarks:	Task (Delay)
G-T-L----------.lineStyle:	108
G-T-L----------.lineType:	0x0
G-T-L----------.labelTgl:	0
G-T-L----------.plotMask2:	0x00040000
G-T-L----------.maxPnts:	3
G-T-L----------.size:		5

# Destroy
G-T-D----------.type:		ZmMilPoint
G-T-D----------.uid:		10010
G-T-D----------.remarks:	Task (Destroy)
G-T-D----------.maxPnts:	1
G-T-D----------.labelTgl:	0
G-T-D----------.size:		40

# Disrupt (Task)
G-T-T----------.type:		ZmMilPolygon
G-T-T----------.uid:		10011
G-T-T----------.remarks:	Task (Disrupt)
G-T-T----------.lineStyle:	71
G-T-T----------.lineType:	0x0
G-T-T----------.labelTgl:	0
G-T-T----------.size:		0.75
G-T-T----------.maxPnts:	3

# Fix
G-T-F----------.type:		ZmMilPolygon
G-T-F----------.uid:		10012
G-T-F----------.remarks:	Task (Fix)
G-T-F----------.lineStyle:	72
G-T-F----------.lineType:	0x0
G-T-F----------.labelTgl:	0
G-T-F----------.maxPnts:	2
G-T-F----------.size:		10

# Follow and Assume
G-T-A----------.type:		ZmMilPolygon
G-T-A----------.uid:		10013
G-T-A----------.remarks:	Task (Follow and Assume)
G-T-A----------.lineStyle:	153
G-T-A----------.lineType:	0x0
G-T-A----------.labelTgl:	0
G-T-A----------.plotMask2:	0x00010000
G-T-A----------.maxPnts:	2
G-T-A----------.size:		10

# Follow and Support
G-T-AS---------.type:		ZmMilPolygon
G-T-AS---------.uid:		10014
G-T-AS---------.remarks:	Task (Follow and Support)
G-T-AS---------.lineStyle:	42
G-T-AS---------.lineType:	0x0
G-T-AS---------.labelTgl:	0
G-T-AS---------.plotMask2:	0x00010000
G-T-AS---------.maxPnts:	2
G-T-AS---------.size:		10

# Interdict
G-T-I----------.type:		ZmMilPoint
G-T-I----------.uid:		10015
G-T-I----------.remarks:	Task (Interdict)
G-T-I----------.lineType:	0x0
G-T-I----------.labelTgl:	0
G-T-I----------.maxPnts:	1
G-T-I----------.size:		40

# Isolate
G-T-E----------.type:		ZmMilPolygon
G-T-E----------.uid:		10016
G-T-E----------.remarks:	Task (Isolate)
G-T-E----------.lineStyle:	154
G-T-E----------.lineType:	0x0
G-T-E----------.labelTgl:	0
G-T-E----------.maxPnts:	2
G-T-E----------.size:		20

# Neutralize
G-T-N----------.type:		ZmMilPoint
G-T-N----------.uid:		10017
G-T-N----------.remarks:	Task (Neutralize)
G-T-N----------.maxPnts:	1
G-T-N----------.size:		40

# Occupy
G-T-O----------.type:		ZmMilPolygon
G-T-O----------.uid:		10018
G-T-O----------.remarks:	Task (Occupy)
G-T-O----------.lineStyle:	155
G-T-O----------.lineType:	0x0
G-T-O----------.labelTgl:	0
G-T-O----------.maxPnts:	2
G-T-O----------.size:		20

# Penetrate
G-T-P----------.type:		ZmMilPolygon
G-T-P----------.uid:		10019
G-T-P----------.remarks:	Task (Penetrate)
G-T-P----------.lineStyle:	158
G-T-P----------.lineType:	0x0
G-T-P----------.labelTgl:	0
G-T-P----------.maxPnts:	3
G-T-P----------.size:		10.0

# Relief in Place
G-T-R----------.type:		ZmMilPolygon
G-T-R----------.uid:		10020
G-T-R----------.remarks:	Task (Relief-In-Place)
G-T-R----------.lineStyle:	107
G-T-R----------.lineType:	0x0
G-T-R----------.labelTgl:	0
G-T-R----------.maxPnts:	4
G-T-R----------.size:		10.0

# Retain
G-T-Q----------.type:		ZmMilPolygon
G-T-Q----------.uid:		10021
G-T-Q----------.remarks:	Task (Retain)
G-T-Q----------.lineStyle:	156
G-T-Q----------.lineType:	0x0
G-T-Q----------.labelTgl:	0
G-T-Q----------.maxPnts:	2
G-T-Q----------.size:		20.0

# Retirement
G-T-M----------.type:		ZmMilPolygon
G-T-M----------.uid:		10022
G-T-M----------.remarks:	Task (Retirement)
G-T-M----------.lineStyle:	159
G-T-M----------.lineType:	0x0
G-T-M----------.labelTgl:	0
G-T-M----------.maxPnts:	3
G-T-M----------.size:		10.0

# Secure
G-T-S----------.type:		ZmMilPolygon
G-T-S----------.uid:		10023
G-T-S----------.remarks:	Task (Secure)
G-T-S----------.lineStyle:	157
G-T-S----------.lineType:	0x0
G-T-S----------.labelTgl:	0
G-T-S----------.maxPnts:	2
G-T-S----------.size:		20.0

#---------------------------------------------------------------

# Security Screen
G-T-US---------.type:		ZmMilPolygon
G-T-US---------.uid:		10024
G-T-US---------.remarks:	Task (Security/Screen)
G-T-US---------.lineStyle:	105
G-T-US---------.lineType:	0x0
G-T-US---------.labelTgl:	0
G-T-US---------.maxPnts:	3
G-T-US---------.size:		20.0

# Security Guard
G-T-UG---------.type:		ZmMilPolygon
G-T-UG---------.uid:		10025
G-T-UG---------.remarks:	Task (Security/Guard)
G-T-UG---------.lineStyle:	104
G-T-UG---------.lineType:	0x0
G-T-UG---------.labelTgl:	0
G-T-UG---------.maxPnts:	3
G-T-UG---------.size:		20

# Security Cover
G-T-UC---------.type:		ZmMilPolygon
G-T-UC---------.uid:		10026
G-T-UC---------.remarks:	Task (Security/Cover)
G-T-UC---------.lineStyle:	103
G-T-UC---------.lineType:	0x0
G-T-UC---------.labelTgl:	0
G-T-UC---------.maxPnts:	3
G-T-UC---------.size:		20

#---------------------------------------------------------------

# Seize
G-T-Z----------.type:		ZmMilPolygon
G-T-Z----------.uid:		10027
G-T-Z----------.remarks:	Task (Seize)
G-T-Z----------.lineStyle:	160
G-T-Z----------.lineType:	0x0
G-T-Z----------.labelTgl:	0
G-T-Z----------.maxPnts:	2
G-T-Z----------.size:		20

# Direction of Withdrawal
G-T-W----------.type:		ZmMilPolygon
G-T-W----------.uid:		10028
G-T-W----------.remarks:	Task (Withdrawal)
G-T-W----------.lineStyle:	106
G-T-W----------.lineType:	0x0
G-T-W----------.labelTgl:	0
G-T-W----------.maxPnts:	3
G-T-W----------.size:		10.0

# Withdrawal Under Pressure
G-T-WP---------.type:		ZmMilPolygon
G-T-WP---------.uid:		10029
G-T-WP---------.remarks:	Task (Withdrawal Under Pressure)
G-T-WP---------.lineStyle:	161
G-T-WP---------.lineType:	0x0
G-T-WP---------.labelTgl:	0
G-T-WP---------.maxPnts:	3
G-T-WP---------.size:		10.0

#---------------------------------------------------------------

# Datum
G-G-GPUUD------.type:			ZmMilPoint
G-G-GPUUD------.uid:		10030
G-G-GPUUD------.remarks:		Datum
G-G-GPUUD------.maxPnts:		1

# Brief Contact
G-G-GPUUB------.type:			ZmMilPoint
G-G-GPUUB------.uid:		10031
G-G-GPUUB------.remarks:		Brief Contact
G-G-GPUUB------.maxPnts:		1

# Lost Contact
G-G-GPUUL------.type:			ZmMilPoint
G-G-GPUUL------.uid:		10032
G-G-GPUUL------.remarks:		Lost Contact
G-G-GPUUL------.maxPnts:		1

# Sinker
G-G-GPUUS------.type:		ZmMilPoint
G-G-GPUUS------.uid:		10033
G-G-GPUUS------.remarks:	Sinker
G-G-GPUUS------.maxPnts:	1

# Sonobuoy
G-G-GPUY-------.type:		ZmMilPoint
G-G-GPUY-------.uid:		10034
G-G-GPUY-------.remarks:	Sonobuoy
G-G-GPUY-------.maxPnts:	1

# Sonobuoy Pattern Center
G-G-GPUYP------.type:		ZmMilPoint
G-G-GPUYP------.uid:		10035
G-G-GPUYP------.remarks:	Sonobuoy Pattern Center
G-G-GPUYP------.maxPnts:	1

# Sonobuoy (DIFAR)
G-G-GPUYD------.type:		ZmMilPoint
G-G-GPUYD------.uid:		10036
G-G-GPUYD------.remarks:	Sonobuoy (DIFAR)
G-G-GPUYD------.maxPnts:	1

# Sonobuoy (LOFAR)
G-G-GPUYL------.type:		ZmMilPoint
G-G-GPUYL------.uid:		10037
G-G-GPUYL------.remarks:	Sonobuoy (LOFAR)
G-G-GPUYL------.maxPnts:	1

# Sonobuoy (CASS)
G-G-GPUYC------.type:		ZmMilPoint
G-G-GPUYC------.uid:		10038
G-G-GPUYC------.remarks:	Sonobuoy (CASS)
G-G-GPUYC------.maxPnts:	1

# Sonobuoy (DICASS)
G-G-GPUYS------.type:		ZmMilPoint
G-G-GPUYS------.uid:		10039
G-G-GPUYS------.remarks:	Sonobuoy (DICASS)
G-G-GPUYS------.maxPnts:	1

# Sonobuoy (BT)
G-G-GPUYB------.type:		ZmMilPoint
G-G-GPUYB------.uid:		10040
G-G-GPUYB------.remarks:	Sonobuoy (BT)
G-G-GPUYB------.maxPnts:	1

# Sonobuoy (ANM)
G-G-GPUYA------.type:		ZmMilPoint
G-G-GPUYA------.uid:		10041
G-G-GPUYA------.remarks:	Sonobuoy (ANM)
G-G-GPUYA------.maxPnts:	1

# Sonobuoy (VLAD)
G-G-GPUYV------.type:		ZmMilPoint
G-G-GPUYV------.uid:		10042
G-G-GPUYV------.remarks:	Sonobuoy (VLAD)
G-G-GPUYV------.maxPnts:	1

# Sonobuoy (ATAC)
G-G-GPUYT------.type:		ZmMilPoint
G-G-GPUYT------.uid:		10043
G-G-GPUYT------.remarks:	Sonobuoy (ATAC)
G-G-GPUYT------.maxPnts:	1

# Sonobuoy (RO)
G-G-GPUYR------.type:		ZmMilPoint
G-G-GPUYR------.uid:		10044
G-G-GPUYR------.remarks:	Sonobuoy (RO)
G-G-GPUYR------.maxPnts:	1

# Sonobuoy (Kingpin)
G-G-GPUYK------.type:		ZmMilPoint
G-G-GPUYK------.uid:		10045
G-G-GPUYK------.remarks:	Sonobuoy (Kingpin)
G-G-GPUYK------.maxPnts:	1

#---------------------------------------------------------------

# Search Point
G-G-GPUS-------.type:		ZmMilPoint
G-G-GPUS-------.uid:		10046
G-G-GPUS-------.remarks:	Search Point
G-G-GPUS-------.maxPnts:	1

# Search Area Marker
G-G-GPUSA------.type:		ZmMilPoint
G-G-GPUSA------.uid:		10047
G-G-GPUSA------.remarks:	Search Area Marker
G-G-GPUSA------.maxPnts:	1

# DIP Position
G-G-GPUSD------.type:		ZmMilPoint
G-G-GPUSD------.uid:		10048
G-G-GPUSD------.remarks:	DIP Position
G-G-GPUSD------.maxPnts:	1

# Search Center
G-G-GPUSC------.type:		ZmMilPoint
G-G-GPUSC------.uid:		10049
G-G-GPUSC------.remarks:	Search Center
G-G-GPUSC------.maxPnts:	1

#---------------------------------------------------------------

# Special Point
G-G-GPRS-------.type:		ZmMilPoint
G-G-GPRS-------.uid:		10050
G-G-GPRS-------.remarks:	Special Reference Point
G-G-GPRS-------.maxPnts:	1

# NAV Reference
G-G-GPRN-------.type:		ZmMilPoint
G-G-GPRN-------.uid:		10051
G-G-GPRN-------.remarks:	NAV Reference
G-G-GPRN-------.maxPnts:	1

# DLRP
G-G-GPRD-------.type:		ZmMilPoint
G-G-GPRD-------.uid:		10052
G-G-GPRD-------.remarks:	DLRP
G-G-GPRD-------.maxPnts:	1

# Point of Interest
G-G-GPRI-------.type:		ZmMilPoint
G-G-GPRI-------.uid:		10053
G-G-GPRI-------.remarks:	Point of Interest
G-G-GPRI-------.plotMask1:	0x00
G-G-GPRI-------.plotMask2:	0x010000
G-G-GPRI-------.maxPnts:	1
G-G-GPRI-------.size:		40

#---------------------------------------------------------------

# Aim Point
G-G-GPWA-------.type:		ZmMilPoint
G-G-GPWA-------.uid:		10054
G-G-GPWA-------.remarks:	Aim Point
G-G-GPWA-------.maxPnts:	1

# Drop Point
G-G-GPWD-------.type:		ZmMilPoint
G-G-GPWD-------.uid:		10055
G-G-GPWD-------.remarks:	Drop Point
G-G-GPWD-------.maxPnts:	1

# Entry Point
G-G-GPWE-------.type:		ZmMilPoint
G-G-GPWE-------.uid:		10056
G-G-GPWE-------.remarks:	Entry Point
G-G-GPWE-------.maxPnts:	1

# Ground Zero
G-G-GPWG-------.type:		ZmMilPoint
G-G-GPWG-------.uid:		10057
G-G-GPWG-------.remarks:	Ground Zero
G-G-GPWG-------.maxPnts:	1

# MSL Detect Point
G-G-GPWM-------.type:		ZmMilPoint
G-G-GPWM-------.uid:		10058
G-G-GPWM-------.remarks:	MSL Detect Point
G-G-GPWM-------.maxPnts:	1

# Impact Point
G-G-GPWI-------.type:		ZmMilPoint
G-G-GPWI-------.uid:		10059
G-G-GPWI-------.remarks:	Impact Point
G-G-GPWI-------.maxPnts:	1

# Predicted Impact Point
G-G-GPWP-------.type:		ZmMilPoint
G-G-GPWP-------.uid:		10060
G-G-GPWP-------.remarks:	Predicted Impact Point
G-G-GPWP-------.maxPnts:	1

#---------------------------------------------------------------

# Formation
G-G-GPF--------.type:		ZmMilPoint
G-G-GPF--------.uid:		10061
G-G-GPF--------.remarks:	Formation
G-G-GPF--------.maxPnts:	1

# Harbor
G-G-GPH--------.type:		ZmMilPoint
G-G-GPH--------.uid:		10062
G-G-GPH--------.remarks:	Harbor
G-G-GPH--------.plotMask2:	0x00000040
G-G-GPH--------.maxPnts:	1

# Point Q
G-G-GPHQ-------.type:		ZmMilPoint
G-G-GPHQ-------.uid:		10063
G-G-GPHQ-------.remarks:	Point Q
G-G-GPHQ-------.maxPnts:	1

# Point A
G-G-GPHA-------.type:		ZmMilPoint
G-G-GPHA-------.uid:		10064
G-G-GPHA-------.remarks:	Point A
G-G-GPHA-------.maxPnts:	1

# Point Y
G-G-GPHY-------.type:		ZmMilPoint
G-G-GPHY-------.uid:		10065
G-G-GPHY-------.remarks:	Point Y
G-G-GPHY-------.maxPnts:	1

# Point X
G-G-GPHX-------.type:		ZmMilPoint
G-G-GPHX-------.uid:		10066
G-G-GPHX-------.remarks:	Point X
G-G-GPHX-------.maxPnts:	1

# Route
G-G-GPO--------.type:		ZmMilPoint
G-G-GPO--------.uid:		10067
G-G-GPO--------.remarks:	Route
G-G-GPO--------.maxPnts:	1

# Rendezvous
G-G-GPOZ-------.type:		ZmMilPoint
G-G-GPOZ-------.uid:		10068
G-G-GPOZ-------.remarks:	Rendezvous
G-G-GPOZ-------.maxPnts:	1

# Diversion
G-G-GPOD-------.type:		ZmMilPoint
G-G-GPOD-------.uid:		10069
G-G-GPOD-------.remarks:	Diversion
G-G-GPOD-------.maxPnts:	1

# Waypoint
G-G-GPOW-------.type:		ZmMilPoint
G-G-GPOW-------.uid:		10070
G-G-GPOW-------.remarks:	Waypoint
G-G-GPOW-------.maxPnts:	1

# PIM
G-G-GPOP-------.type:		ZmMilPoint
G-G-GPOP-------.uid:		10071
G-G-GPOP-------.remarks:	PIM
G-G-GPOP-------.maxPnts:	1

# Point R
G-G-GPOR-------.type:		ZmMilPoint
G-G-GPOR-------.uid:		10072
G-G-GPOR-------.remarks:	Point R
G-G-GPOR-------.maxPnts:	1

#---------------------------------------------------------------

# CAP Station
G-G-GPAP-------.type:		ZmMilPoint
G-G-GPAP-------.uid:		10073
G-G-GPAP-------.remarks:	CAP Station
G-G-GPAP-------.maxPnts:	1

# AEW Station
G-G-GPAW-------.type:		ZmMilPoint
G-G-GPAW-------.uid:		10074
G-G-GPAW-------.remarks:	AEW Station
G-G-GPAW-------.maxPnts:	1

# TACAN
G-G-GPAT-------.type:		ZmMilPoint
G-G-GPAT-------.uid:		10075
G-G-GPAT-------.remarks:	TACAN
G-G-GPAT-------.maxPnts:	1

# Tanking Station
G-G-GPAK-------.type:		ZmMilPoint
G-G-GPAK-------.uid:		10076
G-G-GPAK-------.remarks:	Tanking Station
G-G-GPAK-------.maxPnts:	1

# ASW F/W
G-G-GPAA-------.type:		ZmMilPoint
G-G-GPAA-------.uid:		10077
G-G-GPAA-------.remarks:	ASW Fixed Wing
G-G-GPAA-------.maxPnts:	1

# ASW Helo
G-G-GPAH-------.type:		ZmMilPoint
G-G-GPAH-------.uid:		10078
G-G-GPAH-------.remarks:	ASW Helo
G-G-GPAH-------.maxPnts:	1

# Tomcat
G-G-GPAO-------.type:		ZmMilPoint
G-G-GPAO-------.uid:		10079
G-G-GPAO-------.remarks:	Tomcat Station
G-G-GPAO-------.maxPnts:	1

# Rescue
G-G-GPAR-------.type:		ZmMilPoint
G-G-GPAR-------.uid:		10080
G-G-GPAR-------.remarks:	Rescue Point
G-G-GPAR-------.maxPnts:	1

# Replenish Point
G-G-GPAL-------.type:		ZmMilPoint
G-G-GPAL-------.uid:		10081
G-G-GPAL-------.remarks:	Replenish Point
G-G-GPAL-------.maxPnts:	1

# Marshall Point
G-G-GPAM-------.type:		ZmMilPoint
G-G-GPAM-------.uid:		10082
G-G-GPAM-------.remarks:	Marshall Point
G-G-GPAM-------.maxPnts:	1

# Strike IP
G-G-GPAS-------.type:		ZmMilPoint
G-G-GPAS-------.uid:		10083
G-G-GPAS-------.remarks:	Strike IP
G-G-GPAS-------.maxPnts:	1

# Corridor Tab
G-G-GPAC-------.type:		ZmMilPoint
G-G-GPAC-------.uid:		10084
G-G-GPAC-------.remarks:	Corridor Tab
G-G-GPAC-------.maxPnts:	1

#---------------------------------------------------------------

# General or Unspecified C2 Point
G-G-GPP--------.type:		ZmControlPoint
G-G-GPP--------.uid:		10085
G-G-GPP--------.remarks:	General or Unspecified C2 Point
G-G-GPP--------.plotMask2:	0x10050040
G-G-GPP--------.maxPnts:	1

# Checkpoint
G-G-GPPK-------.type:		ZmControlPoint
G-G-GPPK-------.uid:		10086
G-G-GPPK-------.remarks:	CheckPoint
G-G-GPPK-------.plotMask1:	0x00
G-G-GPPK-------.plotMask2:	0x10050040
G-G-GPPK-------.maxPnts:	1

# Contact Point
G-G-GPPC-------.type:		ZmMilPoint
G-G-GPPC-------.uid:		10087
G-G-GPPC-------.remarks:	Contact Point
G-G-GPPC-------.plotMask1:	0x00
G-G-GPPC-------.plotMask2:	0x010000
G-G-GPPC-------.maxPnts:	1

# Coordination Point
G-G-GPPO-------.type:		ZmMilPoint
G-G-GPPO-------.uid:		10088
G-G-GPPO-------.remarks:	Coordination Point
G-G-GPPO-------.maxPnts:	1

# Decision Point
G-G-GPPD-------.type:		ZmMilPoint
G-G-GPPD-------.uid:		10089
G-G-GPPD-------.remarks:	Decision Point
G-G-GPPD-------.plotMask1:	0x00
G-G-GPPD-------.plotMask2:	0x010000
G-G-GPPD-------.maxPnts:	1

# Linkup Point
G-G-GPPL-------.type:		ZmControlPoint
G-G-GPPL-------.uid:		10090
G-G-GPPL-------.remarks:	Linkup Point
G-G-GPPL-------.plotMask1:	0x00
G-G-GPPL-------.plotMask2:	0x10050040
G-G-GPPL-------.maxPnts:	1

# Passage Point
G-G-GPPP-------.type:		ZmControlPoint
G-G-GPPP-------.uid:		10091
G-G-GPPP-------.remarks:	Passage Point
G-G-GPPP-------.plotMask1:	0x00
G-G-GPPP-------.plotMask2:	0x10050040
G-G-GPPP-------.maxPnts:	1

# Rally Point
G-G-GPPR-------.type:		ZmControlPoint
G-G-GPPR-------.uid:		10092
G-G-GPPR-------.remarks:	Rally Point
G-G-GPPR-------.plotMask1:	0x00
G-G-GPPR-------.plotMask2:	0x10050040
G-G-GPPR-------.maxPnts:	1

# Release Point
G-G-GPPE-------.type:		ZmControlPoint
G-G-GPPE-------.uid:		10093
G-G-GPPE-------.remarks:	Release Point (RP)
G-G-GPPE-------.plotMask2:	0x10050040
G-G-GPPE-------.maxPnts:	1

# Start Point
G-G-GPPS-------.type:		ZmControlPoint
G-G-GPPS-------.uid:		10094
G-G-GPPS-------.remarks:	Start Point (SP)
G-G-GPPS-------.plotMask2:	0x10050040
G-G-GPPS-------.maxPnts:	1

# Amnesty Point
G-G-GPPA-------.type:		ZmControlPoint
G-G-GPPA-------.uid:		10094
G-G-GPPA-------.remarks:	Amnesty Point (AMN)
G-G-GPPA-------.plotMask2:	0x10050040
G-G-GPPA-------.maxPnts:	1

# Waypoint
G-G-GPPW-------.type:		ZmMilPoint
G-G-GPPW-------.uid:		10095
G-G-GPPW-------.remarks:	Waypoint
G-G-GPPW-------.plotMask2:	0x010000
G-G-GPPW-------.maxPnts:	1

#---------------------------------------------------------------

# Boundary
G-G-GLB--------.type:		ZmMilPolygon
G-G-GLB--------.uid:		10096
G-G-GLB--------.remarks:	Boundary
G-G-GLB--------.lineStyle:	28
G-G-GLB--------.lineType:	0x00
G-G-GLB--------.plotMask1:	0x00
G-G-GLB--------.plotMask2:	0x40010000
G-G-GLB--------.maxPnts:	-1
G-G-GLB--------.size:		40

# FLOT
G-G-GLF--------.type:		ZmMilPolygon
G-G-GLF--------.uid:		10097
G-G-GLF--------.remarks:	Forward Line of Troops (FLOT)
G-G-GLF--------.lineStyle:	214
G-G-GLF--------.lineType:	0x00
G-G-GLF--------.plotMask1:	0x00
G-G-GLF--------.plotMask2:	0x0000
G-G-GLF--------.maxPnts:	-1
G-G-GLF--------.size:		30

# Line Of Contact
G-G-GLC--------.type:		ZmMilPolygon
G-G-GLC--------.uid:		10098
G-G-GLC--------.remarks:	Line Of Contact (LC)
G-G-GLC--------.lineStyle:	115
G-G-GLC--------.lineType:	0x0
G-G-GLC--------.maxPnts:	-1
G-G-GLC--------.fillColor:	FG-RGB(255,0,0)
G-G-GLC--------.lineColor:	FG-RGB(0,255,255)
G-G-GLC--------.plotMask1:	0x00
G-G-GLC--------.plotMask2:	0x0000
G-G-GLC--------.size:		30

# Phase/Coordination Line
G-G-GLP--------.type:		ZmMilPolygon
G-G-GLP--------.uid:		10099
G-G-GLP--------.remarks:	Phase/Coordination Line
G-G-GLP--------.lineStyle:	29
G-G-GLP--------.lineType:	0x0
G-G-GLP--------.plotMask1:	0x00
G-G-GLP--------.plotMask2:	0x010000
G-G-GLP--------.maxPnts:	-1

# Light Line
G-G-GLL--------.type:			ZmMilPolygon
G-G-GLL--------.uid:		10100
G-G-GLL--------.remarks:		Light Line
G-G-GLL--------.lineStyle:		142
G-G-GLL--------.lineType:		0x0
G-G-GLL--------.plotMask2:	0x010000
G-G-GLL--------.maxPnts:		-1

#---------------------------------------------------------------

# General Area
G-G-GAG--------.type:		ZmMilPolygon
G-G-GAG--------.uid:		10101
G-G-GAG--------.remarks:	General Area
G-G-GAG--------.lineStyle:	211
G-G-GAG--------.lineType:	0x00
G-G-GAG--------.plotMask2:	0x00010000
G-G-GAG--------.closed:		1
G-G-GAG--------.maxPnts:	-1

# Assembly Area
G-G-GAA--------.type:		ZmMilPolygon
G-G-GAA--------.uid:		10102
G-G-GAA--------.remarks:	Assembly Area
G-G-GAA--------.lineStyle:	118
G-G-GAA--------.lineType:	0x00
G-G-GAA--------.plotMask1:	0x00
G-G-GAA--------.plotMask2:	0x010000
G-G-GAA--------.closed:		1
G-G-GAA--------.maxPnts:	-1

# Engagement Area (General)
G-G-GAE--------.type:		ZmMilPolygon
G-G-GAE--------.uid:		10103
G-G-GAE--------.remarks:	Engagement Area (EA)
G-G-GAE--------.lineStyle:	126
G-G-GAE--------.lineType:	0x00
G-G-GAE--------.plotMask2:	0x010000
G-G-GAE--------.closed:		1
G-G-GAE--------.maxPnts:	-1

# Fortified Area
G-G-GAF--------.type:		ZmMilPolygon
G-G-GAF--------.uid:		10104
G-G-GAF--------.remarks:	Fortified Area
G-G-GAF--------.lineStyle:	215
G-G-GAF--------.lineType:	0x0
G-G-GAF--------.closed:		1
G-G-GAF--------.maxPnts:	-1

# Drop Zone
G-G-GAD--------.type:		ZmMilPolygon
G-G-GAD--------.uid:		10105
G-G-GAD--------.remarks:	Drop Zone (DZ)
G-G-GAD--------.lineStyle:	125
G-G-GAD--------.lineType:	0x00
G-G-GAD--------.plotMask2:	0x010000
G-G-GAD--------.closed:		1
G-G-GAD--------.maxPnts:	-1

# Extraction Zone
G-G-GAX--------.type:		ZmMilPolygon
G-G-GAX--------.uid:		10106
G-G-GAX--------.remarks:	Extraction Zone (EZ)
G-G-GAX--------.lineStyle:	144
G-G-GAX--------.lineType:	0x00
G-G-GAX--------.plotMask2:	0x010000
G-G-GAX--------.closed:		1
G-G-GAX--------.maxPnts:	-1

# Landing Zone
G-G-GAL--------.type:		ZmMilPolygon
G-G-GAL--------.uid:		10107
G-G-GAL--------.remarks:	Landing Zone (LZ)
G-G-GAL--------.lineStyle:	129
G-G-GAL--------.lineType:	0x00
G-G-GAL--------.plotMask2:	0x010000
G-G-GAL--------.closed:		1
G-G-GAL--------.maxPnts:	-1

# Pickup Zone
G-G-GAP--------.type:		ZmMilPolygon
G-G-GAP--------.uid:		10108
G-G-GAP--------.remarks:	Pickup Zone (PZ)
G-G-GAP--------.lineStyle:	133
G-G-GAP--------.lineType:	0x00
G-G-GAP--------.plotMask2:	0x010000
G-G-GAP--------.closed:		1
G-G-GAP--------.maxPnts:	-1

# Search Area Indicator
G-G-GAS--------.type:		ZmMilPolygon
G-G-GAS--------.uid:		10109
G-G-GAS--------.remarks:	Search Area/Reconnaissance Area
G-G-GAS--------.lineStyle:	199
G-G-GAS--------.lineType:	0x0
G-G-GAS--------.maxPnts:	3

# Limited Access Area (LAA)
G-G-GAY--------.type:		ZmMilPolygon
G-G-GAY--------.uid:		10110
G-G-GAY--------.remarks:	Limited Access Area (LAA)
G-G-GAY--------.lineStyle:	174
G-G-GAY--------.lineType:	0x00
G-G-GAY--------.plotMask2:	0x000040
G-G-GAY--------.closed:		1
G-G-GAY--------.maxPnts:	-1

# Airfield Zone
G-G-GAZ--------.type:		ZmMilPolygon
G-G-GAZ--------.uid:		10111
G-G-GAZ--------.remarks:	Airfield Zone
G-G-GAZ--------.lineStyle:	197
G-G-GAZ--------.lineType:	0x0
G-G-GAZ--------.closed:		1
G-G-GAZ--------.labelTgl:	1
G-G-GAZ--------.maxPnts:	-1

#===============================================================

# Air Control Point
G-G-APP--------.type:		ZmMilPoint
G-G-APP--------.uid:		10112
G-G-APP--------.remarks:	Air Control Point (ACP)
G-G-APP--------.plotMask2:	0x010000
G-G-APP--------.maxPnts:	1

# Communications Checkpoint (CCP)
G-G-APC--------.type:		ZmMilPoint
G-G-APC--------.uid:		10113
G-G-APC--------.remarks:	Communications Checkpoint (CCP)
G-G-APC--------.plotMask2:	0x010000
G-G-APC--------.maxPnts:	1

# Pop-Up Point (PUP)
G-G-APU--------.type:		ZmMilPoint
G-G-APU--------.uid:		10114
G-G-APU--------.remarks:	Pop-Up Point (PUP)
G-G-APU--------.maxPnts:	1

# Downed Aircrew Pickup Point
G-G-APD--------.type:		ZmControlPoint
G-G-APD--------.uid:		10115
G-G-APD--------.remarks:	Downed Aircrew Pickup Point
G-G-APD--------.maxPnts:	1

#===============================================================

# Air Corridor
G-G-ALC--------.type:		ZmCorridorEx
G-G-ALC--------.uid:		10116
G-G-ALC--------.remarks:	Air Corridor
G-G-ALC--------.maxPnts:	-1

# Minimum Risk Route
G-G-ALM--------.type:		ZmMilPolygon
G-G-ALM--------.uid:		10117
G-G-ALM--------.remarks:	Minimum Risk Route (MRR)
G-G-ALM--------.lineStyle:	216
G-G-ALM--------.lineType:	0x00
G-G-ALM--------.labelTgl:	0
G-G-ALM--------.plotMask1:	0x00
G-G-ALM--------.plotMask2:	0x10040000
G-G-ALM--------.maxPnts:	2

# Standard Use Army Aircraft Flight Route (SAAFR)
G-G-ALS--------.type:		ZmMilPolygon
G-G-ALS--------.uid:		10118
G-G-ALS--------.remarks:	Standard Use Army Aircraft Flight Route (SAAFR)
G-G-ALS--------.lineStyle:	219
G-G-ALS--------.lineType:	0x00
G-G-ALS--------.labelTgl:	0
G-G-ALS--------.plotMask1:	0x00
G-G-ALS--------.plotMask2:	0x80010040
G-G-ALS--------.maxPnts:	2

# UAV Route
G-G-ALU--------.type:		ZmMilPolygon
G-G-ALU--------.uid:		10119
G-G-ALU--------.remarks:	Unmanned Aerial Vehicle Route (UAV)
G-G-ALU--------.lineStyle:	217
G-G-ALU--------.lineType:	0x00
G-G-ALU--------.labelTgl:	0
G-G-ALU--------.plotMask1:	0x00
G-G-ALU--------.plotMask2:	0x10040000
G-G-ALU--------.maxPnts:	2

# Low Level Transit Route
G-G-ALL--------.type:		ZmMilPolygon
G-G-ALL--------.uid:		10120
G-G-ALL--------.remarks:	Low Level Transit Route (LLTR)
G-G-ALL--------.lineStyle:	218
G-G-ALL--------.lineType:	0x0
G-G-ALL--------.labelTgl:	0
G-G-ALL--------.plotMask1:	0x00
G-G-ALL--------.plotMask2:	0x10040000
G-G-ALL--------.maxPnts:	2

#===============================================================

# Restricted Operations Zone
G-G-AAR--------.type:		ZmMilPolygon
G-G-AAR--------.uid:		10121
G-G-AAR--------.remarks:	Restricted Operations Zone (ROZ)
G-G-AAR--------.lineStyle:	145
G-G-AAR--------.lineType:	0x0
G-G-AAR--------.labelTgls:	0x3f
G-G-AAR--------.labelType:	0x0501
G-G-AAR--------.plotMask1:	0x00
G-G-AAR--------.plotMask2:	0x90050040
G-G-AAR--------.closed:		1
G-G-AAR--------.maxPnts:	-1

# Forward Air Defense Zone
G-G-AAF--------.type:		ZmMilPolygon
G-G-AAF--------.uid:		10122
G-G-AAF--------.remarks:	Forward Area Air Defense Zone (FAADEZ)
G-G-AAF--------.lineStyle:	146
G-G-AAF--------.lineType:	0x0
G-G-AAF--------.labelTgls:	0x3f
G-G-AAF--------.labelType:	0x0501
G-G-AAF--------.plotMask1:	0x00
G-G-AAF--------.plotMask2:	0x90050040
G-G-AAF--------.closed:		1
G-G-AAF--------.maxPnts:	-1

# High Density Airspace Control Zone
G-G-AAH--------.type:		ZmMilPolygon
G-G-AAH--------.uid:		10123
G-G-AAH--------.remarks:	High Density Airspace Control Zone (HIDACZ)
G-G-AAH--------.lineStyle:	147
G-G-AAH--------.lineType:	0x0
G-G-AAH--------.plotMask1:	0x00
G-G-AAH--------.plotMask2:	0x90050040
G-G-AAH--------.closed:		1
G-G-AAH--------.maxPnts:	-1

# Missile Engagement Zone
G-G-AAM--------.type:		ZmMilPolygon
G-G-AAM--------.uid:		10124
G-G-AAM--------.remarks:	Missile Engagement Zone (MEZ)
G-G-AAM--------.lineStyle:	148
G-G-AAM--------.lineType:	0x0
G-G-AAM--------.plotMask1:	0x00
G-G-AAM--------.plotMask2:	0x90050040
G-G-AAM--------.closed:		1
G-G-AAM--------.maxPnts:	-1

# Low Altitude MEZ
G-G-AAML-------.type:			ZmMilPolygon
G-G-AAML-------.uid:		10125
G-G-AAML-------.remarks:		Low Altitude MEZ (LOMEZ)
G-G-AAML-------.lineStyle:		149
G-G-AAML-------.lineType:		0x0
G-G-AAML-------.plotMask2:		0x90050040
G-G-AAML-------.closed:			1
G-G-AAML-------.maxPnts:		-1

# High Altitude MEZ
G-G-AAMH-------.type:			ZmMilPolygon
G-G-AAMH-------.uid:		10126
G-G-AAMH-------.remarks:		High Altitude MEZ (HIMEZ)
G-G-AAMH-------.lineStyle:		150
G-G-AAMH-------.lineType:		0x0
G-G-AAMH-------.plotMask2:		0x90050040
G-G-AAMH-------.closed:			1
G-G-AAMH-------.maxPnts:		-1

# Weapons Free Zone
G-G-AAW--------.type:			ZmMilPolygon
G-G-AAW--------.uid:		10127
G-G-AAW--------.remarks:		Weapons Free Zone (WFZ)
G-G-AAW--------.lineStyle:		151
G-G-AAW--------.lineType:		0x0
G-G-AAW--------.fillStipple:	0x400000
G-G-AAW--------.fillType:		4194304
G-G-AAW--------.fillColor:		FG-RGB(200,20,20)
G-G-AAW--------.plotMask2:		0x10050000
G-G-AAW--------.closed:			1
G-G-AAW--------.maxPnts:		-1

#===============================================================

# Dummy (Deception/Decoy)
G-G-PD---------.type:			ZmMilPolygon
G-G-PD---------.uid:		10128
G-G-PD---------.remarks:		Dummy (Deception/Decoy)
G-G-PD---------.lineStyle:		222
G-G-PD---------.lineType:		0x11
G-G-PD---------.maxPnts:		3

#===============================================================

# Axis of Advance for Feint
G-G-PA---------.type:			ZmMilPolygon
G-G-PA---------.uid:		10129
G-G-PA---------.remarks:		Axis of Advance for Feint
G-G-PA---------.lineStyle:		205
G-G-PA---------.lineType:		0
G-G-PA---------.plotMask2:		0x00010000
G-G-PA---------.maxPnts:		3

# Direction of Attack for Feint
G-G-PF---------.type:			ZmMilPolygon
G-G-PF---------.uid:		10130
G-G-PF---------.remarks:		Direction of Attack (Feint)
G-G-PF---------.lineStyle:		41
G-G-PF---------.lineType:		0
G-G-PF---------.plotMask2:		0x00010000
G-G-PF---------.maxPnts:		2

# Decoy Mined Area
G-G-PM---------.type:			ZmMilPolygon
G-G-PM---------.uid:		10131
G-G-PM---------.remarks:		Decoy Mined Area
G-G-PM---------.lineStyle:		175
G-G-PM---------.lineType:		0
G-G-PM---------.closed:			1
G-G-PM---------.maxPnts:		-1

# Decoy Mined Area (Fenced)
G-G-PY---------.type:			ZmMilPolygon
G-G-PY---------.uid:		10132
G-G-PY---------.remarks:		Decoy Mined Area (Fenced)
G-G-PY---------.lineStyle:		176
G-G-PY---------.lineType:		0
G-G-PY---------.closed:			1
G-G-PY---------.maxPnts:		-1

# Dummy Minefield
G-G-PN---------.type:			ZmMilPoint
G-G-PN---------.uid:		10133
G-G-PN---------.remarks:		Deception, Dummy Minefield-Static
G-G-PN---------.maxPnts:		1

# Dummy Mined Area
G-G-PC---------.type:			ZmMilPolygon
G-G-PC---------.uid:		10134
G-G-PC---------.remarks:		Mined Area (Dummy)
G-G-PC---------.lineStyle:		249
G-G-PC---------.lineType:		0
G-G-PC---------.fillColor:		FG-RGB(255,255,0)
G-G-PC---------.fillType:		2
G-G-PC---------.fillStipple:	0x700000
G-G-PC---------.closed:			1
G-G-PC---------.maxPnts:		-1

#===============================================================

# Target Reference Point
G-G-DPT--------.type:			ZmMilPoint
G-G-DPT--------.uid:		10135
G-G-DPT--------.remarks:		Target Reference Point
G-G-DPT--------.plotMask2:		0x010000
G-G-DPT--------.maxPnts:		1

# Observation Post/Outpost
G-G-DPO--------.type:			ZmMilPoint
G-G-DPO--------.uid:		10136
G-G-DPO--------.remarks:		Observation Post/Outpost
G-G-DPO--------.maxPnts:		1

# Combat Outpost
G-G-DPOC-------.type:			ZmMilPoint
G-G-DPOC-------.uid:		10137
G-G-DPOC-------.remarks:		Combat Outpost
G-G-DPOC-------.maxPnts:		1

# Observation Post Dismounted Scounts
G-G-DPOR-------.type:			ZmMilPoint
G-G-DPOR-------.uid:		10138
G-G-DPOR-------.remarks:		Observation Post Dismounted Scounts
G-G-DPOR-------.maxPnts:		1

# Forward Observer Position
G-G-DPOF-------.type:			ZmMilPoint
G-G-DPOF-------.uid:		10139
G-G-DPOF-------.remarks:		Forward Observer Position
G-G-DPOF-------.maxPnts:		1

# Sensor Outpost/Listening Post (OP/LP)
G-G-DPOS-------.type:			ZmMilPoint
G-G-DPOS-------.uid:		10140
G-G-DPOS-------.remarks:		Sensor Outpost/Listening Post (OP/LP)
G-G-DPOS-------.maxPnts:		1

# NBC Observation Post (Dismounted)
G-G-DPON-------.type:			ZmMilPoint
G-G-DPON-------.uid:		10141
G-G-DPON-------.remarks:		NBC Observation Post (Dismounted)
G-G-DPON-------.maxPnts:		1

#===============================================================

# FEBA (No Line)
G-G-DLF--------.type:		ZmMilPolygon
G-G-DLF--------.uid:		10142
G-G-DLF--------.remarks:	Forward Edge of Battle Area (FEBA)
G-G-DLF--------.lineStyle:	43
G-G-DLF--------.lineType:	0x03
G-G-DLF--------.maxPnts:	2

# Principal Direction of Fire (PDF)
G-G-DLP--------.type:		ZmMilPolygon
G-G-DLP--------.uid:		10143
G-G-DLP--------.remarks:	Principal Direction of Fire (PDF)
G-G-DLP--------.lineStyle:	168
G-G-DLP--------.lineType:	0x0
G-G-DLP--------.maxPnts:	3

# Battle Position
G-G-DAB--------.type:		ZmMilPolygon
G-G-DAB--------.uid:		10144
G-G-DAB--------.remarks:	Battle Position
G-G-DAB--------.lineStyle:	212
G-G-DAB--------.lineType:	0x0
G-G-DAB--------.labelTgls:	0x03
G-G-DAB--------.labelType:	0x0501
G-G-DAB--------.plotMask1:	0x00
G-G-DAB--------.plotMask2:	0x010000
G-G-DAB--------.closed:		1
G-G-DAB--------.maxPnts:	-1

# Battle Position (Not Occupied)
G-G-DABP-------.type:		ZmMilPolygon
G-G-DABP-------.uid:		10145
G-G-DABP-------.remarks:	Battle Position (Not Occupied)
G-G-DABP-------.lineStyle:	213
G-G-DABP-------.lineType:	0x41
G-G-DABP-------.labelTgls:	0x03
G-G-DABP-------.labelType:	0x0501
G-G-DABP-------.plotMask1:	0x00
G-G-DABP-------.plotMask2:	0x010000
G-G-DABP-------.closed:		1
G-G-DABP-------.maxPnts:	-1

# Engagement Area (Defense)
G-G-DAE--------.type:		ZmMilPolygon
G-G-DAE--------.uid:		10146
G-G-DAE--------.remarks:	Engagement Area (EA) Defense
G-G-DAE--------.lineStyle:	126
G-G-DAE--------.lineType:	0x00
G-G-DAE--------.plotMask1:	0x00
G-G-DAE--------.plotMask2:	0x00010000
G-G-DAE--------.closed:		1
G-G-DAE--------.maxPnts:	-1

#===============================================================

# Point of Departure
G-G-OPP--------.type:		ZmControlPoint
G-G-OPP--------.uid:		10147
G-G-OPP--------.remarks:	Point of Departure
G-G-OPP--------.plotMask1:	0x00
G-G-OPP--------.plotMask2:	0x10050040
G-G-OPP--------.maxPnts:	1

#===============================================================

# Axis of Advance (Friendly Aviation)
G-G-OLAV-------.type:		ZmMilPolygon
G-G-OLAV-------.uid:		10148
G-G-OLAV-------.remarks:	Axis of Advance (Friendly Aviation)
G-G-OLAV-------.lineStyle:	206
G-G-OLAV-------.lineType:	0x0
G-G-OLAV-------.LabelTgl:	0
G-G-OLAV-------.maxPnts:	3

# Axis of Advance (Friendly Airborne)
G-G-OLAA-------.type:		ZmMilPolygon
G-G-OLAA-------.uid:		10149
G-G-OLAA-------.remarks:	Axis of Advance (Friendly Airborne)
G-G-OLAA-------.lineStyle:	207
G-G-OLAA-------.lineType:	0x0
G-G-OLAA-------.LabelTgl:	0
G-G-OLAA-------.maxPnts:	3

# Axis of Advance (Attack Helo)
G-G-OLAR-------.type:		ZmMilPolygon
G-G-OLAR-------.uid:		10150
G-G-OLAR-------.remarks:	Axis of Advance (Attack Helo)
G-G-OLAR-------.lineStyle:	208
G-G-OLAR-------.lineType:	0x0
G-G-OLAR-------.LabelTgl:	0
G-G-OLAR-------.maxPnts:	3

# Axis of Advance (Ground Main Attack)
G-G-OLAGM------.type:		ZmMilPolygon
G-G-OLAGM------.uid:		10151
G-G-OLAGM------.remarks:	Axis of Advance (Ground Main Attack)
G-G-OLAGM------.lineStyle:	209
G-G-OLAGM------.lineType:	0x0
G-G-OLAGM------.LabelTgl:	0
G-G-OLAGM------.maxPnts:	3

# Axis of Advance (Ground Supporting Attack)
G-G-OLAGS------.type:		ZmMilPolygon
G-G-OLAGS------.uid:		10152
G-G-OLAGS------.remarks:	Axis of Advance (Ground Supporting Attack)
G-G-OLAGS------.lineStyle:	210
G-G-OLAGS------.lineType:	0x0
G-G-OLAGS------.LabelTgl:	0
G-G-OLAGS------.maxPnts:	3

#===============================================================

# Direction of Attack (Aviation)
G-G-OLKA-------.type:		ZmMilPolygon
G-G-OLKA-------.uid:		10153
G-G-OLKA-------.remarks:	Direction of Attack (Aviation)
G-G-OLKA-------.lineStyle:	220
G-G-OLKA-------.lineType:	0
G-G-OLKA-------.fillType:	0
G-G-OLKA-------.fillColor: 	FG-RGB(180,180,180)
G-G-OLKA-------.plotMask2:	0x00000000
G-G-OLKA-------.maxPnts:	2

# Direction of Main Attack
G-G-OLKGM------.type:		ZmMilPolygon
G-G-OLKGM------.uid:		10154
G-G-OLKGM------.remarks:	Direction of Attack (Ground Main Attack)
G-G-OLKGM------.lineStyle:	39
G-G-OLKGM------.lineType:	0
G-G-OLKGM------.maxPnts:	2

# Direction of Attack (Supporting)
G-G-OLKGS------.type:		ZmMilPolygon
G-G-OLKGS------.uid:		10155
G-G-OLKGS------.remarks:	Direction of Attack (Ground Supporting Attack)
G-G-OLKGS------.lineStyle:	221
G-G-OLKGS------.lineType:	0
G-G-OLKGS------.maxPnts:	2

# Final Coordination Line
G-G-OLF--------.type:		ZmMilPolygon
G-G-OLF--------.uid:		10156
G-G-OLF--------.remarks:	Final Coordination Line
G-G-OLF--------.lineStyle:	111
G-G-OLF--------.lineType:	0x0
G-G-OLF--------.plotMask2:	0x010000
G-G-OLF--------.maxPnts:	-1

# Infiltration Line
G-G-OLI--------.type:		ZmMilPolygon
G-G-OLI--------.uid:		10157
G-G-OLI--------.remarks:	Infiltration Line
G-G-OLI--------.lineStyle:	113
G-G-OLI--------.lineType:	0x0
G-G-OLI--------.plotMask1:	0x00
G-G-OLI--------.plotMask2:	0x010000
G-G-OLI--------.maxPnts:	3

# Limit Of Advance
G-G-OLL--------.type:		ZmMilPolygon
G-G-OLL--------.uid:		10158
G-G-OLL--------.remarks:	Limit Of Advance (LOA)
G-G-OLL--------.lineStyle:	114
G-G-OLL--------.lineType:	0x0
G-G-OLL--------.plotMask1:	0x00
G-G-OLL--------.plotMask2:	0x010000
G-G-OLL--------.maxPnts:	-1

# Line Of Departure
G-G-OLT--------.type:		ZmMilPolygon
G-G-OLT--------.uid:		10159
G-G-OLT--------.remarks:	Line Of Departure (LD)
G-G-OLT--------.lineStyle:	116
G-G-OLT--------.lineType:	0x0
G-G-OLT--------.plotMask1:	0x00
G-G-OLT--------.plotMask2:	0x010000
G-G-OLT--------.maxPnts:	-1

# Line of Departure/Line of Contact
G-G-OLC--------.type:		ZmMilPolygon
G-G-OLC--------.uid:		10160
G-G-OLC--------.remarks:	Line of Departure/Line of Contact (LD/LC)
G-G-OLC--------.lineStyle:	178
G-G-OLC--------.lineType:	0x0
G-G-OLC--------.plotMask1:	0x00
G-G-OLC--------.plotMask2:	0x010000
G-G-OLC--------.maxPnts:	-1

# Probable Line of Deployment
G-G-OLP--------.type:		ZmMilPolygon
G-G-OLP--------.uid:		10161
G-G-OLP--------.remarks:	Probable Line of Deployment (PLD)
G-G-OLP--------.lineStyle:	169
G-G-OLP--------.lineType:	0x41
G-G-OLP--------.plotMask1:	0x00
G-G-OLP--------.plotMask2:	0x00010000
G-G-OLP--------.maxPnts:	-1

#===============================================================

# Assault Position
G-G-OAA--------.type:	 	ZmMilPolygon
G-G-OAA--------.uid:		10162
G-G-OAA--------.remarks: 	Assault Position
G-G-OAA--------.lineStyle:	152
G-G-OAA--------.lineType:	0x0
G-G-OAA--------.labelTgls:	0x07
G-G-OAA--------.labelType:	0x00010501
G-G-OAA--------.plotMask1:	0x00
G-G-OAA--------.plotMask2:	0x010000
G-G-OAA--------.closed:		1
G-G-OAA--------.maxPnts:	-1

# Attack Position
G-G-OAK--------.type:	 	ZmMilPolygon
G-G-OAK--------.uid:		10163
G-G-OAK--------.remarks: 	Attack Position
G-G-OAK--------.lineStyle:	119
G-G-OAK--------.lineType:	0x0
G-G-OAK--------.plotMask1:	0x00
G-G-OAK--------.plotMask2:	0x010000
G-G-OAK--------.closed:		1
G-G-OAK--------.maxPnts:	-1

#===============================================================

# Attack by Fire
G-G-OAF--------.type:		ZmMilPolygon
G-G-OAF--------.uid:		10164
G-G-OAF--------.remarks:	Attack by Fire
G-G-OAF--------.lineStyle:	91
G-G-OAF--------.lineType:	0x0
G-G-OAF--------.labelTgl:	0
G-G-OAF--------.maxPnts:	3

# Support by Fire
G-G-OAS--------.type:		ZmMilPolygon
G-G-OAS--------.uid:		10165
G-G-OAS--------.remarks:	Support by Fire
G-G-OAS--------.lineStyle:	92
G-G-OAS--------.lineType:	0x0
G-G-OAS--------.labelTgl:	0
G-G-OAS--------.maxPnts:	4

#===============================================================

# Objective
G-G-OAO--------.type:		ZmMilPolygon
G-G-OAO--------.uid:		10166
G-G-OAO--------.remarks: 	Objective Area
G-G-OAO--------.lineStyle:	132
G-G-OAO--------.lineType:	0x0
G-G-OAO--------.plotMask1:	0x00
G-G-OAO--------.plotMask2:	0x010000
G-G-OAO--------.closed:		1
G-G-OAO--------.maxPnts:	-1

# Penetration Box
G-G-OAP--------.type:		ZmMilPolygon
G-G-OAP--------.uid:		10167
G-G-OAP--------.remarks:	Penetration Box
G-G-OAP--------.lineStyle:	170
G-G-OAP--------.lineType:	0x0
G-G-OAP--------.closed:		1
G-G-OAP--------.maxPnts:	-1

# Ambush
G-G-SLA--------.type:		ZmMilPolygon
G-G-SLA--------.uid:		10168
G-G-SLA--------.remarks:	Ambush
G-G-SLA--------.lineStyle:	90
G-G-SLA--------.lineType:	0x0
G-G-SLA--------.labelTgl:	0
G-G-SLA--------.maxPnts:	3

# Holding Line
G-G-SLH--------.type:		ZmMilPolygon
G-G-SLH--------.uid:		10169
G-G-SLH--------.remarks:	Holding Line (HL)
G-G-SLH--------.lineStyle:	141
G-G-SLH--------.lineType:	0x0
G-G-SLH--------.plotMask1:	0x00
G-G-SLH--------.plotMask2:	0x010000
G-G-SLH--------.maxPnts:	-1

# Release Line
G-G-SLR--------.type:		ZmMilPolygon
G-G-SLR--------.uid:		10170
G-G-SLR--------.remarks:	Release Line (RL)
G-G-SLR--------.lineStyle:	172
G-G-SLR--------.lineType:	0x0
G-G-SLR--------.plotMask2:	0x00010000
G-G-SLR--------.maxPnts:	-1

# Area-Of-Operations
G-G-SAO--------.type:		ZmMilPolygon
G-G-SAO--------.uid:		10171
G-G-SAO--------.remarks:	Area-of-Operations (AO)
G-G-SAO--------.lineStyle:	173
G-G-SAO--------.lineType:	0x0
G-G-SAO--------.plotMask2:	0x010000
G-G-SAO--------.closed:		1
G-G-SAO--------.maxPnts:	-1

# Airhead
G-G-SAA--------.type:		ZmMilPolygon
G-G-SAA--------.uid:		10172
G-G-SAA--------.remarks:	Airhead Area (AIRHEAD)
G-G-SAA--------.lineStyle:	138
G-G-SAA--------.lineType:	0x0
G-G-SAA--------.plotMask2:	0x00010000
G-G-SAA--------.closed:		1
G-G-SAA--------.maxPnts:	-1

# Bridgehead
G-G-SLB--------.type:		ZmMilPolygon
G-G-SLB--------.uid:		10173
G-G-SLB--------.remarks:	Bridgehead Line (BL)
G-G-SLB--------.lineStyle:	140
G-G-SLB--------.lineType:	0x0
G-G-SLB--------.plotMask1:	0x00
G-G-SLB--------.plotMask2:	0x00010000
G-G-SLB--------.maxPnts:	-1

# Encirclement
G-G-SAE--------.type:		ZmMilPolygon
G-G-SAE--------.uid:		10174
G-G-SAE--------.remarks:	Encirclement
G-G-SAE--------.lineStyle:	38
G-G-SAE--------.lineType:	0x0
G-G-SAE--------.closed:		1
G-G-SAE--------.maxPnts:	-1

# Named Area-Of-Interest
G-G-SAN--------.type:		ZmMilPolygon
G-G-SAN--------.uid:		10175
G-G-SAN--------.remarks:	Named Area-of-Interest (NAI)
G-G-SAN--------.lineStyle:	130
G-G-SAN--------.lineType:	0x0
G-G-SAN--------.plotMask1:	0x00
G-G-SAN--------.plotMask2:	0x010000
G-G-SAN--------.closed:		1
G-G-SAN--------.maxPnts:	-1

# Target Area-Of-Interest
G-G-SAT--------.type:		ZmMilPolygon
G-G-SAT--------.uid:		10176
G-G-SAT--------.remarks:	Target Area-of-Interest (TAI)
G-G-SAT--------.lineStyle:	135
G-G-SAT--------.lineType:	0x0
G-G-SAT--------.plotMask2:	0x010000
G-G-SAT--------.closed:		1
G-G-SAT--------.maxPnts:	-1

#===============================================================

 Obstacle Belt
G-M-OGB--------.type:			ZmMilPolygon
G-M-OGB--------.uid:		10177
G-M-OGB--------.remarks:		Obstacle Belt
G-M-OGB--------.lineStyle:		223
G-M-OGB--------.lineType:		0
G-M-OGB--------.labelTgl:		0
G-M-OGB--------.plotMask1:		0x00
G-M-OGB--------.plotMask2:		0x40010000
G-M-OGB--------.maxPnts:		-1

# Obstacle Line
G-M-OGL--------.type:			ZmMilPolygon
G-M-OGL--------.uid:		10178
G-M-OGL--------.remarks:		Obstacle Line
G-M-OGL--------.lineStyle:		10
G-M-OGL--------.lineType:		0
G-M-OGL--------.labelTgl:		0
G-M-OGL--------.maxPnts:		-1

# Obstacle Zone
G-M-OGZ--------.type:			ZmMilPolygon
G-M-OGZ--------.uid:		10179
G-M-OGZ--------.remarks:		Obstacle Zone
G-M-OGZ--------.lineStyle:		223
G-M-OGZ--------.lineType:		0
G-M-OGZ--------.labelTgl:		1
G-M-OGZ--------.labelTgls:		0x01
G-M-OGF--------.labelType:		0x00010501
G-M-OGZ--------.plotMask1:		0x00
G-M-OGZ--------.plotMask2:		0x00010000
G-M-OGZ--------.closed:			1
G-M-OGZ--------.maxPnts:		-1

# Obstacle Free Area
G-M-OGF--------.type:			ZmMilPolygon
G-M-OGF--------.uid:		10180
G-M-OGF--------.remarks:		Obstacle Free Area
G-M-OGF--------.lineStyle:		179
G-M-OGF--------.lineType:		0x0
G-M-OGF--------.labelTgl:		1
G-M-OGF--------.labelTgls:		0x0f
G-M-OGF--------.labelType:		0x00010501
G-M-OGF--------.plotMask1:		0x00
G-M-OGF--------.plotMask2:		0x10050000
G-M-OGF--------.closed:			1
G-M-OGF--------.maxPnts:		-1

# Obstacle Restricted Area
G-M-OGR--------.type:			ZmMilPolygon
G-M-OGR--------.uid:		10181
G-M-OGR--------.remarks:		Obstacle Restricted Area
G-M-OGR--------.lineStyle:		180
G-M-OGR--------.lineType:		0x0
G-M-OGR--------.fillType:		4194304
G-M-OGR--------.fillStipple:	0x400000
G-M-OGR--------.fillColor: 		FG-RGB(255,255,0)
G-M-OGR--------.labelTgl:		1
G-M-OGR--------.labelTgls:		0x07
G-M-OGR--------.plotMask1:		0x00
G-M-OGR--------.plotMask2:		0x10050000
G-M-OGR--------.closed:			1
G-M-OGR--------.maxPnts:		-1

# Abatis
G-M-OS---------.type:			ZmMilPolygon
G-M-OS---------.uid:		10182
G-M-OS---------.remarks:		Abatis
G-M-OS---------.lineStyle:		37
G-M-OS---------.lineType:		0
G-M-OS---------.labelTgl:		0
G-M-OS---------.maxPnts:		-1
G-M-OS---------.fillColor:		FG-RGB(200,60,60)

#===============================================================

# Antitank Ditch
G-M-OADU-------.type:		ZmMilPolygon
G-M-OADU-------.uid:		10183
G-M-OADU-------.remarks:	Antitank Ditch Under Construction
G-M-OADU-------.lineStyle:	224
G-M-OADU-------.lineType:	0
G-M-OADU-------.fillColor:	BG-RGB(0,0,0)
G-M-OADU-------.fillType:	0
G-M-OADU-------.maxPnts:	-1

# Antitank Ditch
G-M-OADC-------.type:		ZmMilPolygon
G-M-OADC-------.uid:		10184
G-M-OADC-------.remarks:	Antitank Ditch Complete
G-M-OADC-------.lineStyle:	23
G-M-OADC-------.lineType:	0
G-M-OADC-------.maxPnts:	-1

# Antitank Ditch with Anti-Tank Mines
G-M-OAR--------.type:		ZmMilPolygon
G-M-OAR--------.uid:		10185
G-M-OAR--------.remarks:	Antitank Ditch with Anti-Tank Mines
G-M-OAR--------.lineStyle:	34
G-M-OAR--------.lineType:	0
G-M-OAR--------.maxPnts:	-1

#===============================================================

# Antitank Obstacles Prefab (Tetrahedrons/Dragon's Teeth)
G-M-OAOF-------.type:		ZmMilPoint
G-M-OAOF-------.uid:		10186
G-M-OAOF-------.remarks:	Antitank Obstacles (Tetrahedrons/Dragon's Teeth) Prefabricated
G-M-OAOF-------.maxPnts:	1

# Antitank Obstacles (Tetrahedrons/Dragon's Teeth)
G-M-OAOM-------.type:		ZmMilPoint
G-M-OAOM-------.uid:		10187
G-M-OAOM-------.remarks:	Antitank Obstacles (Tetrahedrons/Dragon's Teeth) Moveable
G-M-OAOM-------.maxPnts:	1

# Antitank Obstacles (Tetrahedrons/Dragon's Teeth)
G-M-OAOP-------.type:		ZmMilPoint
G-M-OAOP-------.uid:		10188
G-M-OAOP-------.remarks:	Antitank Obstacles (Tetrahedrons/Dragon's Teeth) Moveable and Prefabricated
G-M-OAOP-------.maxPnts:	1

# Antitank Wall
G-M-OAW--------.type:		ZmMilPolygon
G-M-OAW--------.uid:		10189
G-M-OAW--------.remarks:	Antitank Wall
G-M-OAW--------.lineStyle:	35
G-M-OAW--------.lineType:	0
G-M-OAW--------.maxPnts:	-1

# Booby Trap
G-M-OB---------.type:		ZmMilPoint
G-M-OB---------.uid:		10190
G-M-OB---------.remarks:	Booby Trap
G-M-OB---------.maxPnts:	1

#===============================================================

# Unspecified Mine
G-M-OMU--------.type:		ZmMilPoint
G-M-OMU--------.uid:		10191
G-M-OMU--------.remarks:	Unspecified Mine
G-M-OMU--------.maxPnts:	1

# Antitank (AT) Mine
G-M-OMT--------.type:		ZmMilPoint
G-M-OMT--------.uid:		10192
G-M-OMT--------.remarks:	Antitank (AT) Mine
G-M-OMT--------.maxPnts:	1

# Antitank Mine With Antihandling Device
G-M-OMD--------.type:		ZmMilPoint
G-M-OMD--------.uid:		10193
G-M-OMD--------.remarks:	Antitank Mine With Antihandling Device
G-M-OMD--------.maxPnts:	1

# Antitank Mine (Arrow shows effects)
G-M-OME--------.type:		ZmMilPoint
G-M-OME--------.uid:		10194
G-M-OME--------.remarks:	Antitank Mine (Directional)
G-M-OME--------.maxPnts:	1

# Antipersonnel (AP) Mine
G-M-OMP--------.type:		ZmMilPoint
G-M-OMP--------.uid:		10195
G-M-OMP--------.remarks:	Antipersonnel (AP) Mine
G-M-OMP--------.maxPnts:	1

# Wide Area Mines
G-M-OMW--------.type:		ZmMilPoint
G-M-OMW--------.uid:		10196
G-M-OMW--------.remarks:	Wide Area Mines
G-M-OMW--------.maxPnts:	1

# Mine Cluster
G-M-OMC--------.type:		ZmMilPolygon
G-M-OMC--------.uid:		10197
G-M-OMC--------.remarks:	Mine Cluster
G-M-OMC--------.lineStyle:	225
G-M-OMC--------.lineType:	0x41
G-M-OMC--------.maxPnts:	2

#===============================================================

# Minefield
G-M-OFS--------.type:			ZmMinefield
G-M-OFS--------.uid:		10198
G-M-OFS--------.remarks:		Minefield Indicator
G-M-OFS--------.plotMask1:		0x0
G-M-OFS--------.plotMask2:		0x00040840
G-M-OFS--------.maxPnts:		1

# Minefield Area (Dynamic Depiction)
G-M-OFD--------.type:			ZmMilPolygon
G-M-OFD--------.uid:		10199
G-M-OFD--------.remarks:		Minefield Area (Dynamic Depiction)
G-M-OFD--------.lineStyle:		248
G-M-OFD--------.lineType:		0
G-M-OFD--------.fillColor:		FG-RGB(0,0,0)
G-M-OFD--------.plotMask1:		0x00
G-M-OFD--------.plotMask2:		0x00040840
G-M-OFD--------.closed:			1
G-M-OFD--------.maxPnts:		-1

# Minefield Gap
G-M-OFG--------.type:			ZmMilPolygon
G-M-OFG--------.uid:		10200
G-M-OFG--------.remarks:		Minefield Gap
G-M-OFG--------.lineStyle:		226
G-M-OFG--------.lineType:		0
G-M-OFG--------.labelTgl:		1
G-M-OFG--------.labelTgls:		0x01
G-M-OFG--------.labelType:		0x00010501
G-M-OFG--------.plotMask1:		0x00
G-M-OFG--------.plotMask2:		0x10040000
G-M-OFG--------.maxPnts:		4

# Mined Area
G-M-OFA--------.type:			ZmMilPolygon
G-M-OFA--------.uid:		10201
G-M-OFA--------.remarks:		Mined Area
G-M-OFA--------.lineStyle:		177
G-M-OFA--------.lineType:		0
G-M-OFA--------.plotMask1:		0x00
G-M-OFA--------.plotMask2:		0x0000
G-M-OFA--------.closed:			1
G-M-OFA--------.maxPnts:		-1

#===============================================================

# Block (Minefield)
G-M-OEB--------.type:		ZmMilPolygon
G-M-OEB--------.uid:		10202
G-M-OEB--------.remarks:	Obstacle (Block)
G-M-OEB--------.lineStyle:	227
G-M-OEB--------.lineType:	0x0
G-M-OEB--------.maxPnts:	3

# Fix (Obstacle)
G-M-OEF--------.type:		ZmMilPolygon
G-M-OEF--------.uid:		10203
G-M-OEF--------.remarks:	Obstacle (Fix)
G-M-OEF--------.lineStyle:	74
G-M-OEF--------.lineType:	0x0
G-M-OEF--------.maxPnts:	2

# Turn (Obstacle)
G-M-OET--------.type:		ZmMilPolygon
G-M-OET--------.uid:		10204
G-M-OET--------.remarks:	Obstacle (Turn)
G-M-OET--------.lineStyle:	228
G-M-OET--------.lineType:	0x0
G-M-OET--------.maxPnts:	2

# Disrupt (Obstacle)
G-M-OED--------.type:		ZmMilPolygon
G-M-OED--------.uid:		10205
G-M-OED--------.remarks:	Obstacle (Disrupt)
G-M-OED--------.lineStyle:	75
G-M-OED--------.lineType:	0x0
G-M-OED--------.size:		0.75
G-M-OED--------.maxPnts:	3

# Unexploded Ordnance Area (UXO)
G-M-OU---------.type:		ZmMilPolygon
G-M-OU---------.uid:		10206
G-M-OU---------.remarks:	Unexploded Ordnance Area (UXO)
G-M-OU---------.lineStyle:	181
G-M-OU---------.lineType:	0x0
G-M-OU---------.closed:		1
G-M-OU---------.maxPnts:	-1

#===============================================================
#Roadblocks, Creaters, and Blown Bridges

# Planned
G-M-ORP--------.type:		ZmMilPolygon
G-M-ORP--------.uid:		10207
G-M-ORP--------.remarks:	Planned
G-M-ORP--------.lineStyle:	229
G-M-ORP--------.lineType:	0x0
G-M-ORP--------.maxPnts:	3

# Explosives, State of Readiness 1 (Safe)
G-M-ORS--------.type:		ZmMilPolygon
G-M-ORS--------.uid:		10208
G-M-ORS--------.remarks:	Explosives, State of Readiness 1 (Safe)
G-M-ORS--------.lineStyle:	230
G-M-ORS--------.lineType:	0x0
G-M-ORS--------.maxPnts:	3

#Explosives, State of Readiness 2 (Armed-But Passable)
G-M-ORA--------.type:		ZmMilPolygon
G-M-ORA--------.uid:		10209
G-M-ORA--------.remarks:	Explosives, State of Readiness 2 (Armed-But Passable)
G-M-ORA--------.lineStyle:	231
G-M-ORA--------.lineType:	0x0
G-M-ORA--------.maxPnts:	3

# Roadblock Complete (Executed):
G-M-ORC--------.type:		ZmMilPolygon
G-M-ORC--------.uid:		10210
G-M-ORC--------.remarks:	Roadblock Complete (Executed)
G-M-ORC--------.lineStyle:	232
G-M-ORC--------.lineType:	0x0
G-M-ORC--------.maxPnts:	3

# Explosives, Trip Wire
G-M-OT---------.type:		ZmMilPolygon
G-M-OT---------.uid:		10211
G-M-OT---------.remarks:	Explosive (Trip Wire)
G-M-OT---------.lineStyle:	233
G-M-OT---------.lineType:	0x0
G-M-OT---------.maxPnts:	3

#===============================================================

# Wire Fence Unspecified
G-M-OWU--------.type:		ZmMilPolygon
G-M-OWU--------.uid:		10212
G-M-OWU--------.remarks:	Wire Fence Unspecified
G-M-OWU--------.lineStyle:	45
G-M-OWU--------.lineType:	0x0
G-M-OWU--------.maxPnts:	-1

# Wire Fence Single
G-M-OWS--------.type:		ZmMilPolygon
G-M-OWS--------.uid:		10213
G-M-OWS--------.remarks:	Wire Fence Single
G-M-OWS--------.lineStyle:	46
G-M-OWS--------.lineTypk:	0x0
G-M-OWS--------.maxPnts:	-1

# Wire Fence Double
G-M-OWD--------.type:		ZmMilPolygon
G-M-OWD--------.uid:		10214
G-M-OWD--------.remarks:	Wire Fence Double
G-M-OWD--------.lineStyle:	47
G-M-OWD--------.lineType:	0x0
G-M-OWD--------.maxPnts:	-1

# Wire Fence Double Apron
G-M-OWA--------.type:		ZmMilPolygon
G-M-OWA--------.uid:		10215
G-M-OWA--------.remarks:	Wire Fence Double Apron
G-M-OWA--------.lineStyle:	48
G-M-OWA--------.lineType:	0x0
G-M-OWA--------.maxPnts:	-1

# Wire Fence Low
G-M-OWL--------.type:		ZmMilPolygon
G-M-OWL--------.uid:		10216
G-M-OWL--------.remarks:	Wire Fence Low
G-M-OWL--------.lineStyle:	49
G-M-OWL--------.lineType:	0x0
G-M-OWL--------.maxPnts:	-1

# Wire Fence High
G-M-OWH--------.type:		ZmMilPolygon
G-M-OWH--------.uid:		10217
G-M-OWH--------.remarks:	Wire Fence High
G-M-OWH--------.lineStyle:	50
G-M-OWH--------.lineType:	0x0
G-M-OWH--------.maxPnts:	-1

# Wire Fence Single Concertina
G-M-OWCS-------.type:		ZmMilPolygon
G-M-OWCS-------.uid:		10218
G-M-OWCS-------.remarks:	Wire Fence Single Concertina
G-M-OWCS-------.lineStyle:	51
G-M-OWCS-------.lineType:	0x0
G-M-OWCS-------.maxPnts:	-1

# Wire Fence Double Concertina
G-M-OWCD-------.type:		ZmMilPolygon
G-M-OWCD-------.uid:		10219
G-M-OWCD-------.remarks:	Wire Fence Double Concertina
G-M-OWCD-------.lineStyle:	52
G-M-OWCD-------.lineType:	0x0
G-M-OWCD-------.maxPnts:	-1

# Wire Fence Triple Concertina
G-M-OWCT-------.type:		ZmMilPolygon
G-M-OWCT-------.uid:		10220
G-M-OWCT-------.remarks:	Wire Fence Triple Concertina
G-M-OWCT-------.lineStyle:	53
G-M-OWCT-------.lineType:	0x0
G-M-OWCT-------.maxPnts:	-1

#===============================================================

# Obstacle Bypass (Easy)
G-M-BDE--------.type:		ZmMilPolygon
G-M-BDE--------.uid:		10221
G-M-BDE--------.remarks:	Obstacle Bypass (Easy)
G-M-BDE--------.lineStyle:	234
G-M-BDE--------.lineType:	0x0
G-M-BDE--------.labelTgl:	0
G-M-BDE--------.maxPnts:	3

# Obstacle Bypass (Difficult)
G-M-BDD--------.type:		ZmMilPolygon
G-M-BDD--------.uid:		10222
G-M-BDD--------.remarks:	Obstacle Bypass (Difficult)
G-M-BDD--------.lineStyle:	95
G-M-BDD--------.lineType:	0x0
G-M-BDD--------.labelTgl:	0
G-M-BDD--------.maxPnts:	3

# Obstacle Bypass(Impossible)
G-M-BDI--------.type:		ZmMilPolygon
G-M-BDI--------.uid:		10223
G-M-BDI--------.remarks:	Obstacle Bypass (Impossible)
G-M-BDI--------.lineStyle:	195
G-M-BDI--------.lineType:	0x0
G-M-BDI--------.labelTgl:	0
G-M-BDI--------.maxPnts:	3

#===============================================================

# Assault Crossing
G-M-BCA--------.type:		ZmMilPolygon
G-M-BCA--------.uid:		10224
G-M-BCA--------.remarks:	Assault Crossing
G-M-BCA--------.lineStyle:	80
G-M-BCA--------.lineType:	0
G-M-BCA--------.maxPnts:	4

# Bridge or Gap
G-M-BCB--------.type:		ZmMilPolygon
G-M-BCB--------.uid:		10225
G-M-BCB--------.remarks:	Bridge or Gap
G-M-BCB--------.lineStyle:	19
G-M-BCB--------.lineType:	0
G-M-BCB--------.maxPnts:	3

# Ferry
G-M-BCF--------.type:		ZmMilPolygon
G-M-BCF--------.uid:		10226
G-M-BCF--------.remarks:	Ferry
G-M-BCF--------.lineStyle:	22
G-M-BCF--------.lineType:	0
G-M-BCF--------.maxPnts:	2

# Ford Crossing Easy
G-M-BCE--------.type:		ZmMilPolygon
G-M-BCE--------.uid:		10227
G-M-BCE--------.remarks:	Ford Crossing Easy
G-M-BCE--------.lineStyle:	81
G-M-BCE--------.lineType:	0
G-M-BCE--------.maxPnts:	3

# Ford Crossing Difficult
G-M-BCD--------.type:		ZmMilPolygon
G-M-BCD--------.uid:		10228
G-M-BCD--------.remarks:	Ford Crossing Difficult
G-M-BCD--------.lineStyle:	82
G-M-BCD--------.lineType:	0
G-M-BCD--------.maxPnts:	3

# Lane (Path)
G-M-BCL--------.type:		ZmMilPolygon
G-M-BCL--------.uid:		10229
G-M-BCL--------.remarks:	Lane (Path)
G-M-BCL--------.lineStyle:	44
G-M-BCL--------.lineType:	0
G-M-BCL--------.maxPnts:	2

# Raft Site
G-M-BCR--------.type:		ZmMilPolygon
G-M-BCR--------.uid:		10230
G-M-BCR--------.remarks:	Raft Site
G-M-BCR--------.lineStyle:	198
G-M-BCR--------.lineType:	0
G-M-BCR--------.maxPnts:	2

#===============================================================

# Engineer Regulating Control Point
G-M-BCP--------.type:		ZmControlPoint
G-M-BCP--------.uid:		10231
G-M-BCP--------.remarks:	Engineer Regulating Control Point (ERP)
G-M-BCP--------.plotMask1:	0x00
G-M-BCP--------.plotMask2:	0x10050040
G-M-BCP--------.maxPnts:	1

# Earthwork, Small Trench
G-M-SE---------.type:		ZmMilPoint
G-M-SE---------.uid:		10232
G-M-SE---------.remarks:	Earthwork
G-M-SE---------.maxPnts:	1

# Fort
G-M-SF---------.type:		ZmMilPoint
G-M-SF---------.uid:		10233
G-M-SF---------.remarks:	Fort
G-M-SF---------.maxPnts:	1

#===============================================================

# Friendly Fortified Line
G-M-SL---------.type:		ZmMilPolygon
G-M-SL---------.uid:		10234
G-M-SL---------.remarks:	Fortified Line
G-M-SL---------.lineStyle:	215
G-M-SL---------.lineType:	0x0
G-M-SL---------.maxPnts:	-1

# Foxhole, Emplacement or Weapon Site
G-M-SW---------.type:		ZmMilPolygon
G-M-SW---------.uid:		10235
G-M-SW---------.remarks:	Foxhole, Emlacement or Weapon Site
G-M-SW---------.lineStyle:	235
G-M-SW---------.lineType:	0x0
G-M-SW---------.maxPnts:	2

# Strong Point
G-M-SP---------.type:		ZmMilPolygon
G-M-SP---------.uid:		10236
G-M-SP---------.remarks:	Strong Point (Area)
G-M-SP---------.lineStyle:	58
G-M-SP---------.lineType:	0x0
G-M-SP---------.plotMask1:	0x00
G-M-SP---------.plotMask2:	0x010000
G-M-SP---------.closed:		1
G-M-SP---------.maxPnts:	-1

#===============================================================

# Surface Shelter
G-M-SS---------.type:		ZmMilPoint
G-M-SS---------.uid:		10237
G-M-SS---------.remarks:	Surface Shelter
G-M-SS---------.maxPnts:	1

# Underground Shelter
G-M-SU---------.type:		ZmMilPoint
G-M-SU---------.uid:		10238
G-M-SU---------.remarks:	Underground Shelter
G-M-SU---------.maxPnts:	1

#===============================================================

# Minimum Safe Distance Zones
G-M-NM---------.type:		ZmMilPolygon
G-M-NM---------.uid:		10239
G-M-NM---------.remarks:	Minimum Safe Distance Zones
G-M-NM---------.lineStyle:	236
G-M-NM---------.lineType:	0x0
G-M-NM---------.maxPnts:	4

# Nuclear Detonations Ground Zero
G-M-NZ---------.type:		ZmNBC
G-M-NZ---------.uid:		10240
G-M-NZ---------.remarks:	Nuclear Detonations Ground Zero
G-M-NZ---------.plotMask1:	0x00
G-M-NZ---------.plotMask2:	0x00172842
G-M-NZ---------.maxPnts:	1

# Nuclear Detonation Fallout Producing
G-M-NF---------.type:		ZmNBC
G-M-NF---------.uid:		10241
G-M-NF---------.remarks:	Nuclear Detonation Fallout Producing
G-M-NF---------.maxPnts:	1

# Radioactive Area
G-M-NR---------.type:			ZmMilPolygon
G-M-NR---------.uid:		10242
G-M-NR---------.remarks:		Radioactive Area
G-M-NR---------.lineStyle:		122
G-M-NR---------.lineType:		0x0
G-M-NR---------.fillColor:		FG-RGB(255,255,0)
G-M-NR---------.fillStipple:	0x400000
G-M-NR---------.fillType:		4194304
G-M-NR---------.labelTgl:		0
G-M-NR---------.closed:			1
G-M-NR---------.maxPnts:		-1

# Biologically Contaminated Area
G-M-NB---------.type:			ZmMilPolygon
G-M-NB---------.uid:		10243
G-M-NB---------.remarks:		Biologically Contaminated Area
G-M-NB---------.lineStyle:		120
G-M-NB---------.lineType:		0x0
G-M-NB---------.fillColor:		FG-RGB(255,255,0)
G-M-NB---------.fillStipple:	0x400000
G-M-NB---------.fillType:		4194304
G-M-NB---------.labelTgl:		0
G-M-NB---------.closed:			1
G-M-NB---------.maxPnts:		-1

# Chemically Contaminated Area
G-M-NC---------.type:			ZmMilPolygon
G-M-NC---------.uid:		10244
G-M-NC---------.remarks:		Chemically Contaminated Area
G-M-NC---------.lineStyle:		121
G-M-NC---------.lineType:		0x0
G-M-NC---------.fillColor:		FG-RGB(255,255,0)
G-M-NC---------.fillStipple:	0x400000
G-M-NC---------.fillType:		4194304
G-M-NC---------.labelTgl:		0
G-M-NC---------.closed:			1
G-M-NC---------.maxPnts:		-1

# Biological Release Point
G-M-NEB--------.type:		ZmNBC
G-M-NEB--------.uid:		10245
G-M-NEB--------.remarks:	Biological Release Point
G-M-NEB--------.plotMask1:	0x00
G-M-NEB--------.plotMask2:	0x00152840
G-M-NEB--------.maxPnts:	1

# Chemical Release Point
G-M-NEC--------.type:		ZmNBC
G-M-NEC--------.uid:		10246
G-M-NEC--------.remarks:	Chemical Release Point
G-M-NEC--------.plotMask1:	0x00
G-M-NEC--------.plotMask2:	0x00152840
G-M-NEC--------.maxPnts:	1

# Decon Site/Point (Unspecified)
G-M-NDP--------.type:		ZmControlPoint
G-M-NDP--------.uid:		10247
G-M-NDP--------.remarks:	Decon Site/Point (Unspecified)
G-M-NDP--------.plotMask1:	0x00
G-M-NDP--------.plotMask2:	0x10050040
G-M-NDP--------.maxPnts:	1

# Alternate Decon Site/Point (Unspecified)
G-M-NDA--------.type:		ZmControlPoint
G-M-NDA--------.uid:		10248
G-M-NDA--------.remarks:	Alternate Decon Site/Point (Unspecified)
G-M-NDA--------.plotMask1:	0x00
G-M-NDA--------.plotMask2:	0x10050040
G-M-NDA--------.maxPnts:	1

# Decon Site/Point (Troops)
G-M-NDT--------.type:		ZmControlPoint
G-M-NDT--------.uid:		10249
G-M-NDT--------.remarks:	Decon Site/Point (Troops)
G-M-NDT--------.plotMask1:	0x00
G-M-NDT--------.plotMask2:	0x10050040
G-M-NDT--------.maxPnts:	1

# Decon Site/Point (Equipment)
G-M-NDE--------.type:		ZmControlPoint
G-M-NDE--------.uid:		10250
G-M-NDE--------.remarks:	Decon Site/Point (Equipment)
G-M-NDE--------.plotMask1:	0x00
G-M-NDE--------.plotMask2:	0x10050040
G-M-NDE--------.maxPnts:	1

# Decon Site/Point (Equipment and Troops)
G-M-NDB--------.type:		ZmControlPoint
G-M-NDB--------.uid:		10251
G-M-NDB--------.remarks:	Decon Site/Point (Equipment and Troops)
G-M-NDB--------.plotMask1:	0x00
G-M-NDB--------.plotMask2:	0x10050040
G-M-NDB--------.maxPnts:	1

# Decon Site/Point (Operational Decontamination)
G-M-NDO--------.type:		ZmControlPoint
G-M-NDO--------.uid:		10252
G-M-NDO--------.remarks:	Decon Site/Point (Operational Decontamination)
G-M-NDO--------.plotMask1:	0x00
G-M-NDO--------.plotMask2:	0x10050040
G-M-NDO--------.maxPnts:	1

# Decon Site/Point (Thorough Decontamination)
G-M-NDD--------.type:		ZmControlPoint
G-M-NDD--------.uid:		10253
G-M-NDD--------.remarks:	Decon Site/Point (Thorough Decontamination)
G-M-NDD--------.plotMask1:	0x00
G-M-NDD--------.plotMask2:	0x10050040
G-M-NDD--------.maxPnts:	1

# Dose Rate Contour Line
G-M-NL---------.type:			ZmMilPolygon
G-M-NL---------.uid:		10254
G-M-NL---------.remarks:		Dose Rate Contour Line
G-M-NL---------.lineStyle:		143
G-M-NL---------.labelTgl:		0
G-M-NL---------.plotMask2:		0x00010000
G-M-NL---------.closed:			1
G-M-NL---------.lineType:		0x0

#===============================================================
#===== Fire Support =====
#===============================================================


#===== Point ============


#===== Target ===========

# Single Target Point
G-F-PTS--------.type:			ZmMilPoint
G-F-PTS--------.uid:		10255
G-F-PTS--------.remarks:		Single Target Point
G-F-PTS--------.plotMask2:		0x80010040
G-F-PTS--------.maxPnts:		1

# Nuclear Target Point
G-F-PTN--------.type:			ZmMilPoint
G-F-PTN--------.uid:		10256
G-F-PTN--------.remarks:		Nuclear Target Point
G-F-PTN--------.plotMask1:		0x00
G-F-PTN--------.plotMask2:		0x010000
G-F-PTN--------.maxPnts:		1

#========Command and Control Point=============================

# Fire Support Station
G-F-PCF--------.type:		ZmMilPoint
G-F-PCF--------.uid:		10259
G-F-PCF--------.remarks:	Fire Support Station
G-F-PCF--------.plotMask2:	0x010000
G-F-PCF--------.maxPnts:		1

# Survey Control Point
G-F-PCS--------.type:		ZmControlPoint
G-F-PCS--------.uid:		10094
G-F-PCS--------.remarks:	Survey Control Point
G-F-PCS--------.plotMask2:	0x10050040
G-F-PCS--------.maxPnts:	1

# Firing Point
G-F-PCB--------.type:		ZmControlPoint
G-F-PCB--------.uid:		10094
G-F-PCB--------.remarks:	Firing Point
G-F-PCB--------.plotMask2:	0x10050040
G-F-PCB--------.maxPnts:	1

# Reload Point
G-F-PCR--------.type:		ZmControlPoint
G-F-PCR--------.uid:		10094
G-F-PCR--------.remarks:	Reload Point
G-F-PCR--------.plotMask2:	0x10050040
G-F-PCR--------.maxPnts:	1

# Hide Point
G-F-PCH--------.type:		ZmControlPoint
G-F-PCH--------.uid:		10094
G-F-PCH--------.remarks:	Hide Point
G-F-PCH--------.plotMask2:	0x10050040
G-F-PCH--------.maxPnts:	1

# Launch Point
G-F-PCL--------.type:		ZmControlPoint
G-F-PCL--------.uid:		10094
G-F-PCL--------.remarks:	Launch Point
G-F-PCL--------.plotMask2:	0x10050040
G-F-PCL--------.maxPnts:	1


#===== Fires Support Lines =============

# Linear Target
G-F-LT---------.type:			ZmMilPolygon
G-F-LT---------.uid:		10264
G-F-LT---------.remarks:		Linear Target
G-F-LT---------.lineStyle:		136
G-F-LT---------.lineType:		0x0
G-F-LT---------.plotMask2:		0x010000
G-F-LT---------.maxPnts:		-1

# Linear Smoke Target
G-F-LTS--------.type:			ZmMilPolygon
G-F-LTS--------.uid:		10266
G-F-LTS--------.remarks:		Linear Smoke Target
G-F-LTS--------.lineStyle:		184
G-F-LTS--------.lineType:		0x0
G-F-LTS--------.plotMask2:		0x00010000
G-F-LTS--------.maxPnts:		-1

# Final Protective Fire
G-F-LTF--------.type:			ZmMilPolygon
G-F-LTF--------.uid:		10265
G-F-LTF--------.remarks:		Final Protective Fire (FPF)
G-F-LTF--------.lineStyle:		194
G-F-LTF--------.lineType:		0x0
G-F-LTF--------.plotMask2:		0x00010000
G-F-LTF--------.maxPnts:		2


#===== Command and Control Lines ==========

# Fire Support Coordination Line
G-F-LCF--------.type:			ZmMilPolygon
G-F-LCF--------.uid:		10260
G-F-LCF--------.remarks:		Fire Support Coordination Line (FSCL)
G-F-LCF--------.lineStyle:		112
G-F-LCF--------.lineType:		0x0
G-F-LCF--------.labelTgl:		0
G-F-LCF--------.plotMask2:		0x50050000
G-F-LCF--------.maxPnts:		-1

# Coordinated Fire Line
G-F-LCC--------.type:			ZmMilPolygon
G-F-LCC--------.uid:		10261
G-F-LCC--------.remarks:		Coordinated Fire Line (CFL)
G-F-LCC--------.lineStyle:		110
G-F-LCC--------.lineType:		0x41
G-F-LCC--------.labelTgl:		0
G-F-LCC--------.plotMask2:		0x50050000
G-F-LCC--------.maxPnts:		-1

# No Fire Line
G-F-LCN--------.type:			ZmMilPolygon
G-F-LCN--------.uid:		10262
G-F-LCN--------.remarks:		No Fire Line (NFL)
G-F-LCN--------.lineStyle:		185
G-F-LCN--------.lineType:		0x0
G-F-LCN--------.plotMask2:		0x010000
G-F-LCN--------.maxPnts:		-1

# Restrictive Fire Line
G-F-LCR--------.type:			ZmMilPolygon
G-F-LCR--------.uid:		10263
G-F-LCR--------.remarks:		Restrictive Fire Line (RFL)
G-F-LCR--------.lineStyle:		117
G-F-LCR--------.lineType:		0x0
G-F-LCR--------.labelTgl:		0
G-F-LCR--------.plotMask2:		0x50050000
G-F-LCR--------.maxPnts:		-1


#====== Areas =====================


# Area Target
G-F-AT---------.type:			ZmMilPolygon
G-F-AT---------.uid:		10269
G-F-AT---------.remarks:		Area Target
G-F-AT---------.lineStyle:		139
G-F-AT---------.lineType:		0x0
G-F-AT---------.plotMask2:		0x00010000
G-F-AT---------.closed:			1
G-F-AT---------.maxPnts:		-1

# Rectangular Target Area
G-F-ATR--------.type:			ZmMilRectangle
G-F-ATR--------.uid:			10458
G-F-ATR--------.lineStyle:		307
G-F-ATR--------.remarks:		Rectangular Target Area
G-F-ATR--------.plotMask2:		0x00010000
G-F-ATR--------.maxPnts:		1

# Circular Target
G-F-ATC--------.type:			ZmMilCircle
G-F-ATC--------.uid:		10457
G-F-ATC--------.remarks:		Circular Target
G-F-ATC--------.plotMask2:		0x00010000
G-F-ATC--------.maxPnts:		1

# Group of Targets
G-F-ATG--------.type:			ZmMilPolygon
G-F-ATG--------.uid:		10271
G-F-ATG--------.remarks:		Group of Targets
G-F-ATG--------.lineStyle:		237
G-F-ATG--------.lineType:		0x0
G-F-ATG--------.labelTgl:		0
G-F-ATG--------.plotMask2:		0x00010000
G-F-ATG--------.closed:			1
G-F-ATG--------.maxPnts:		-1

# Smoke Area
G-F-ATS--------.type:			ZmMilPolygon
G-F-ATS--------.uid:		10270
G-F-ATS--------.remarks:		Fire Support (Smoke) Area
G-F-ATS--------.lineStyle:		183
G-F-ATS--------.lineType:		0x0
G-F-ATS--------.plotMask2:		0x10040000
G-F-ATS--------.closed:			1
G-F-ATS--------.maxPnts:		-1

# Bomb Area
G-F-ATB--------.type:			ZmMilPolygon
G-F-ATB--------.uid:		10272
G-F-ATB--------.remarks:		Bomb Area
G-F-ATB--------.lineStyle:		188
G-F-ATB--------.lineType:		0x0
G-F-ATB--------.closed:			1
G-F-ATB--------.maxPnts:		-1


#===== Command and Control Areas ================

#===== Fire Support Area ==================

# FSA Irregular
G-F-ACSI-------.type:			ZmMilPolygon
G-F-ACSI-------.uid:			10267
G-F-ACSI-------.remarks:		Irregular (FSA)
G-F-ACSI-------.lineStyle:		260
G-F-ACSI-------.lineType:		0x0
G-F-ACSI-------.labelType:		0x00010501
G-F-ACSI-------.plotMask2:		0x10050000
G-F-ACSI-------.closed:			1
G-F-ACSI-------.maxPnts:		-1

#Rectangle
G-F-ACSR-------.type:			ZmMilRectangle
G-F-ACSR-------.uid:			10267
G-F-ACSR-------.remarks:		Rectangle (FSA)
G-F-ACSR-------.lineStyle:		261
G-F-ACSR-------.lineType:		0x0
G-F-ACSR-------.labelType:		0x00010501
G-F-ACSR-------.plotMask2:		0x10050000
G-F-ACSR-------.closed:			1
G-F-ACSR-------.maxPnts:		2

# FSA Circular
G-F-ACSC-------.type:			ZmMilCircle
G-F-ACSC-------.uid:			10267
G-F-ACSC-------.remarks:		Circular (FSA)
G-F-ACSC-------.lineStyle:		262
G-F-ACSC-------.lineType:		0x0
G-F-ACSC-------.labelType:		0x00010501
G-F-ACSC-------.plotMask2:		0x10050000
G-F-ACSC-------.closed:			1
G-F-ACSC-------.maxPnts:		2


#===== Airspace Coordination Area (ACA)===============

# Airspace Coordination Area Irregular
G-F-ACAI-------.type:			ZmMilPolygon
G-F-ACAI-------.uid:			10268
G-F-ACAI-------.remarks:		Irregular (ACA)
G-F-ACAI-------.lineStyle:		263
G-F-ACAI-------.lineType:		0x0
G-F-ACAI-------.plotMask2:		0xE0050040
G-F-ACAI-------.closed:			1
G-F-ACAI-------.maxPnts:		-1

#ACA Rectangle
G-F-ACAR-------.type:			ZmMilRectangle
G-F-ACAR-------.uid:			10268
G-F-ACAR-------.remarks:		Rectangle (ACA)
G-F-ACAR-------.lineStyle:		264
G-F-ACAR-------.lineType:		0x0
G-F-ACAR-------.plotMask2:		0xE0050040
G-F-ACAR-------.closed:			1
G-F-ACAR-------.maxPnts:		2

# ACA Circular
G-F-ACAC-------.type:			ZmMilCircle
G-F-ACAC-------.uid:			10268
G-F-ACAC-------.remarks:		Circular (ACA)
G-F-ACAC-------.lineStyle:		265
G-F-ACAC-------.lineType:		0x0
G-F-ACAC-------.plotMask2:		0xE0050040
G-F-ACAC-------.closed:			1
G-F-ACAC-------.maxPnts:		2

#===== Free Fire Area ================================

# FFA Irregular
G-F-ACFI-------.type:			ZmMilPolygon
G-F-ACFI-------.uid:			10273
G-F-ACFI-------.remarks:		Irregular (FFA)
G-F-ACFI-------.lineStyle:		266
G-F-ACFI-------.lineType:		0x0
G-F-ACFI-------.labelType:		0x00010501
G-F-ACFI-------.plotMask2:		0x10050000
G-F-ACFI-------.closed:			1
G-F-ACFI-------.maxPnts:		-1

#Rectangle
G-F-ACFR-------.type:			ZmMilRectangle
G-F-ACFR-------.uid:			10273
G-F-ACFR-------.remarks:		Rectangle (FFA)
G-F-ACFR-------.lineStyle:		267
G-F-ACFR-------.lineType:		0x0
G-F-ACFR-------.labelType:		0x00010501
G-F-ACFR-------.plotMask2:		0x10050000
G-F-ACFR-------.closed:			1
G-F-ACFR-------.maxPnts:		2

# FFA Circular
G-F-ACFC-------.type:			ZmMilCircle
G-F-ACFC-------.uid:			10273
G-F-ACFC-------.remarks:		Circular (FFA)
G-F-ACFC-------.lineStyle:		268
G-F-ACFC-------.lineType:		0x0
G-F-ACFC-------.labelType:		0x00010501
G-F-ACFC-------.plotMask2:		0x10050000
G-F-ACFC-------.closed:			1
G-F-ACFC-------.maxPnts:		2


#===== No Fire Area ===================================

# NFA Irregular
G-F-ACNI-------.type:			ZmMilPolygon
G-F-ACNI-------.uid:		10274
G-F-ACNI-------.remarks:		Irregular (NFA)
G-F-ACNI-------.lineStyle:		269
G-F-ACNI-------.lineType:		0x0
G-F-ACNI-------.fillColor:		FG-RGB(255,0,0)
G-F-ACNI-------.fillStipple:	0x400000
G-F-ACNI-------.fillType:		4194304
G-F-ACNI-------.labelType:		0x00010501
G-F-ACNI-------.plotMask2:		0x10050000
G-F-ACNI-------.closed:			1
G-F-ACNI-------.maxPnts:		-1

#Rectangle
G-F-ACNR-------.type:			ZmMilRectangle
G-F-ACNR-------.uid:			10274
G-F-ACNR-------.remarks:		Rectangle (NFA)
G-F-ACNR-------.lineStyle:		270
G-F-ACNR-------.lineType:		0x0
G-F-ACNR-------.fillColor:		FG-RGB(255,0,0)
G-F-ACNR-------.fillStipple:	0x400000
G-F-ACNR-------.fillType:		4194304
G-F-ACNR-------.labelType:		0x00010501
G-F-ACNR-------.plotMask2:		0x10050000
G-F-ACNR-------.closed:			1
G-F-ACNR-------.maxPnts:		2

# NFA Circular
G-F-ACNC-------.type:			ZmMilCircle
G-F-ACNC-------.uid:			10274
G-F-ACNC-------.remarks:		Circular (NFA)
G-F-ACNC-------.lineStyle:		271
G-F-ACNC-------.lineType:		0x0
G-F-ACNC-------.fillColor:		FG-RGB(255,0,0)
G-F-ACNC-------.fillStipple:	0x400000
G-F-ACNC-------.fillType:		4194304
G-F-ACNC-------.labelType:		0x00010501
G-F-ACNC-------.plotMask2:		0x10050000
G-F-ACNC-------.closed:			1
G-F-ACNC-------.maxPnts:		2


#===== Restrictive Fire Area (RFA)===========================

# RFA Irregular
G-F-ACRI-------.type:			ZmMilPolygon
G-F-ACRI-------.uid:		10275
G-F-ACRI-------.remarks:		Irregular (RFA)
G-F-ACRI-------.lineStyle:		272
G-F-ACRI-------.lineType:		0x0
G-F-ACRI-------.labelType:		0x00010501
G-F-ACRI-------.plotMask1:		0x00
G-F-ACRI-------.plotMask2:		0x10050000
G-F-ACRI-------.closed:			1
G-F-ACRI-------.maxPnts:		-1

#Rectangle
G-F-ACRR-------.type:			ZmMilRectangle
G-F-ACRR-------.uid:			10275
G-F-ACRR-------.remarks:		Rectangle (RFA)
G-F-ACRR-------.lineStyle:		273
G-F-ACRR-------.lineType:		0x0
G-F-ACRR-------.labelType:		0x00010501
G-F-ACRR-------.plotMask1:		0x00
G-F-ACRR-------.plotMask2:		0x10050000
G-F-ACRR-------.closed:			1
G-F-ACRR-------.maxPnts:		2

# RFA Circular
G-F-ACRC-------.type:			ZmMilCircle
G-F-ACRC-------.uid:			10275
G-F-ACRC-------.remarks:		Circular (RFA)
G-F-ACRC-------.lineStyle:		274
G-F-ACRC-------.lineType:		0x0
G-F-ACRC-------.labelType:		0x00010501
G-F-ACRC-------.plotMask1:		0x00
G-F-ACRC-------.plotMask2:		0x10050000
G-F-ACRC-------.closed:			1
G-F-ACRC-------.maxPnts:		2


#===== Position Area for Artillery (PAA) ================

#(PAA) Rectangular
G-F-ACPR-------.type:			ZmMilRectangle
G-F-ACPR-------.uid:			10276
G-F-ACPR-------.remarks:		Rectangular (PAA)
G-F-ACPR-------.lineStyle:		275
G-F-ACPR-------.lineType:		0x0
G-F-ACPR-------.maxPnts:		2

#(PAA) Circular
G-F-ACPC-------.type:			ZmMilCircle
G-F-ACPC-------.uid:			10276
G-F-ACPC-------.remarks:		Circular (PAA)
G-F-ACPC-------.lineStyle:		276
G-F-ACPC-------.lineType:		0x0
G-F-ACPC-------.maxPnts:		2

#===== Target Acquisition Zones =========================


#===== Artillery Targer Intelligence (ATI)===============

# ATI Irregular
G-F-AZII-------.type:			ZmMilPolygon
G-F-AZII-------.uid:			10267
G-F-AZII-------.remarks:		Irregular (ATI)
G-F-AZII-------.lineStyle:		278
G-F-AZII-------.lineType:		0x0
G-F-AZII-------.labelType:		0x00010501
G-F-AZII-------.plotMask2:		0x10050000
G-F-AZII-------.closed:			1
G-F-AZII-------.maxPnts:		-1

#Rectangle
G-F-AZIR-------.type:			ZmMilRectangle
G-F-AZIR-------.uid:			10267
G-F-AZIR-------.remarks:		Rectangle (ATI)
G-F-AZIR-------.lineStyle:		279
G-F-AZIR-------.lineType:		0x0
G-F-AZIR-------.labelType:		0x00010501
G-F-AZIR-------.plotMask2:		0x10050000
G-F-AZIR-------.closed:			1
G-F-AZIR-------.maxPnts:		2

# ATI Circular
G-F-AZIC-------.type:			ZmMilCircle
G-F-AZIC-------.uid:			10267
G-F-AZIC-------.remarks:		Circular (ATI)
G-F-AZIC-------.lineStyle:		280
G-F-AZIC-------.lineType:		0x0
G-F-AZIC-------.labelType:		0x00010501
G-F-AZIC-------.plotMask2:		0x10050000
G-F-AZIC-------.closed:			1
G-F-AZIC-------.maxPnts:		2


#===== Call For Fire Zone (CFFZ) ========================

# CFFZ Irregular
G-F-AZXI-------.type:			ZmMilPolygon
G-F-AZXI-------.uid:			10267
G-F-AZXI-------.remarks:		Irregular (CFFZ)
G-F-AZXI-------.lineStyle:		281
G-F-AZXI-------.lineType:		0x0
G-F-AZXI-------.labelType:		0x00010501
G-F-AZXI-------.plotMask2:		0x10050000
G-F-AZXI-------.closed:			1
G-F-AZXI-------.maxPnts:		-1

#Rectangle
G-F-AZXR-------.type:			ZmMilRectangle
G-F-AZXR-------.uid:			10267
G-F-AZXR-------.remarks:		Rectangle (CFFZ)
G-F-AZXR-------.lineStyle:		282
G-F-AZXR-------.lineType:		0x0
G-F-AZXR-------.labelType:		0x00010501
G-F-AZXR-------.plotMask2:		0x10050000
G-F-AZXR-------.closed:			1
G-F-AZXR-------.maxPnts:		2

# CFFZ Circular
G-F-AZXC-------.type:			ZmMilCircle
G-F-AZXC-------.uid:			10267
G-F-AZXC-------.remarks:		Circular (CFFZ)
G-F-AZXC-------.lineStyle:		283
G-F-AZXC-------.lineType:		0x0
G-F-AZXC-------.labelType:		0x00010501
G-F-AZXC-------.plotMask2:		0x10050000
G-F-AZXC-------.closed:			1
G-F-AZXC-------.maxPnts:		2


#===== Sensor Zone =======================================

# Sensor Irregular
G-F-AZSI-------.type:			ZmMilPolygon
G-F-AZSI-------.uid:			10267
G-F-AZSI-------.remarks:		Irregular (Sensor)
G-F-AZSI-------.lineStyle:		284
G-F-AZSI-------.lineType:		0x0
G-F-AZSI-------.labelType:		0x00010501
G-F-AZSI-------.plotMask2:		0x10050000
G-F-AZSI-------.closed:			1
G-F-AZSI-------.maxPnts:		-1

#Rectangle
G-F-AZSR-------.type:			ZmMilRectangle
G-F-AZSR-------.uid:			10267
G-F-AZSR-------.remarks:		Rectangle (Sensor)
G-F-AZSR-------.lineStyle:		285
G-F-AZSR-------.lineType:		0x0
G-F-AZSR-------.labelType:		0x00010501
G-F-AZSR-------.plotMask2:		0x10050000
G-F-AZSR-------.closed:			1
G-F-AZSR-------.maxPnts:		2

# Sensor Circular
G-F-AZSC-------.type:			ZmMilCircle
G-F-AZSC-------.uid:			10267
G-F-AZSC-------.remarks:		Circular (Sensor)
G-F-AZSC-------.lineStyle:		286
G-F-AZSC-------.lineType:		0x0
G-F-AZSC-------.labelType:		0x00010501
G-F-AZSC-------.plotMask2:		0x10050000
G-F-AZSC-------.closed:			1
G-F-AZSC-------.maxPnts:		2


#===== Censor Zone =======================================

# Censor Irregular
G-F-AZCI-------.type:			ZmMilPolygon
G-F-AZCI-------.uid:			10267
G-F-AZCI-------.remarks:		Irregular (Censor)
G-F-AZCI-------.lineStyle:		287
G-F-AZCI-------.lineType:		0x0
G-F-AZCI-------.labelType:		0x00010501
G-F-AZCI-------.plotMask2:		0x10050000
G-F-AZCI-------.closed:			1
G-F-AZCI-------.maxPnts:		-1

#Rectangle
G-F-AZCR-------.type:			ZmMilRectangle
G-F-AZCR-------.uid:			10267
G-F-AZCR-------.remarks:		Rectangle (Censor)
G-F-AZCR-------.lineStyle:		288
G-F-AZCR-------.lineType:		0x0
G-F-AZCR-------.labelType:		0x00010501
G-F-AZCR-------.plotMask2:		0x10050000
G-F-AZCR-------.closed:			1
G-F-AZCR-------.maxPnts:		2

# Censor Circular
G-F-AZCC-------.type:			ZmMilCircle
G-F-AZCC-------.uid:			10267
G-F-AZCC-------.remarks:		Circular (Censor)
G-F-AZCC-------.lineStyle:		289
G-F-AZCC-------.lineType:		0x0
G-F-AZCC-------.labelType:		0x00010501
G-F-AZCC-------.plotMask2:		0x10050000
G-F-AZCC-------.closed:			1
G-F-AZCC-------.maxPnts:		2


#===== Dead Space Area (DA) ===================================

# DA Irregular
G-F-AZDI-------.type:			ZmMilPolygon
G-F-AZDI-------.uid:			10267
G-F-AZDI-------.remarks:		Irregular (DA)
G-F-AZDI-------.lineStyle:		290
G-F-AZDI-------.lineType:		0x0
G-F-AZDI-------.labelType:		0x00010501
G-F-AZDI-------.plotMask2:		0x10050000
G-F-AZDI-------.closed:			1
G-F-AZDI-------.maxPnts:		-1

#Rectangle
G-F-AZDR-------.type:			ZmMilRectangle
G-F-AZDR-------.uid:			10267
G-F-AZDR-------.remarks:		Rectangle (DA)
G-F-AZDR-------.lineStyle:		291
G-F-AZDR-------.lineType:		0x0
G-F-AZDR-------.labelType:		0x00010501
G-F-AZDR-------.plotMask2:		0x10050000
G-F-AZDR-------.closed:			1
G-F-AZDR-------.maxPnts:		2

# DA Circular
G-F-AZDC-------.type:			ZmMilCircle
G-F-AZDC-------.uid:			10267
G-F-AZDC-------.remarks:		Circular (DA)
G-F-AZDC-------.lineStyle:		292
G-F-AZDC-------.lineType:		0x0
G-F-AZDC-------.labelType:		0x00010501
G-F-AZDC-------.plotMask2:		0x10050000
G-F-AZDC-------.closed:			1
G-F-AZDC-------.maxPnts:		2


#===== Critical Friendly Zone ============================

# CFZ Irregular
G-F-AZFI-------.type:			ZmMilPolygon
G-F-AZFI-------.uid:			10267
G-F-AZFI-------.remarks:		Irregular (CFZ)
G-F-AZFI-------.lineStyle:		293
G-F-AZFI-------.lineType:		0x0
G-F-AZFI-------.labelType:		0x00010501
G-F-AZFI-------.plotMask2:		0x10050000
G-F-AZFI-------.closed:			1
G-F-AZFI-------.maxPnts:		-1

#Rectangle
G-F-AZFR-------.type:			ZmMilRectangle
G-F-AZFR-------.uid:			10267
G-F-AZFR-------.remarks:		Rectangle (CFZ)
G-F-AZFR-------.lineStyle:		294
G-F-AZFR-------.lineType:		0x0
G-F-AZFR-------.labelType:		0x00010501
G-F-AZFR-------.plotMask2:		0x10050000
G-F-AZFR-------.closed:			1
G-F-AZFR-------.maxPnts:		2

# CFZ Circular
G-F-AZFC-------.type:			ZmMilCircle
G-F-AZFC-------.uid:			10267
G-F-AZFC-------.remarks:		Circular (CFZ)
G-F-AZFC-------.lineStyle:		295
G-F-AZFC-------.lineType:		0x0
G-F-AZFC-------.labelType:		0x00010501
G-F-AZFC-------.plotMask2:		0x10050000
G-F-AZFC-------.closed:			1
G-F-AZFC-------.maxPnts:		2


#===== Zone Of Responsibility (ZOR) ======================

# ZOR Irregular
G-F-AZZI-------.type:			ZmMilPolygon
G-F-AZZI-------.uid:			10267
G-F-AZZI-------.remarks:		Irregular (ZOR)
G-F-AZZI-------.lineStyle:		296
G-F-AZZI-------.lineType:		0x0
G-F-AZZI-------.labelType:		0x00010501
G-F-AZZI-------.plotMask2:		0x10050000
G-F-AZZI-------.closed:			1
G-F-AZZI-------.maxPnts:		-1

#Rectangle
G-F-AZZR-------.type:			ZmMilRectangle
G-F-AZZR-------.uid:			10267
G-F-AZZR-------.remarks:		Rectangle (ZOR)
G-F-AZZR-------.lineStyle:		297
G-F-AZZR-------.lineType:		0x0
G-F-AZZR-------.labelType:		0x00010501
G-F-AZZR-------.plotMask2:		0x10050000
G-F-AZZR-------.closed:			1
G-F-AZZR-------.maxPnts:		2

# ZOR Circular
G-F-AZZC-------.type:			ZmMilCircle
G-F-AZZC-------.uid:			10267
G-F-AZZC-------.remarks:		Circular (ZOR)
G-F-AZZC-------.lineStyle:		298
G-F-AZZC-------.lineType:		0x0
G-F-AZZC-------.labelType:		0x00010501
G-F-AZZC-------.plotMask2:		0x10050000
G-F-AZZC-------.closed:			1
G-F-AZZC-------.maxPnts:		2

#===== Target Build-up Area (TBA) ========================

# TBA Irregular
G-F-AZBI-------.type:			ZmMilPolygon
G-F-AZBI-------.uid:			10267
G-F-AZBI-------.remarks:		Irregular (TBA)
G-F-AZBI-------.lineStyle:		299
G-F-AZBI-------.lineType:		0x0
G-F-AZBI-------.labelType:		0x00010501
G-F-AZBI-------.plotMask2:		0x10050000
G-F-AZBI-------.closed:			1
G-F-AZBI-------.maxPnts:		-1

#Rectangle
G-F-AZBR-------.type:			ZmMilRectangle
G-F-AZBR-------.uid:			10267
G-F-AZBR-------.remarks:		Rectangle (TBA)
G-F-AZBR-------.lineStyle:		300
G-F-AZBR-------.lineType:		0x0
G-F-AZBR-------.labelType:		0x00010501
G-F-AZBR-------.plotMask2:		0x10050000
G-F-AZBR-------.closed:			1
G-F-AZBR-------.maxPnts:		2

# TBA Circular
G-F-AZBC-------.type:			ZmMilCircle
G-F-AZBC-------.uid:			10267
G-F-AZBC-------.remarks:		Circular (TBA)
G-F-AZBC-------.lineStyle:		301
G-F-AZBC-------.lineType:		0x0
G-F-AZBC-------.labelType:		0x00010501
G-F-AZBC-------.plotMask2:		0x10050000
G-F-AZBC-------.closed:			1
G-F-AZBC-------.maxPnts:		2


#===== Target Value Area (TVAR) =========================

# TVAR Irregular
G-F-AZVI-------.type:			ZmMilPolygon
G-F-AZVI-------.uid:			10267
G-F-AZVI-------.remarks:		Irregular (TVAR)
G-F-AZVI-------.lineStyle:		302
G-F-AZVI-------.lineType:		0x0
G-F-AZVI-------.labelType:		0x00010501
G-F-AZVI-------.plotMask2:		0x10050000
G-F-AZVI-------.closed:			1
G-F-AZVI-------.maxPnts:		-1

#Rectangle
G-F-AZVR-------.type:			ZmMilRectangle
G-F-AZVR-------.uid:			10267
G-F-AZVR-------.remarks:		Rectangle (TVAR)
G-F-AZVR-------.lineStyle:		303
G-F-AZVR-------.lineType:		0x0
G-F-AZVR-------.labelType:		0x00010501
G-F-AZVR-------.plotMask2:		0x10050000
G-F-AZVR-------.closed:			1
G-F-AZVR-------.maxPnts:		2

# TVAR Circular
G-F-AZVC-------.type:			ZmMilCircle
G-F-AZVC-------.uid:			10267
G-F-AZVC-------.remarks:		Circular (TVAR)
G-F-AZVC-------.lineStyle:		304
G-F-AZVC-------.lineType:		0x0
G-F-AZVC-------.labelType:		0x00010501
G-F-AZVC-------.plotMask2:		0x10050000
G-F-AZVC-------.closed:			1
G-F-AZVC-------.maxPnts:		2


#===== Weapon/Radar Range Fans ===========================

#Circular
G-F-AXC--------.type:			ZmMilSector
G-F-AXC--------.uid:			10267
G-F-AXC--------.remarks:		CircularSector
G-F-AXC--------.lineStyle:		305
G-F-AXC--------.lineType:		0x0
G-F-AXC--------.labelType:		0x00010501
G-F-AXC--------.plotMask2:		0x10050000
G-F-AXC--------.maxPnts:		-1

#Sector
G-F-AXS--------.type:			ZmMilSector
G-F-AXS--------.uid:			10267
G-F-AXS--------.remarks:		Sector
G-F-AXS--------.lineStyle:		306
G-F-AXS--------.lineType:		0x0
G-F-AXS--------.labelType:		0x00010501
G-F-AXS--------.plotMask2:		0x10050000
G-F-AXS--------.maxPnts:		-1




#===========================================================================
#=====Combat Service Support

# Ambulance Exchange Point
G-S-PX---------.type:		ZmControlPoint
G-S-PX---------.uid:		10277
G-S-PX---------.remarks:	Ambulance Exchange Point (AXP)
G-S-PX---------.plotMask2:	0x10050040
G-S-PX---------.maxPnts:	1

# Cannibalization Point
G-S-PC---------.type:		ZmControlPoint
G-S-PC---------.uid:		10278
G-S-PC---------.remarks:	Cannibalization Point (CAN)
G-S-PC---------.plotMask2:	0x10050040
G-S-PC---------.maxPnts:	1

# Casualty Collection Point
G-S-PY---------.type:		ZmControlPoint
G-S-PY---------.uid:		10279
G-S-PY---------.remarks:	Casualty Collection Point (CCP)
G-S-PY---------.plotMask2:	0x10050040
G-S-PY---------.maxPnts:	1

# Civilian Collection Point
G-S-PT---------.type:		ZmControlPoint
G-S-PT---------.uid:		10280
G-S-PT---------.remarks:	Civilian Collection Point (CIV)
G-S-PT---------.plotMask2:	0x10050040
G-S-PT---------.maxPnts:	1

# Detainee Collection Point
G-S-PD---------.type:		ZmControlPoint
G-S-PD---------.uid:		10281
G-S-PD---------.remarks:	Detainee Collection Point (DET)
G-S-PD---------.plotMask2:	0x10050040
G-S-PD---------.maxPnts:	1

# Enemy Prisoner of War Collection Point (EPW)
G-S-PE---------.type:		ZmControlPoint
G-S-PE---------.uid:		10282
G-S-PE---------.remarks:	Enemy POW Collection Point (EPW)
G-S-PE---------.plotMask2:	0x10050040
G-S-PE---------.maxPnts:	1

# Logistics Release Point (LRP)
G-S-PL---------.type:		ZmControlPoint
G-S-PL---------.uid:		10283
G-S-PL---------.remarks:	Logistics Release Point (LRP)
G-S-PL---------.plotMask2:	0x10050040
G-S-PL---------.maxPnts:	1

# Maintenance Collection Point
G-S-PM---------.type:		ZmControlPoint
G-S-PM---------.uid:		10284
G-S-PM---------.remarks:	Maintenance Collection Point (MCP)
G-S-PM---------.plotMask2:	0x10050040
G-S-PM---------.maxPnts:	1

# Rearm, Refuel and Resupply Point
G-S-PR---------.type:		ZmControlPoint
G-S-PR---------.uid:		10285
G-S-PR---------.remarks:	Rearm, Refuel and Resupply Point (R3P)
G-S-PR---------.plotMask2:	0x10050040
G-S-PR---------.maxPnts:	1

# Refuel on the Move Point
G-S-PU---------.type:		ZmControlPoint
G-S-PU---------.uid:		10286
G-S-PU---------.remarks:	Refuel on the Move Point (ROM)
G-S-PU---------.plotMask2:	0x10050040
G-S-PU---------.maxPnts:	1

# Traffic Control Post (TCP)
G-S-PO---------.type:		ZmControlPoint
G-S-PO---------.uid:		10287
G-S-PO---------.remarks:	Traffic Control Post (TCP)
G-S-PO---------.plotMask2:	0x10050040
G-S-PO---------.maxPnts:	1

# Trailer Transfer Point
G-S-PI---------.type:		ZmControlPoint
G-S-PI---------.uid:		10288
G-S-PI---------.remarks:	Trailer Transfer Point (TTP)
G-S-PI---------.plotMask2:	0x10050040
G-S-PI---------.maxPnts:	1

# Unit Maintenance Collection Point
G-S-PN---------.type:		ZmControlPoint
G-S-PN---------.uid:		10289
G-S-PN---------.remarks:	Unit Maintenance Collection Point (UMCP)
G-S-PN---------.plotMask2:	0x10050040
G-S-PN---------.maxPnts:	1

# General Supply Point
G-S-PSZ--------.type:		ZmControlPoint
G-S-PSZ--------.uid:		10290
G-S-PSZ--------.remarks:	General Supply Point
G-S-PSZ--------.plotMask2:	0x10050040
G-S-PSZ--------.maxPnts:	1

# Class I Supply Point
G-S-PSA--------.type:		ZmControlPoint
G-S-PSA--------.uid:		10291
G-S-PSA--------.remarks:	Class I Supply Point
G-S-PSA--------.plotMask2:	0x10050040
G-S-PSA--------.maxPnts:	1

# Class II Supply Point
G-S-PSB--------.type:		ZmControlPoint
G-S-PSB--------.uid:		10292
G-S-PSB--------.remarks:	Class II Supply Point
G-S-PSB--------.plotMask2:	0x10050040
G-S-PSB--------.maxPnts:	1

# Class III Supply Point
G-S-PSC--------.type:		ZmControlPoint
G-S-PSC--------.uid:		10293
G-S-PSC--------.remarks:	Class III Supply Point
G-S-PSC--------.plotMask2:	0x00
G-S-PSC--------.plotMask2:	0x10050040
G-S-PSC--------.maxPnts:	1

# Class IV Supply Point
G-S-PSD--------.type:		ZmControlPoint
G-S-PSD--------.uid:		10294
G-S-PSD--------.remarks:	Class IV Supply Point
G-S-PSD--------.plotMask2:	0x10050040
G-S-PSD--------.maxPnts:	1

# Class V Supply Point
G-S-PSE--------.type:		ZmControlPoint
G-S-PSE--------.uid:		10295
G-S-PSE--------.remarks:	Class V Supply Point
G-S-PSE--------.plotMask2:	0x10050040
G-S-PSE--------.maxPnts:	1

# Class VI Supply Point
G-S-PSF--------.type:		ZmControlPoint
G-S-PSF--------.uid:		10296
G-S-PSF--------.remarks:	Class VI Supply Point
G-S-PSF--------.plotMask2:	0x10050040
G-S-PSF--------.maxPnts:	1

# Class VII Supply Point
G-S-PSG--------.type:		ZmControlPoint
G-S-PSG--------.uid:		10297
G-S-PSG--------.remarks:	Class VII Supply Point
G-S-PSG--------.plotMask2:	0x10050040
G-S-PSG--------.maxPnts:	1

# Class VIII Supply Point
G-S-PSH--------.type:		ZmControlPoint
G-S-PSH--------.uid:		10298
G-S-PSH--------.remarks:	Class VIII Supply Point
G-S-PSH--------.plotMask2:	0x10050040
G-S-PSH--------.maxPnts:	1

# Class IX Supply Point
G-S-PSI--------.type:		ZmControlPoint
G-S-PSI--------.uid:		10299
G-S-PSI--------.remarks:	Class IX Supply Point
G-S-PSI--------.plotMask2:	0x10050040
G-S-PSI--------.maxPnts:	1

# Class X Supply Point
G-S-PSJ--------.type:		ZmControlPoint
G-S-PSJ--------.uid:		10300
G-S-PSJ--------.remarks:	Class X Supply Point
G-S-PSJ--------.plotMask2:	0x10050040
G-S-PSJ--------.maxPnts:	1

#===============================================================

# Ammunition Supply Point (ASP)
G-S-PAS--------.type:		ZmControlPoint
G-S-PAS--------.uid:		10301
G-S-PAS--------.remarks:	Ammunition Supply Point (ASP)
G-S-PAS--------.plotMask2:	0x10050040
G-S-PAS--------.maxPnts:	1

# Ammunition Transfer Point (ATP)
G-S-PAT--------.type:		ZmControlPoint
G-S-PAT--------.uid:		10302
G-S-PAT--------.remarks:	Ammunition Transfer Point (ATP)
G-S-PAT--------.plotMask2:	0x10050040
G-S-PAT--------.maxPnts:	1

#===============================================================

# Moving Convoy
G-S-LCM--------.type:			ZmMilPolygon
G-S-LCM--------.uid:		10303
G-S-LCM--------.remarks:		Moving Convoy
G-S-LCM--------.lineStyle:		200
G-S-LCM--------.lineType:		0x0
G-S-LCM--------.plotMask2:		0x90040040
G-S-LCM--------.maxPnts:		2

# Halted Convoy
G-S-LCH--------.type:			ZmMilPolygon
G-S-LCH--------.uid:		10304
G-S-LCH--------.remarks:		Halted Convoy
G-S-LCH--------.lineStyle:		201
G-S-LCH--------.lineType:		0x0
G-S-LCH--------.plotMask2:		0x90040040
G-S-LCH--------.maxPnts:		2

# Standard Supply Route
G-S-LRS--------.type:			ZmMilPolygon
G-S-LRS--------.uid:		10338
G-S-LRS--------.remarks:		Standard Supply Route
G-S-LRS--------.lineStyle:		255
G-S-LRS--------.lineType:		0x0
G-S-LRS--------.maxPnts:		-1

# Main Supply Route (MSR)
G-S-LRM--------.type:			ZmMilPolygon
G-S-LRM--------.uid:		10305
G-S-LRM--------.remarks:		Main Supply Route (MSR)
G-S-LRM--------.lineStyle:		60
G-S-LRM--------.lineType:		0x0
G-S-LRM--------.plotMask2:		0x010000
G-S-LRM--------.maxPnts:		-1

# Alternate Supply Route (ASR)
G-S-LRA--------.type:			ZmMilPolygon
G-S-LRA--------.uid:		10306
G-S-LRA--------.remarks:		Supply Route (ASR) Alternate
G-S-LRA--------.lineStyle:		61
G-S-LRA--------.lineType:		0x0
G-S-LRA--------.plotMask2:		0x010000
G-S-LRA--------.maxPnts:		-1

# Supply Route (MSR) One-way Traffic
G-S-LRO--------.type:			ZmMilPolygon
G-S-LRO--------.uid:		10307
G-S-LRO--------.remarks:		Supply Route (MSR) One-Way Traffic
G-S-LRO--------.lineStyle:		62
G-S-LRO--------.lineType:		0x0
G-S-LRO--------.plotMask2:		0x010000
G-S-LRO--------.maxPnts:		-1

# Supply Route (MSR) Alternating Traffic
G-S-LRT--------.type:			ZmMilPolygon
G-S-LRT--------.uid:		10308
G-S-LRT--------.remarks:		Supply Route (MSR) Alternating Traffic
G-S-LRT--------.lineStyle:		63
G-S-LRT--------.lineType:		0x0
G-S-LRT--------.plotMask2:		0x010000
G-S-LRT--------.maxPnts:		-1

# Supply Route (MSR) Two-way Traffic
G-S-LRW--------.type:			ZmMilPolygon
G-S-LRW--------.uid:		10309
G-S-LRW--------.remarks:		Supply Route (MSR) Two-Way Traffic
G-S-LRW--------.lineStyle:		64
G-S-LRW--------.lineType:		0x0
G-S-LRW--------.maxPnts:		-1

#===============================================================

# Detainee Holding Area
G-S-AD---------.type:			ZmMilPolygon
G-S-AD---------.uid:		10310
G-S-AD---------.remarks:		Detainee Holding Area
G-S-AD---------.lineStyle:		190
G-S-AD---------.lineType:		0x0
G-S-AD---------.plotMask2:		0x00010000
G-S-AD---------.closed:			1
G-S-AD---------.maxPnts:		-1

# Enemy POW Holding Area
G-S-AE---------.type:			ZmMilPolygon
G-S-AE---------.uid:		10311
G-S-AE---------.remarks:		Enemy POW Holding Area (EPW)
G-S-AE---------.lineStyle:		191
G-S-AE---------.lineType:		0x0
G-S-AE---------.plotMask2:		0x00010000
G-S-AE---------.closed:			1
G-S-AE---------.maxPnts:		-1


# Forward Arming And Refueling
G-S-AR---------.type:			ZmMilPolygon
G-S-AR---------.uid:		10312
G-S-AR---------.remarks:		Forward Arming And Refueling (FARP)
G-S-AR---------.lineStyle:		127
G-S-AR---------.lineType:		0x0
G-S-AR---------.plotMask2:		0x00010000
G-S-AR---------.closed:			1
G-S-AR---------.maxPnts:		-1

# Refugee Holding Area
G-S-AH---------.type:			ZmMilPolygon
G-S-AH---------.uid:		10313
G-S-AH---------.remarks:		Refugee Holding Area
G-S-AH---------.lineStyle:		192
G-S-AH---------.lineType:		0x0
G-S-AH---------.plotMask2:		0x00010000
G-S-AH---------.closed:			1
G-S-AH---------.maxPnts:		-1

#===============================================================

# Brigade Support Area
G-S-ASB--------.type:			ZmMilPolygon
G-S-ASB--------.uid:		10314
G-S-ASB--------.remarks:		Brigade Support Area (BSA)
G-S-ASB--------.lineStyle:		123
G-S-ASB--------.lineType:		0x0
G-S-ASB--------.plotMask2:		0x010000
G-S-ASB--------.closed:			1
G-S-ASB--------.maxPnts:		-1

# Division Support Area
G-S-ASD--------.type:			ZmMilPolygon
G-S-ASD--------.uid:		10315
G-S-ASD--------.remarks:		Division Support Area (DSA)
G-S-ASD--------.lineStyle:		124
G-S-ASD--------.lineType:		0x0
G-S-ASD--------.plotMask2:		0x010000
G-S-ASD--------.closed:			1
G-S-ASD--------.maxPnts:		-1

# Regimental Support Area
G-S-ASR--------.type:			ZmMilPolygon
G-S-ASR--------.uid:		10316
G-S-ASR--------.remarks:		Regimental Support Area (RSA)
G-S-ASR--------.lineStyle:		193
G-S-ASR--------.lineType:		0x0
G-S-ASR--------.plotMask2:		0x010000
G-S-ASR--------.closed:			1
G-S-ASR--------.maxPnts:		-1

#===============================================================

# Ditched Aircraft
G-O-ED---------.type:		ZmMilPoint
G-O-ED---------.uid:		10317
G-O-ED---------.remarks:	Ditched Aircraft
G-O-ED---------.maxPnts:	1

# Person in Water
G-O-EP---------.type:		ZmMilPoint
G-O-EP---------.uid:		10318
G-O-EP---------.remarks:	Person in Water
G-O-EP---------.maxPnts:	1

# Distressed Vessel
G-O-EV---------.type:		ZmMilPoint
G-O-EV---------.uid:		10319
G-O-EV---------.remarks:	Distressed Vessel
G-O-EV---------.maxPnts:	1

# Sea Mine-Like Hazard
G-O-HM---------.type:		ZmMilPoint
G-O-HM---------.uid:		10320
G-O-HM---------.remarks:	Sea Mine-Like Hazard
G-O-HM---------.maxPnts:	1

# Navigation Hazard
G-O-HN---------.type:		ZmMilPolygon
G-O-HN---------.uid:		10321
G-O-HN---------.remarks:	Navigation Hazard
G-O-HN---------.lineStyle:	239
G-O-HN---------.lineType:	0x0
G-O-HN---------.labelTgl:	0
G-O-HN---------.plotMask1:	0x0
G-O-HN---------.plotMask2:	0x0
G-O-HN---------.maxPnts:	2

# Iceberg Hazard
G-O-HI---------.type:		ZmMilPoint
G-O-HI---------.uid:		10322
G-O-HI---------.remarks:	Iceberg Hazard
G-O-HI---------.maxPnts:	1

# Oil Rig Hazard
G-O-HO---------.type:		ZmMilPoint
G-O-HO---------.uid:		10323
G-O-HO---------.remarks:	Oil Rig
G-O-HO---------.maxPnts:	1

# Bottom Return
G-O-SB---------.type:		ZmMilPoint
G-O-SB---------.uid:		10324
G-O-SB---------.remarks:	Bottom Return (General)
G-O-SB---------.maxPnts:	1

# Bottom Return (Installation/Manmade)
G-O-SBM--------.type:		ZmMilPoint
G-O-SBM--------.uid:		10325
G-O-SBM--------.remarks:	Bottom Return (Installation/Manmade)
G-O-SBM--------.maxPnts:	1

# Bottom Return (Seabed Rock, Obstacle, Other)
G-O-SBN--------.type:		ZmMilPoint
G-O-SBN--------.uid:		10326
G-O-SBN--------.remarks:	Bottom Return (Seabed Rock, Obstacle, Other)
G-O-SBN--------.maxPnts:	1

# Bottom Return (Wreck)
G-O-SBW--------.type:		ZmMilPoint
G-O-SBW--------.uid:		10327
G-O-SBW--------.remarks:	Wreck Non Dangerous
G-O-SBW--------.maxPnts:	1

# Bottom Return (Wreck Dangerous)
G-O-SBWD-------.type:		ZmMilPoint
G-O-SBWD-------.uid:		10327
G-O-SBWD-------.remarks:	Wreck Dangerous
G-O-SBWD-------.lineType:	0x21
G-O-SBWD-------.maxPnts:	1

# Marine Life
G-O-SM---------.type:		ZmMilPoint
G-O-SM---------.uid:		10328
G-O-SM---------.remarks:	Marine Life
G-O-SM---------.maxPnts:	1

# Sea Anomaly (Wake, Current, Knuckle)
G-O-SS---------.type:		ZmMilPoint
G-O-SS---------.uid:		10329
G-O-SS---------.remarks:	Sea Anomaly (Wake, Current, Knuckle)
G-O-SS---------.maxPnts:	1

#===============================================================

# Bearing Line
G-O-B----------.type:		ZmMilPolygon
G-O-B----------.uid:		10330
G-O-B----------.remarks:	Bearing Line
G-O-B----------.lineStyle:	163
G-O-B----------.lineType:	0x0
G-O-B----------.maxPnts:	2

# Electronic Bearing Line
G-O-BE---------.type:		ZmMilPolygon
G-O-BE---------.uid:		10331
G-O-BE---------.remarks:	Electronic Bearing Line
G-O-BE---------.lineStyle:	164
G-O-BE---------.lineType:	0x0
G-O-BE---------.maxPnts:	2

# Acoustic Bearing Line
G-O-BA---------.type:		ZmMilPolygon
G-O-BA---------.uid:		10332
G-O-BA---------.remarks:	Acoustic Bearing Line
G-O-BA---------.lineStyle:	165
G-O-BA---------.lineType:	0x0
G-O-BA---------.maxPnts:	2

# Torpedo Bearing Line
G-O-BT---------.type:		ZmMilPolygon
G-O-BT---------.uid:		10333
G-O-BT---------.remarks:	Torpedo Bearing Line
G-O-BT---------.lineStyle:	166
G-O-BT---------.lineType:	0x0
G-O-BT---------.maxPnts:	2

# Electro-Optical Bearing Line
G-O-BO---------.type:		ZmMilPolygon
G-O-BO---------.uid:		10334
G-O-BO---------.remarks:	Electro-Optical Bearing Line
G-O-BO---------.lineStyle:	167
G-O-BO---------.lineType:	0x0
G-O-BO---------.maxPnts:	2

#===============================================================

# Acoustic
G-O-FA---------.type:		ZmMilPoint
G-O-FA---------.uid:		10335
G-O-FA---------.remarks:	Task (Acoustic Fix)
G-O-FA---------.lineType:	0x0
G-O-FA---------.maxPnts:	1
G-O-FA---------.size:		40

# Electro-Magnetic
G-O-FE---------.type:		ZmMilPoint
G-O-FE---------.uid:		10336
G-O-FE---------.remarks:	Task (Electro-Magnetic Fix)
G-O-FE---------.lineType:	0x0
G-O-FE---------.maxPnts:	1
G-O-FE---------.size:		40

# Electro-Optical
G-O-FO---------.type:		ZmMilPoint
G-O-FO---------.uid:		10337
G-O-FO---------.remarks:	Task (Electro-Optical Fix)
G-O-FO---------.lineType:	0x0
G-O-FO---------.maxPnts:	1
G-O-FO---------.size:		40

#===============================================================





# Changed for 2525 Change 1/2 specs. Leave these old ones in for compatibility.

# Bridgehead
G-G-SAB--------.type:		ZmMilPolygon
G-G-SAB--------.uid:		10173
G-G-SAB--------.remarks:	Bridgehead Line (BL)
G-G-SAB--------.lineStyle:	140
G-G-SAB--------.lineType:	0x0
G-G-SAB--------.plotMask1:	0x00
G-G-SAB--------.plotMask2:	0x00010000
G-G-SAB--------.maxPnts:	-1

# Circular Target
G-F-PTC--------.type:			ZmMilPoint
G-F-PTC--------.uid:		10257
G-F-PTC--------.remarks:		Circular Target Point
G-F-PTC--------.plotMask2:		0x00010000
G-F-PTC--------.maxPnts:		1

# Rectangular Target Point
G-F-PTR--------.type:			ZmMilPoint
G-F-PTR--------.uid:		10258
G-F-PTR--------.remarks:		Rectangular Target Point
G-F-PTR--------.plotMask2:		0x00010000
G-F-PTR--------.maxPnts:		1

# Fire Support Station
G-F-PS---------.type:			ZmMilPoint
G-F-PS---------.uid:		10259
G-F-PS---------.remarks:		Fire Support Station
G-F-PS---------.plotMask2:		0x010000
G-F-PS---------.maxPnts:		1

#===============================================================

# Fire Support Coordination Line
G-F-LF---------.type:			ZmMilPolygon
G-F-LF---------.uid:		10260
G-F-LF---------.remarks:		Fire Support Coordination Line (FSCL)
G-F-LF---------.lineStyle:		112
G-F-LF---------.lineType:		0x0
G-F-LF---------.labelTgl:		0
G-F-LF---------.plotMask2:		0x50050000
G-F-LF---------.maxPnts:		-1

# Coordinated Fire Line
G-F-LC---------.type:			ZmMilPolygon
G-F-LC---------.uid:		10261
G-F-LC---------.remarks:		Coordinated Fire Line (CFL)
G-F-LC---------.lineStyle:		110
G-F-LC---------.lineType:		0x41
G-F-LC---------.labelTgl:		0
G-F-LC---------.plotMask2:		0x50050000
G-F-LC---------.maxPnts:		-1

#===============================================================

# No Fire Line
G-F-LN---------.type:			ZmMilPolygon
G-F-LN---------.uid:		10262
G-F-LN---------.remarks:		No Fire Line (NFL)
G-F-LN---------.lineStyle:		185
G-F-LN---------.lineType:		0x0
G-F-LN---------.plotMask2:		0x010000
G-F-LN---------.maxPnts:		-1

# Restrictive Fire Line
G-F-LR---------.type:			ZmMilPolygon
G-F-LR---------.uid:		10263
G-F-LR---------.remarks:		Restrictive Fire Line (RFL)
G-F-LR---------.lineStyle:		117
G-F-LR---------.lineType:		0x0
G-F-LR---------.labelTgl:		0
G-F-LR---------.plotMask2:		0x50050000
G-F-LR---------.maxPnts:		-1

#===============================================================

# Linear Target
G-F-LL---------.type:			ZmMilPolygon
G-F-LL---------.uid:		10264
G-F-LL---------.remarks:		Linear Target
G-F-LL---------.lineStyle:		136
G-F-LL---------.lineType:		0x0
G-F-LL---------.plotMask2:		0x010000
G-F-LL---------.maxPnts:		-1

# Final Protective Fire
G-F-LP---------.type:			ZmMilPolygon
G-F-LP---------.uid:		10265
G-F-LP---------.remarks:		Final Protective Fire (FPF)
G-F-LP---------.lineStyle:		194
G-F-LP---------.lineType:		0x0
G-F-LP---------.plotMask2:		0x40030000
G-F-LP---------.maxPnts:		3

# Linear Smoke Target
G-F-LS---------.type:			ZmMilPolygon
G-F-LS---------.uid:		10266
G-F-LS---------.remarks:		Linear Smoke Target
G-F-LS---------.lineStyle:		184
G-F-LS---------.lineType:		0x0
G-F-LS---------.plotMask2:		0x00010000
G-F-LS---------.maxPnts:		-1

#===============================================================

# Fire Support Area
G-F-AA---------.type:			ZmMilPolygon
G-F-AA---------.uid:		10267
G-F-AA---------.remarks:		Fire Support Area (FSA)
G-F-AA---------.lineStyle:		186
G-F-AA---------.lineType:		0x0
G-F-AA---------.labelType:		0x00010501
G-F-AA---------.plotMask2:		0x00010000
G-F-AA---------.closed:			1
G-F-AA---------.maxPnts:		-1

# Airspace Coordination Area
G-F-AC---------.type:			ZmMilPolygon
G-F-AC---------.uid:		10268
G-F-AC---------.remarks:		Airspace Coordination Area (ACA)
G-F-AC---------.lineStyle:		187
G-F-AC---------.lineType:		0x0
G-F-AC---------.plotMask2:		0xE0050040
G-F-AC---------.closed:			1
G-F-AC---------.maxPnts:		-1


# Smoke Area
G-F-AK---------.type:			ZmMilPolygon
G-F-AK---------.uid:		10270
G-F-AK---------.remarks:		Fire Support (Smoke) Area
G-F-AK---------.lineStyle:		183
G-F-AK---------.lineType:		0x0
G-F-AK---------.plotMask2:		0x10040000
G-F-AK---------.closed:			1
G-F-AK---------.maxPnts:		-1

#===============================================================

# Group of Targets
G-F-AS---------.type:			ZmMilPolygon
G-F-AS---------.uid:		10271
G-F-AS---------.remarks:		Group of Targets
G-F-AS---------.lineStyle:		237
G-F-AS---------.lineType:		0x0
G-F-AS---------.labelTgl:		0
G-F-AS---------.plotMask2:		0x00010000
G-F-AS---------.closed:			1
G-F-AS---------.maxPnts:		-1

# Bomb Area
G-F-AB---------.type:			ZmMilPolygon
G-F-AB---------.uid:		10272
G-F-AB---------.remarks:		Bomb Area
G-F-AB---------.lineStyle:		188
G-F-AB---------.lineType:		0x0
G-F-AB---------.closed:			1
G-F-AB---------.maxPnts:		-1

# Free Fire Area
G-F-AF---------.type:			ZmMilPolygon
G-F-AF---------.uid:		10273
G-F-AF---------.remarks:		Free Fire Area (FFA)
G-F-AF---------.lineStyle:		128
G-F-AF---------.lineType:		0x0
G-F-AF---------.labelType:		0x00010501
G-F-AF---------.plotMask2:		0x10050000
G-F-AF---------.closed:			1
G-F-AF---------.maxPnts:		-1

# No Fire Area
G-F-AN---------.type:			ZmMilPolygon
G-F-AN---------.uid:		10274
G-F-AN---------.remarks:		No Fire Area (NFA)
G-F-AN---------.lineStyle:		131
G-F-AN---------.lineType:		0x0
G-F-AN---------.fillColor:		FG-RGB(255,0,0)
G-F-AN---------.fillStipple:	0x400000
G-F-AN---------.fillType:		4194304
G-F-AN---------.labelType:		0x00010501
G-F-AN---------.plotMask2:		0x10050000
G-F-AN---------.closed:			1
G-F-AN---------.maxPnts:		-1

# Restrictive Fire Area
G-F-AR---------.type:			ZmMilPolygon
G-F-AR---------.uid:		10275
G-F-AR---------.remarks:		Restrictive Fire Area (RFA)
G-F-AR---------.lineStyle:		134
G-F-AR---------.lineType:		0x0
G-F-AR---------.labelType:		0x00010501
G-F-AR---------.plotMask1:		0x00
G-F-AR---------.plotMask2:		0x10050000
G-F-AR---------.closed:			1
G-F-AR---------.maxPnts:		-1

# Position Area for Artillery (PAA)
G-F-AP---------.type:			ZmMilPolygon
G-F-AP---------.uid:		10276
G-F-AP---------.remarks:		Position Area for Artillery (PAA)
G-F-AP---------.lineStyle:		189
G-F-AP---------.lineType:		0x0
G-F-AP---------.maxPnts:		2

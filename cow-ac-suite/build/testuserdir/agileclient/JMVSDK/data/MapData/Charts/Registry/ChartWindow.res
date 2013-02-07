# Actions resource file
# actionName.type: value
# Types
#   R - required
# actionName:   string(R):  Action to invoke(SaveAs)
# userData:     string  :   General data, sent with callBack if set
# menuLabel:    string  :   Displayed menu label (Save As ...)
# icon:         string  :   Icon file name to appear; xpm format (SaveAs(.xpm))
# iconLabel:    string  :   Icon label (Save As)
# helpText:     strings :   Help text for this action "Save As saves etc."
# quickHelp:    string  :   Info label for prompt area display ("Save As etc.")
# exec:         string  :   Program to exec, with -action actionName
# group:        string  :   Group action belongs to (eg Overlays)
# callBack:     Boolean :   Send actionName as message to group name.
# wait:         Boolean :   If exec, wait until exit for another instance.
# accelerator:  string :   Accelerator keys
# acceleratorText:    string :   Accelerator text
# mnemonic:     string  :   Mnemonic character
# sensitive:    Boolean :   Sensitivity
# type:         int     :   Type field

# Special for menus and toolbar only--not for actions
# menuActions:  strings :   List of menu Actions/Submenus
# toolbarActions:  strings :   List of toolbar Actions/Submenus

# Menubar and Toolbar are special names
# SEPARATOR is a SEPARATOR for a menu or icon

#
# MenuBar Menu
#
Menubar.menuActions: File,View,MapOptions,Tools
# use userData on Menubar as guid
Menubar.userData: 9689390c-7b0c-11d0-a781-0800097d0ce0

#
# Toolbar Menu
#
Toolbar.toolbarActions: ZoomMap,RecenterMap,HalfMap,DoubleMap,WholeWorld,RefreshMap,Camera,TurnLeft,TurnRight,Forward,Backward,CenterPuck

#
# File Menu
#
File.menuActions: New,NewChartWindow,Save,SaveAs,Recall,ViewSnapShots,SEPARATOR,DeleteInset,DeleteSavedWindows,DeleteMapAreas,DeleteSnapShots,Close,SEPARATOR,Exit,SEPARATOR,StopCR2Server

#
# View Menu
#
View.menuActions: Coordinates,SEPARATOR,StatusBarToggles,SEPARATOR,RefreshResources,TglNoRaise

#
# Coordinates Menu
#
Coordinates.menuActions: LatLng,MGR,UTM,GEO,LatLngSecs,LatLngDSecs
Coordinates.mnemonic: o

StatusBarToggles.menuActions: WindowFullScreenToggle,MenubarToggle,ToolbarToggle,MessagebarToggle,ToggleStatusBar,SEPARATOR,CenterToggle,ScaleToggle,WidthToggle,BrgRngToggle,SEPARATOR,LatLngTgl,LatLngAltTgl
StatusBarToggles.menuLabel: Status Bar Toggles
#
# Toolbars Menu
#
Toolbars.menuActions: HideToolbar,ShowToolbar

#
# MapOptions Menu
#
MapOptions.menuActions: ZoomMap,CenterWidth,RecenterMap,ResizePanBuffer,CenterPuck,CenterOnPuck,SEPARATOR,MapTypes,ScaleControls,GridControls,CountryLabelsTgl,SEPARATOR,MapColorControl,MapIntensity,MapColors,CountryColors,MapCountryLabels,MapPalettes,MapLayers,MapFeatureControls,SEPARATOR,LoadCD,LoadProducts

#
# MapFeatures Menu
#
MapFeatureControls.menuActions: MapFeatures,SEPARATOR,EditPX,EditRPF,EditVPF,SEPARATOR,EditShades,EditBC,EditTC
MapFeatureControls.menuLabel: Map Features

#
#
# GridControl Menu
#
GridControls.menuActions: MapGrids,SEPARATOR,GridLinesOn,GridLinesOff,SEPARATOR,GridLabelsOn,GridLabelsOff
GridControls.menuLabel: Grid Controls

#
# ScaleControl Menu
#
ScaleControls.menuActions: QuarterMap,ThirdMap,HalfMap,DoubleMap,TriMap,QuadMap,WholeWorld
ScaleControls.menuLabel: Scale Controls

#
# MapTypes Menu
#
MapTypes.menuActions: SolidMapType,WVSVectorMapType,WVSPlusVectorMapType,RPFMapByTilesType,RPFMapBySeriesType
MapTypes.menuLabel: Map Types

#
# Tools Menu
#
Tools.menuActions: SEPARATOR

#
# Loaders Menu
#
LoadProducts.menuActions: LoadRPF,LoadDTED,LoadADRG,LoadVPF
LoadProducts.menuLabel: Load Products
#


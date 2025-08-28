<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Dargon's_lib">
<packages>
<package name="AT28C256">
<pad name="A14" x="-7.62" y="15.24" drill="0.8128" shape="long" rot="R180"/>
<pad name="A12" x="-7.62" y="12.7" drill="0.8128" shape="long" rot="R180"/>
<pad name="A7" x="-7.62" y="10.16" drill="0.8128" shape="long" rot="R180"/>
<pad name="A6" x="-7.62" y="7.62" drill="0.8128" shape="long" rot="R180"/>
<pad name="A5" x="-7.62" y="5.08" drill="0.8128" shape="long" rot="R180"/>
<pad name="A4" x="-7.62" y="2.54" drill="0.8128" shape="long" rot="R180"/>
<pad name="A3" x="-7.62" y="0" drill="0.8128" shape="long" rot="R180"/>
<pad name="A2" x="-7.62" y="-2.54" drill="0.8128" shape="long" rot="R180"/>
<pad name="A1" x="-7.62" y="-5.08" drill="0.8128" shape="long" rot="R180"/>
<pad name="A0" x="-7.62" y="-7.62" drill="0.8128" shape="long" rot="R180"/>
<pad name="I/O0" x="-7.62" y="-10.16" drill="0.8128" shape="long" rot="R180"/>
<pad name="I/O1" x="-7.62" y="-12.7" drill="0.8128" shape="long" rot="R180"/>
<pad name="I/O2" x="-7.62" y="-15.24" drill="0.8128" shape="long" rot="R180"/>
<pad name="GND" x="-7.62" y="-17.78" drill="0.8128" shape="long" rot="R180"/>
<pad name="I/O3" x="7.62" y="-17.78" drill="0.8128" shape="long"/>
<pad name="I/O4" x="7.62" y="-15.24" drill="0.8128" shape="long"/>
<pad name="I/O5" x="7.62" y="-12.7" drill="0.8128" shape="long"/>
<pad name="I/O6" x="7.62" y="-10.16" drill="0.8128" shape="long"/>
<pad name="I/O7" x="7.62" y="-7.62" drill="0.8128" shape="long"/>
<pad name="!CE" x="7.62" y="-5.08" drill="0.8128" shape="long"/>
<pad name="A10" x="7.62" y="-2.54" drill="0.8128" shape="long"/>
<pad name="!OE" x="7.62" y="0" drill="0.8128" shape="long"/>
<pad name="A11" x="7.62" y="2.54" drill="0.8128" shape="long"/>
<pad name="A9" x="7.62" y="5.08" drill="0.8128" shape="long"/>
<pad name="A8" x="7.62" y="7.62" drill="0.8128" shape="long"/>
<pad name="A13" x="7.62" y="10.16" drill="0.8128" shape="long"/>
<pad name="!WE" x="7.62" y="12.7" drill="0.8128" shape="long"/>
<pad name="VCC" x="7.62" y="15.24" drill="0.8128" shape="long" rot="R180"/>
<text x="-10.16" y="15.24" size="1.27" layer="21" font="vector" align="center-right">A14</text>
<text x="-10.16" y="12.7" size="1.27" layer="21" font="vector" align="center-right">A12</text>
<text x="-10.16" y="10.16" size="1.27" layer="21" font="vector" align="center-right">A7</text>
<text x="-10.16" y="7.62" size="1.27" layer="21" font="vector" align="center-right">A6</text>
<text x="-10.16" y="5.08" size="1.27" layer="21" font="vector" align="center-right">A5</text>
<text x="-10.16" y="2.54" size="1.27" layer="21" font="vector" align="center-right">A4</text>
<text x="-10.16" y="0" size="1.27" layer="21" font="vector" align="center-right">A3</text>
<text x="-10.16" y="-2.54" size="1.27" layer="21" font="vector" align="center-right">A2</text>
<text x="-10.16" y="-5.08" size="1.27" layer="21" font="vector" align="center-right">A1</text>
<text x="-10.16" y="-7.62" size="1.27" layer="21" font="vector" align="center-right">A0</text>
<text x="-10.16" y="-10.16" size="1.27" layer="21" font="vector" align="center-right">I/O0</text>
<text x="-10.16" y="-12.7" size="1.27" layer="21" font="vector" align="center-right">I/O1</text>
<text x="-10.16" y="-15.24" size="1.27" layer="21" font="vector" align="center-right">I/O2</text>
<text x="-10.16" y="-17.78" size="1.27" layer="21" font="vector" align="center-right">GND</text>
<text x="10.16" y="15.24" size="1.27" layer="21" font="vector" align="center-left">VCC</text>
<text x="10.16" y="12.7" size="1.27" layer="21" font="vector" align="center-left">!WE</text>
<text x="10.16" y="10.16" size="1.27" layer="21" font="vector" align="center-left">A13</text>
<text x="10.16" y="7.62" size="1.27" layer="21" font="vector" align="center-left">A8</text>
<text x="10.16" y="5.08" size="1.27" layer="21" font="vector" align="center-left">A9</text>
<text x="10.16" y="2.54" size="1.27" layer="21" font="vector" align="center-left">A11</text>
<text x="10.16" y="0" size="1.27" layer="21" font="vector" align="center-left">!OE</text>
<text x="10.16" y="-2.54" size="1.27" layer="21" font="vector" align="center-left">A10</text>
<text x="10.16" y="-5.08" size="1.27" layer="21" font="vector" align="center-left">!CE</text>
<text x="10.16" y="-7.62" size="1.27" layer="21" font="vector" align="center-left">I/O7</text>
<text x="10.16" y="-10.16" size="1.27" layer="21" font="vector" align="center-left">I/O6</text>
<text x="10.16" y="-12.7" size="1.27" layer="21" font="vector" align="center-left">I/O5</text>
<text x="10.16" y="-15.24" size="1.27" layer="21" font="vector" align="center-left">I/O4</text>
<text x="10.16" y="-17.78" size="1.27" layer="21" font="vector" align="center-left">I/O3</text>
<text x="0" y="0" size="2.54" layer="21" font="vector" rot="SR270" align="center">AT28C256</text>
<wire x1="-8.255" y1="15.875" x2="-6.985" y2="15.875" width="0.127" layer="21"/>
<wire x1="-6.985" y1="15.875" x2="-6.985" y2="14.605" width="0.127" layer="21"/>
<wire x1="-6.985" y1="14.605" x2="-8.255" y2="14.605" width="0.127" layer="21"/>
<wire x1="-8.255" y1="14.605" x2="-8.255" y2="15.875" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-19.05" x2="-6.985" y2="16.51" width="0.127" layer="21"/>
<wire x1="-6.985" y1="16.51" x2="-1.27" y2="16.51" width="0.127" layer="21"/>
<wire x1="1.27" y1="16.51" x2="6.985" y2="16.51" width="0.127" layer="21"/>
<wire x1="6.985" y1="16.51" x2="6.985" y2="-19.05" width="0.127" layer="21"/>
<wire x1="6.985" y1="-19.05" x2="-6.985" y2="-19.05" width="0.127" layer="21"/>
<wire x1="1.27" y1="16.51" x2="-1.27" y2="16.51" width="0.127" layer="21" curve="-180"/>
<text x="-6.35" y="17.78" size="1.4224" layer="21" font="vector">&gt;name</text>
<text x="-6.35" y="-21.59" size="1.4224" layer="21" font="vector">&gt;value</text>
</package>
</packages>
<symbols>
<symbol name="AT28C256">
<pin name="28" x="5.08" y="30.48" length="middle" rot="R270"/>
<pin name="14" x="2.54" y="30.48" length="middle" rot="R270"/>
<pin name="22" x="-2.54" y="30.48" length="middle" rot="R270"/>
<pin name="20" x="-5.08" y="30.48" length="middle" rot="R270"/>
<pin name="27" x="-7.62" y="30.48" length="middle" rot="R270"/>
<pin name="1" x="12.7" y="15.24" length="middle" rot="R180"/>
<pin name="26" x="12.7" y="12.7" length="middle" rot="R180"/>
<pin name="2" x="12.7" y="10.16" length="middle" rot="R180"/>
<pin name="23" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="21" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="24" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="25" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="3" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="4" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="5" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="6" x="12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="7" x="12.7" y="-12.7" length="middle" rot="R180"/>
<pin name="8" x="12.7" y="-15.24" length="middle" rot="R180"/>
<pin name="9" x="12.7" y="-17.78" length="middle" rot="R180"/>
<pin name="10" x="12.7" y="-20.32" length="middle" rot="R180"/>
<pin name="19" x="-15.24" y="7.62" length="middle"/>
<pin name="18" x="-15.24" y="5.08" length="middle"/>
<pin name="17" x="-15.24" y="2.54" length="middle"/>
<pin name="16" x="-15.24" y="0" length="middle"/>
<pin name="15" x="-15.24" y="-2.54" length="middle"/>
<pin name="13" x="-15.24" y="-5.08" length="middle"/>
<pin name="12" x="-15.24" y="-7.62" length="middle"/>
<pin name="11" x="-15.24" y="-10.16" length="middle"/>
<wire x1="7.62" y1="25.4" x2="-10.16" y2="25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="25.4" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="25.4" width="0.254" layer="94"/>
<text x="-10.16" y="-24.13" size="1.4224" layer="95" font="vector" align="center-left">&gt;NAME</text>
<text x="1.27" y="-24.13" size="1.27" layer="96" font="vector" align="center-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="AT28C256">
<gates>
<gate name="G$1" symbol="AT28C256" x="27.94" y="2.54"/>
</gates>
<devices>
<device name="" package="AT28C256">
<connects>
<connect gate="G$1" pin="1" pad="A14"/>
<connect gate="G$1" pin="10" pad="A0"/>
<connect gate="G$1" pin="11" pad="I/O0"/>
<connect gate="G$1" pin="12" pad="I/O1"/>
<connect gate="G$1" pin="13" pad="I/O2"/>
<connect gate="G$1" pin="14" pad="GND"/>
<connect gate="G$1" pin="15" pad="I/O3"/>
<connect gate="G$1" pin="16" pad="I/O4"/>
<connect gate="G$1" pin="17" pad="I/O5"/>
<connect gate="G$1" pin="18" pad="I/O6"/>
<connect gate="G$1" pin="19" pad="I/O7"/>
<connect gate="G$1" pin="2" pad="A12"/>
<connect gate="G$1" pin="20" pad="!CE"/>
<connect gate="G$1" pin="21" pad="A10"/>
<connect gate="G$1" pin="22" pad="!OE"/>
<connect gate="G$1" pin="23" pad="A11"/>
<connect gate="G$1" pin="24" pad="A9"/>
<connect gate="G$1" pin="25" pad="A8"/>
<connect gate="G$1" pin="26" pad="A13"/>
<connect gate="G$1" pin="27" pad="!WE"/>
<connect gate="G$1" pin="28" pad="VCC"/>
<connect gate="G$1" pin="3" pad="A7"/>
<connect gate="G$1" pin="4" pad="A6"/>
<connect gate="G$1" pin="5" pad="A5"/>
<connect gate="G$1" pin="6" pad="A4"/>
<connect gate="G$1" pin="7" pad="A3"/>
<connect gate="G$1" pin="8" pad="A2"/>
<connect gate="G$1" pin="9" pad="A1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="arduino">
<packages>
<package name="ARDUINO_NANO2">
<description>&lt;b&gt;Arduino Nano2&lt;/b&gt;&lt;p&gt;
Auto generated by &lt;i&gt;modulcreator.ulp&lt;/i&gt;&lt;br&gt;
\;</description>
<wire x1="-8.89" y1="-21.59" x2="8.89" y2="-21.59" width="0" layer="21"/>
<wire x1="8.89" y1="-21.59" x2="8.89" y2="21.59" width="0" layer="21"/>
<wire x1="8.89" y1="21.59" x2="-8.89" y2="21.59" width="0" layer="21"/>
<wire x1="-8.89" y1="21.59" x2="-8.89" y2="-21.59" width="0" layer="21"/>
<pad name="J1.1" x="-7.62" y="17.78" drill="0.9144" diameter="1.778" shape="square" rot="R270"/>
<pad name="J1.2" x="-7.62" y="15.24" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.3" x="-7.62" y="12.7" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.4" x="-7.62" y="10.16" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.5" x="-7.62" y="7.62" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.6" x="-7.62" y="5.08" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.7" x="-7.62" y="2.54" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.8" x="-7.62" y="0" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.9" x="-7.62" y="-2.54" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.10" x="-7.62" y="-5.08" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.11" x="-7.62" y="-7.62" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.12" x="-7.62" y="-10.16" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.13" x="-7.62" y="-12.7" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.14" x="-7.62" y="-15.24" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J1.15" x="-7.62" y="-17.78" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.1" x="7.62" y="17.78" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.2" x="7.62" y="15.24" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.3" x="7.62" y="12.7" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.4" x="7.62" y="10.16" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.5" x="7.62" y="7.62" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.6" x="7.62" y="5.08" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.7" x="7.62" y="2.54" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.8" x="7.62" y="0" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.9" x="7.62" y="-2.54" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.10" x="7.62" y="-5.08" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.11" x="7.62" y="-7.62" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.12" x="7.62" y="-10.16" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.13" x="7.62" y="-12.7" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.14" x="7.62" y="-15.24" drill="0.9144" diameter="1.778" rot="R270"/>
<pad name="J2.15" x="7.62" y="-17.78" drill="0.9144" diameter="1.778" rot="R270"/>
<text x="0" y="19.6" size="1" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-19.6" size="1" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_NANO2">
<wire x1="-20.32" y1="30.48" x2="20.32" y2="30.48" width="0.254" layer="94"/>
<wire x1="20.32" y1="30.48" x2="20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="20.32" y1="-30.48" x2="-20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-30.48" x2="-20.32" y2="30.48" width="0.254" layer="94"/>
<text x="-17.78" y="-25.4" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<pin name="D1/TX" x="25.4" y="27.94" length="middle" rot="R180"/>
<pin name="D0/RX" x="25.4" y="25.4" length="middle" rot="R180"/>
<pin name="RESET" x="-25.4" y="20.32" length="middle"/>
<pin name="GND" x="-2.54" y="-35.56" length="middle" direction="pwr" rot="R90"/>
<pin name="D2" x="25.4" y="22.86" length="middle" rot="R180"/>
<pin name="D3" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="D4" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="D5" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="D6" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="D7" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="D8" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="D9" x="25.4" y="5.08" length="middle" rot="R180"/>
<pin name="D10" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="D11/MOSI" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="D12/MISO" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="VIN" x="-10.16" y="35.56" length="middle" direction="pwr" rot="R270"/>
<pin name="GND2" x="5.08" y="-35.56" length="middle" direction="pwr" rot="R90"/>
<pin name="RESET@2" x="-25.4" y="17.78" length="middle"/>
<pin name="+5V" x="-5.08" y="35.56" length="middle" direction="pwr" rot="R270"/>
<pin name="A7" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="A6" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="A5" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="A4" x="25.4" y="-17.78" length="middle" rot="R180"/>
<pin name="A3" x="25.4" y="-20.32" length="middle" rot="R180"/>
<pin name="A2" x="25.4" y="-22.86" length="middle" rot="R180"/>
<pin name="A1" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="A0" x="25.4" y="-27.94" length="middle" rot="R180"/>
<pin name="AREF" x="7.62" y="35.56" length="middle" direction="pwr" rot="R270"/>
<pin name="3V3" x="2.54" y="35.56" length="middle" direction="pwr" rot="R270"/>
<pin name="D13/SCK" x="25.4" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_NANO" prefix="MODUL">
<description>&lt;b&gt;Arduino Nano2&lt;/b&gt;&lt;p&gt;
Auto generated by &lt;i&gt;modulcreator.ulp&lt;/i&gt;&lt;br&gt;
\;</description>
<gates>
<gate name="MODUL" symbol="ARDUINO_NANO2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_NANO2">
<connects>
<connect gate="MODUL" pin="+5V" pad="J2.4"/>
<connect gate="MODUL" pin="3V3" pad="J2.14"/>
<connect gate="MODUL" pin="A0" pad="J2.12"/>
<connect gate="MODUL" pin="A1" pad="J2.11"/>
<connect gate="MODUL" pin="A2" pad="J2.10"/>
<connect gate="MODUL" pin="A3" pad="J2.9"/>
<connect gate="MODUL" pin="A4" pad="J2.8"/>
<connect gate="MODUL" pin="A5" pad="J2.7"/>
<connect gate="MODUL" pin="A6" pad="J2.6"/>
<connect gate="MODUL" pin="A7" pad="J2.5"/>
<connect gate="MODUL" pin="AREF" pad="J2.13"/>
<connect gate="MODUL" pin="D0/RX" pad="J1.2"/>
<connect gate="MODUL" pin="D1/TX" pad="J1.1"/>
<connect gate="MODUL" pin="D10" pad="J1.13"/>
<connect gate="MODUL" pin="D11/MOSI" pad="J1.14"/>
<connect gate="MODUL" pin="D12/MISO" pad="J1.15"/>
<connect gate="MODUL" pin="D13/SCK" pad="J2.15"/>
<connect gate="MODUL" pin="D2" pad="J1.5"/>
<connect gate="MODUL" pin="D3" pad="J1.6"/>
<connect gate="MODUL" pin="D4" pad="J1.7"/>
<connect gate="MODUL" pin="D5" pad="J1.8"/>
<connect gate="MODUL" pin="D6" pad="J1.9"/>
<connect gate="MODUL" pin="D7" pad="J1.10"/>
<connect gate="MODUL" pin="D8" pad="J1.11"/>
<connect gate="MODUL" pin="D9" pad="J1.12"/>
<connect gate="MODUL" pin="GND" pad="J1.4"/>
<connect gate="MODUL" pin="GND2" pad="J2.2"/>
<connect gate="MODUL" pin="RESET" pad="J1.3"/>
<connect gate="MODUL" pin="RESET@2" pad="J2.3"/>
<connect gate="MODUL" pin="VIN" pad="J2.1"/>
</connects>
<technologies>
<technology name="">
<attribute name="ANZAHL" value="2"/>
<attribute name="MODUL" value="TRUE"/>
<attribute name="STECKPSI0" value=""/>
<attribute name="STECKPSI1" value=""/>
<attribute name="STECKX0" value="-76200"/>
<attribute name="STECKX1" value="76200"/>
<attribute name="STECKY0" value="177800"/>
<attribute name="STECKY1" value="177800"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74ttl-din" urn="urn:adsk.eagle:library:84">
<description>&lt;b&gt;TTL Devices with DIN Symbols&lt;/b&gt;&lt;p&gt;
CadSoft and the author do not warrant that this library is free from error
or will meet your specific requirements.&lt;p&gt;
&lt;author&gt;Created by Holger Bettenbühl, hol.bet.@rhein-main.net&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:917/1" library_version="6">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:922/2" type="model" library_version="6">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="+UB" urn="urn:adsk.eagle:symbol:1255/1" library_version="6">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB" urn="urn:adsk.eagle:symbol:1256/1" library_version="6">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="193" urn="urn:adsk.eagle:symbol:1322/1" library_version="6">
<wire x1="-10.16" y1="-27.94" x2="10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-27.94" x2="-10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="-10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="27.94" x2="-10.16" y2="27.94" width="0.254" layer="94"/>
<wire x1="10.16" y1="27.94" x2="10.16" y2="13.97" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="12.7" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="-12.7" y2="12.7" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="-10.16" y2="17.78" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="18.7706" width="0.254" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="-10.16" y2="16.7894" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="8.6106" width="0.254" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="6.6294" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-12.7" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-1.27" x2="-12.7" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="12.7" x2="10.16" y2="13.97" width="0.1524" layer="94"/>
<wire x1="10.16" y1="13.97" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="10.16" y2="3.81" width="0.1524" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="18.7706" x2="-8.1788" y2="17.78" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="18.7706" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="-8.1788" y1="17.78" x2="-10.16" y2="16.7894" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="16.7894" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="8.6106" x2="-8.1788" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="8.6106" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="-8.1788" y1="7.62" x2="-10.16" y2="6.6294" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="6.6294" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="12.7" y2="12.7" width="0.1524" layer="94"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="3.81" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="12.7" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="12.7" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="12.7" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="12.7" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-12.7" y1="22.86" x2="-10.16" y2="22.86" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="22.86" x2="-10.16" y2="27.94" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-10.16" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="-10.16" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="-10.16" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="-10.16" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="-10.16" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-25.4" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="1.27" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="13.97" x2="0" y2="13.97" width="0.1524" layer="94"/>
<circle x="-12.7254" y="17.7546" radius="0.1016" width="0.9906" layer="94"/>
<circle x="-12.7254" y="7.5946" radius="0.1016" width="0.9906" layer="94"/>
<text x="-8.89" y="21.59" size="2.032" layer="94">CT=0</text>
<text x="-2.2098" y="-11.43" size="2.032" layer="94">[</text>
<text x="-0.635" y="-11.43" size="2.032" layer="94">1</text>
<text x="0.9398" y="-11.43" size="2.032" layer="94">]</text>
<text x="-2.2098" y="-16.51" size="2.032" layer="94">[</text>
<text x="-0.9652" y="-16.51" size="2.032" layer="94">2</text>
<text x="0.9398" y="-16.51" size="2.032" layer="94">]</text>
<text x="-2.2352" y="-21.59" size="2.032" layer="94">[</text>
<text x="-2.2098" y="-26.67" size="2.032" layer="94">[</text>
<text x="0.9398" y="-21.59" size="2.032" layer="94">]</text>
<text x="0.9398" y="-26.67" size="2.032" layer="94">]</text>
<text x="-0.9398" y="-21.59" size="2.032" layer="94">4</text>
<text x="-0.9398" y="-26.67" size="2.032" layer="94">8</text>
<text x="-10.16" y="28.575" size="2.032" layer="95">&gt;NAME</text>
<text x="-10.16" y="-31.115" size="2.032" layer="96">&gt;VALUE</text>
<text x="-8.89" y="-11.43" size="2.032" layer="94">3D</text>
<text x="-8.89" y="-3.81" size="2.032" layer="94">C3</text>
<text x="-0.9652" y="11.43" size="2.032" layer="94">1</text>
<text x="0" y="1.27" size="2.032" layer="94">2</text>
<text x="-8.89" y="1.27" size="2.032" layer="94">G2</text>
<text x="-6.985" y="6.35" size="2.032" layer="94">1</text>
<text x="-8.89" y="11.43" size="2.032" layer="94">G1</text>
<text x="-7.62" y="16.51" size="2.032" layer="94">2</text>
<text x="-5.715" y="6.35" size="2.032" layer="94">-</text>
<text x="-5.4102" y="16.51" size="2.032" layer="94">+</text>
<text x="2.2098" y="1.27" size="2.032" layer="94">CT=0</text>
<text x="-6.985" y="24.765" size="2.032" layer="94">CTRDIV16</text>
<text x="0.3048" y="11.43" size="2.032" layer="94">CT=15</text>
<pin name="D" x="-15.24" y="-25.4" visible="pad" length="short" direction="in"/>
<pin name="C" x="-15.24" y="-20.32" visible="pad" length="short" direction="in"/>
<pin name="B" x="-15.24" y="-15.24" visible="pad" length="short" direction="in"/>
<pin name="A" x="-15.24" y="-10.16" visible="pad" length="short" direction="in"/>
<pin name="QA" x="15.24" y="-10.16" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QB" x="15.24" y="-15.24" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QC" x="15.24" y="-20.32" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QD" x="15.24" y="-25.4" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="!LOAD" x="-15.24" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="UP" x="-15.24" y="17.78" visible="pad" length="short" direction="in"/>
<pin name="CLR" x="-15.24" y="22.86" visible="pad" length="short" direction="in"/>
<pin name="!CO" x="15.24" y="12.7" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="DOWN" x="-15.24" y="7.62" visible="pad" length="short" direction="in"/>
<pin name="!BO" x="15.24" y="2.54" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*193" urn="urn:adsk.eagle:component:1574/5" prefix="V" library_version="6">
<description>Synchronus 4-bit up down &lt;b&gt;COUNTER&lt;/b&gt;</description>
<gates>
<gate name="/+UB" symbol="+UB" x="20.32" y="17.78" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="20.32" y="7.62" addlevel="request"/>
<gate name="1" symbol="193" x="0" y="0"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="/+UB" pin="+UB" pad="16"/>
<connect gate="/-UB" pin="-UB" pad="8"/>
<connect gate="1" pin="!BO" pad="13"/>
<connect gate="1" pin="!CO" pad="12"/>
<connect gate="1" pin="!LOAD" pad="11"/>
<connect gate="1" pin="A" pad="15"/>
<connect gate="1" pin="B" pad="1"/>
<connect gate="1" pin="C" pad="10"/>
<connect gate="1" pin="CLR" pad="14"/>
<connect gate="1" pin="D" pad="9"/>
<connect gate="1" pin="DOWN" pad="4"/>
<connect gate="1" pin="QA" pad="3"/>
<connect gate="1" pin="QB" pad="2"/>
<connect gate="1" pin="QC" pad="6"/>
<connect gate="1" pin="QD" pad="7"/>
<connect gate="1" pin="UP" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:922/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="Dargon's_lib" deviceset="AT28C256" device=""/>
<part name="U$2" library="Dargon's_lib" deviceset="AT28C256" device=""/>
<part name="MODUL1" library="arduino" deviceset="ARDUINO_NANO" device=""/>
<part name="V1" library="74ttl-din" library_urn="urn:adsk.eagle:library:84" deviceset="74*193" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="V2" library="74ttl-din" library_urn="urn:adsk.eagle:library:84" deviceset="74*193" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="V3" library="74ttl-din" library_urn="urn:adsk.eagle:library:84" deviceset="74*193" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="V4" library="74ttl-din" library_urn="urn:adsk.eagle:library:84" deviceset="74*193" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="50.8" y="68.58" smashed="yes">
<attribute name="NAME" x="40.64" y="44.45" size="1.4224" layer="95" font="vector" align="center-left"/>
<attribute name="VALUE" x="52.07" y="44.45" size="1.27" layer="96" font="vector" align="center-left"/>
</instance>
<instance part="U$2" gate="G$1" x="-12.7" y="68.58" smashed="yes">
<attribute name="NAME" x="-22.86" y="44.45" size="1.4224" layer="95" font="vector" align="center-left"/>
<attribute name="VALUE" x="-11.43" y="44.45" size="1.27" layer="96" font="vector" align="center-left"/>
</instance>
<instance part="MODUL1" gate="MODUL" x="-167.64" y="162.56" smashed="yes">
<attribute name="NAME" x="-185.42" y="137.16" size="1.778" layer="95"/>
<attribute name="VALUE" x="-185.42" y="134.62" size="1.778" layer="96"/>
</instance>
<instance part="V1" gate="1" x="363.22" y="147.32" smashed="yes" rot="MR0">
<attribute name="NAME" x="373.38" y="175.895" size="2.032" layer="95" rot="MR0"/>
<attribute name="VALUE" x="373.38" y="116.205" size="2.032" layer="96" rot="MR0"/>
</instance>
<instance part="V2" gate="1" x="302.26" y="147.32" smashed="yes" rot="MR0">
<attribute name="NAME" x="312.42" y="175.895" size="2.032" layer="95" rot="MR0"/>
<attribute name="VALUE" x="312.42" y="116.205" size="2.032" layer="96" rot="MR0"/>
</instance>
<instance part="V3" gate="1" x="231.14" y="147.32" smashed="yes" rot="MR0">
<attribute name="NAME" x="241.3" y="175.895" size="2.032" layer="95" rot="MR0"/>
<attribute name="VALUE" x="241.3" y="116.205" size="2.032" layer="96" rot="MR0"/>
</instance>
<instance part="V4" gate="1" x="165.1" y="147.32" smashed="yes" rot="MR0">
<attribute name="NAME" x="175.26" y="175.895" size="2.032" layer="95" rot="MR0"/>
<attribute name="VALUE" x="175.26" y="116.205" size="2.032" layer="96" rot="MR0"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>

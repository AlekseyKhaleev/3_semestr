<Schema><Elements><Element Name="lamp" Library="SWR.dll" Left="512" Top="205" Caption="f(p,q,r)"><Property/></Element><Element Name="block1" Library="ins2.dll" Left="33" Top="146" Caption="p"><Property state="0"/></Element><Element Name="block1" Library="ins2.dll" Left="35" Top="193" Caption="q"><Property state="0"/></Element><Element Name="block1" Library="ins2.dll" Left="34" Top="242" Caption="r"><Property state="0"/></Element><Element Name="Inverter" Library="SimpleDigital.dll" Left="131" Top="148" Caption="!p"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="Inverter" Library="SimpleDigital.dll" Left="131" Top="194" Caption="!q"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="Inverter" Library="SimpleDigital.dll" Left="131" Top="243" Caption="!r"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="Or" Library="SimpleDigital.dll" Left="212" Top="139" Caption="1"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="Or" Library="SimpleDigital.dll" Left="211" Top="216" Caption="2"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="And" Library="SimpleDigital.dll" Left="302" Top="169" Caption="3"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="And" Library="SimpleDigital.dll" Left="305" Top="223" Caption="4"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element><Element Name="Or" Library="SimpleDigital.dll" Left="405" Top="197" Caption="5"><Property TpHL="10" TpLH="10" TpLZ="10" TpZL="10" TpHZ="10" TpZH="10"/></Element></Elements><Buses><Bus Color="0"><Line Start.X="533" Start.Y="563" End.X="533" End.Y="564"/></Bus><Bus Color="0"><Line Start.X="181" Start.Y="99" End.X="181" End.Y="302"><Conect Element="4" Pin="1" ID="!p"/><Conect Element="5" Pin="1" ID="!q"/><Conect Element="6" Pin="1" ID="!r"/><Conect Element="7" Pin="0" ID="!q"/><Conect Element="7" Pin="1" ID="r"/><Conect Element="8" Pin="0" ID="q"/><Conect Element="8" Pin="1" ID="!r"/></Line><Line Start.X="122" Start.Y="101" End.X="122" End.Y="301"><Conect Element="1" Pin="0" ID="p"/><Conect Element="2" Pin="0" ID="q"/><Conect Element="3" Pin="0" ID="r"/><Conect Element="4" Pin="0" ID="p"/><Conect Element="5" Pin="0" ID="q"/><Conect Element="6" Pin="0" ID="r"/></Line><Line Start.X="272" Start.Y="100" End.X="272" End.Y="301"><Conect Element="7" Pin="2" ID="1"/><Conect Element="8" Pin="2" ID="2"/><Conect Element="9" Pin="0" ID="p"/><Conect Element="9" Pin="1" ID="1"/><Conect Element="10" Pin="0" ID="!p"/><Conect Element="10" Pin="1" ID="2"/></Line><Line Start.X="476" Start.Y="99" End.X="476" End.Y="299"><Conect Element="0" Pin="0" ID="5"/><Conect Element="11" Pin="2" ID="5"/></Line><Line Start.X="369" Start.Y="99" End.X="369" End.Y="301"><Conect Element="9" Pin="2" ID="3"/><Conect Element="10" Pin="2" ID="4"/><Conect Element="11" Pin="0" ID="3"/><Conect Element="11" Pin="1" ID="4"/></Line><Line Start.X="120" Start.Y="100" End.X="477" End.Y="100"/></Bus></Buses><Options PageWidth="1265" PageHeight="1040"/></Schema>

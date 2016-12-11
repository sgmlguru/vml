<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="XML Prague 2016" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1453640227814"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="4"/>
<node TEXT="Intro" POSITION="right" ID="ID_1666216421" CREATED="1453640357662" MODIFIED="1453640359912">
<edge COLOR="#ff0000"/>
<node TEXT="Versioning, workflow basics" ID="ID_1114710650" CREATED="1453640361519" MODIFIED="1453640369382"/>
<node TEXT="Balisage paper" ID="ID_518444948" CREATED="1453640370557" MODIFIED="1453640383156"/>
</node>
<node TEXT="The Problem" POSITION="right" ID="ID_485666883" CREATED="1453640383821" MODIFIED="1453640478008">
<edge COLOR="#00ff00"/>
<node TEXT="Requirements" ID="ID_987247224" CREATED="1453640995145" MODIFIED="1453640998671">
<node TEXT="Change to doc A between two timestamps?" ID="ID_1477710611" CREATED="1453641002806" MODIFIED="1453641022009"/>
<node TEXT="What has been changed?" ID="ID_1291687059" CREATED="1453641025115" MODIFIED="1453641030872"/>
<node TEXT="What changes are significant?" ID="ID_387637202" CREATED="1453641031408" MODIFIED="1453641037703"/>
</node>
<node TEXT="Distributed systems" ID="ID_1730904102" CREATED="1453640389267" MODIFIED="1453640398885"/>
<node TEXT="No central, single-source DMS" ID="ID_1982830014" CREATED="1453640399156" MODIFIED="1453640412636"/>
<node TEXT="No versioning" ID="ID_637750496" CREATED="1453640413101" MODIFIED="1453640416495"/>
<node TEXT="No persistent ID of resources" ID="ID_244057092" CREATED="1453640416777" MODIFIED="1453640423146"/>
<node TEXT="The standard solution" ID="ID_632105838" CREATED="1453640423618" MODIFIED="1453640433539">
<node TEXT="Single source DMS" ID="ID_1624818350" CREATED="1453640435191" MODIFIED="1453640440292"/>
<node TEXT="Why it won&apos;t work" ID="ID_365353188" CREATED="1453640440762" MODIFIED="1453640444777"/>
</node>
</node>
<node TEXT="The Solution" POSITION="right" ID="ID_302421630" CREATED="1453640452353" MODIFIED="1453640456269">
<edge COLOR="#0000ff"/>
<node TEXT="Define participating systems" ID="ID_964529725" CREATED="1453640889072" MODIFIED="1453640899752"/>
<node TEXT="Track transactions of docs from one system to another" ID="ID_1184150752" CREATED="1453640900651" MODIFIED="1453640915231">
<node TEXT="ID file using system ID(s)" ID="ID_754999575" CREATED="1453640940587" MODIFIED="1453640949132"/>
<node TEXT="Track structure IDs" ID="ID_793082596" CREATED="1453640949682" MODIFIED="1453640963058"/>
<node TEXT="Publishing, conversion create transaction events" ID="ID_1082384760" CREATED="1453641190314" MODIFIED="1453641202292"/>
</node>
<node TEXT="Track change inside system" ID="ID_1560936283" CREATED="1453640916783" MODIFIED="1453640937577"/>
<node TEXT="Map to virtual doc ID in tracking system" ID="ID_1445816844" CREATED="1453641048864" MODIFIED="1453641061359"/>
<node TEXT="Introduce versioning to virtual doc ID" ID="ID_47736149" CREATED="1453641090434" MODIFIED="1453641102112">
<node TEXT="2 docs with same ID =&gt; 2 versions" ID="ID_170285842" CREATED="1453641108927" MODIFIED="1453641124149"/>
</node>
<node TEXT="Use XML format for versioning" ID="ID_254545285" CREATED="1453641061868" MODIFIED="1453641070944"/>
<node TEXT="Map IDs in a document" ID="ID_684052737" CREATED="1453641071493" MODIFIED="1453641078881"/>
<node TEXT="Store (virt doc ID) versions remotely" ID="ID_279989615" CREATED="1453641141402" MODIFIED="1453641160141"/>
</node>
<node TEXT="Implementation" POSITION="right" ID="ID_248794909" CREATED="1453641212172" MODIFIED="1453641218569">
<edge COLOR="#ff00ff"/>
</node>
</node>
</map>

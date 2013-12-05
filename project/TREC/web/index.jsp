<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="js/library/style.css">
	<script src="js/library/jquery-1.6.4.js"></script>
	<script src="js/getQueryTweets.js"></script>
	<script src="js/draw.js"></script>
	<script src="js/data.js"></script>
	<script src="js/globalVar.js"></script>
        <title>TREC Labeling</title>
    </head>
    <body>
	<div id="inputContainer" style="margin: 0 auto; position: absolute; height: 4%; width: 84%; left: 2%; top: 1%;">
	    <input id="query" type="text" style="position: absolute; width: 33%; left: 2%; " value="politics" >
	    <input type="submit" id="queryButton" style="position: absolute; left: 37%; "
		   value="Continue by Query ID" onclick='sendQueryRequest($("#query").val());'>
	    <div style="position: absolute; height: 4%; width: 23%; left: 55%; top: 1%;">
		# tweets to be labeled: <input id="queryNumRtn" type="text" style="width: 10%;" value="10" >
	    </div>
	    <div style="position: absolute; height: 4%; width: 25%; left: 75%; top: 1%;">
		# confident tweets: <input id="confidentNumRtn" type="text" style="width: 10%;" value="10" >
	    </div>
	    <input type="submit" id="allTweetsButton" style="position: absolute; left: 95%; "
		   value="All unlabeled tweets" onclick='allUnLabeledTweets($("#query").val());'>
	</div>

	<div style="margin: 0 auto; position: absolute; height: 85%; width: 48%; left: 1%; top: 8%; overflow-y: scroll;">
	    Tweets to be labeled. <SPAN style='BACKGROUND-COLOR: #ffff00'>Yellow</SPAN>: pos unigrams. <SPAN style='BACKGROUND-COLOR: #00FF00'>Green</span>: neg unigrams. <u style='color:black;'>Black and underscored</u>: pos bigrams. <del style='color:red;'>Red and crossed-out</del>: neg bigrams.
	    <div id="tableContainer" style="margin: 0 auto; position: absolute; width: 95%; left: 0%; top: 1%; height: 90%; ">
		<table id="one-column-emphasis" class="one_column_emphasis" width="95%"></table>
	    </div>
	</div>
	<div id="paraSetContainer" style="margin: 0 auto; position: absolute; height: 4%; width: 47%; left: 1%; top: 28%; ">
	    <select id="paraSetSelecter" name="trecQueries">
		<option id="queryNone"> </option>
		<option id="MB111">MB111; water shortages; 317711766815653888</option>
		<option id="MB112">MB112; Florida Derby 2013; 318035260900265985</option>
		<option id="MB113">MB113; Kal Penn; 318263699460747265</option>
		<option id="MB114">MB114; Detroit EFM Undemocratic; 316597818372538369</option>
		<option id="MB115">MB115; memories of Mr. Rogers; 317871313932935168</option>
		<option id="MB116">MB116; Chinese Computer Attacks; 307317484577497090</option>
		<option id="MB117">MB117; marshmallow Peeps dioramas; 317174111543648256</option>
		<option id="MB118">MB118; Israel and Turkey reconcile; 316274907300392960</option>
		<option id="MB119">MB119; colony collapse disorder; 317773674709131265</option>
		<option id="MB120">MB120; Argentina's Inflation; 314038001112076290</option>
		<option id="MB121">MB121; Future of MOOCs; 316919697658503169</option>
		<option id="MB122">MB122; unsuccessful kickstarter applicants; 317689549570596865</option>
		<option id="MB123">MB123; solar flare; 316801464427229185</option>
		<option id="MB124">MB124; celebrity DUI; 317890398028701696</option>
		<option id="MB125">MB125; Oscars snub Affleck; 308486017655136256</option>
		<option id="MB126">MB126; Pitbull rapper; 314683038921523200</option>
		<option id="MB127">MB127; Hagel nomination filibustered; 308745854808883200</option>
		<option id="MB128">MB128; Buying clothes online; 318126981940121600</option>
		<option id="MB129">MB129; Angry Birds cartoon; 317844688482754560</option>
		<option id="MB130">MB130; Lawyer jokes; 315208648123101184</option>
		<option id="MB131">MB131; trash the dress; 316757751386759168</option>
		<option id="MB132">MB132; asteroid hits Russia; 304039501779574785</option>
		<option id="MB133">MB133; cruise ship safety; 312663145997033474</option>
		<option id="MB134">MB134; The Middle TV show; 317067639165964288</option>
		<option id="MB135">MB135; Big Dog terminator robot; 317792851100590080</option>
		<option id="MB136">MB136; Gone Girl reviews; 318171076645502976</option>
		<option id="MB137">MB137; cause of the Super Bowl blackout; 298834781561581569</option>
		<option id="MB138">MB138; New York City soda ban blocked; 312146160284471296</option>
		<option id="MB139">MB139; Artists Against Fracking; 315810006450724866</option>
		<option id="MB140">MB140; Richard III burial dispute; 316917705368293376</option>
		<option id="MB141">MB141; Mila Kunis in Oz movie; 317835075158941697</option>
		<option id="MB142">MB142; Iranian weapons to Syria; 315927753138511872</option>
		<option id="MB143">MB143; Maracana Stadium problems; 318019519664758785</option>
		<option id="MB144">MB144; Downton Abbey actor turnover; 309426510643748866</option>
		<option id="MB145">MB145; National Parks sequestered; 314855890383687681</option>
		<option id="MB146">MB146; GMO labeling; 316035668402909185</option>
		<option id="MB147">MB147; Victoria's Secret commercial; 318350475424567296</option>
		<option id="MB148">MB148; Cyprus Bailout Protests; 318425159210004480</option>
		<option id="MB149">MB149; making football safer; 314366285070864385</option>
		<option id="MB150">MB150; UK wine industry; 318380116566749184</option>
		<option id="MB151">MB151; gun advocates are corrupt; 304404028731846657</option>
		<option id="MB152">MB152; Iceland FBI Wikileaks; 309589325128028160</option>
		<option id="MB153">MB153; lighter bail for Pistorius; 317228415197519872</option>
		<option id="MB154">MB154; anti-aging resveratrol; 310079727366967297</option>
		<option id="MB155">MB155; Obama reaction to Syrian chemical weapons; 314487445926334464</option>
		<option id="MB156">MB156; Bush's dog dies; 299689022853365760</option>
		<option id="MB157">MB157; Kardashian maternity style; 318177602995122176</option>
		<option id="MB158">MB158; hush puppies meal; 315632008560775168</option>
		<option id="MB159">MB159; circular economy initiatives; 315763906851250176</option>
		<option id="MB160">MB160; social media as educational tool; 316749983514771457</option>
		<option id="MB161">MB161; 3D printing for science; 311546769064464384</option>
		<option id="MB162">MB162; DPRK Nuclear Test; 309820213183008768</option>
		<option id="MB163">MB163; virtual currencies regulation; 317889374605950976</option>
		<option id="MB164">MB164; Lindsey Vonn sidelined; 318147869565652992</option>
		<option id="MB165">MB165; ACPT Crossword Tournament; 312319657644285952</option>
		<option id="MB166">MB166; Maryland casino table games; 315805174633492481</option>
		<option id="MB167">MB167; sequestration opinions; 316230208585871361</option>
		<option id="MB168">MB168; US behind Chaevez cancer; 313351968166928385</option>
		<option id="MB169">MB169; Honey Boo Boo Girl Scout cookies; 310613284749447168</option>
		<option id="MB170">MB170; Tony Mendez; 318365281321881600</option>
	    </select>
	    <br>
	    Query id: <input id="paraQueryID" type="text" value="" style="width: 35%;"><br>
	    Query: <input id="paraQuery" type="text" value="" style="width: 35%;"><br>
	    Query tweet time: <input id="paraQueryTime" type="text"  value="" style="width: 35%;"><br>
	    Maximum number of tweets: <input id="paraQueryTweetNum" type="text"  value="500" style="width: 10%;"><br>
	    Number of clusters: <input id="paraClusterNum" type="text"  value="20" style="width: 5%;"><br>
	    Number of top tweets selected in first retrieval: <input id="paraTopTweetNum" type="text"  value="20" style="width: 5%;"><br>
	    <input type="submit" id="queryAPIButton" 
		   value="Search API" onclick='searchAPI();'>
	</div>

	<div id="bottonDiv" style="position: absolute; height: 6%; width: 10%; left: 45%; top: 94%; display: none;">
	    <input type="submit" id="submitBotton"
		   style="position: absolute; left: 25%; top: 20%; "
		   value="Submit" onclick='sendLabeledTweetsBack();'>
	</div>
	<div id="bottonRightDiv" style="position: absolute; height: 6%; width: 10%; left: 80%; top: 94%; display: none;">
	    <input type="submit" id="submitConfidentBotton"
		   style="position: absolute; left: 25%; top: 20%; "
		   value="Submit Confident tweets as well" onclick='sendLabeledConfidentTweetsBack();'>
	</div>

	<div style="margin: 0 auto; position: absolute; height: 41%; width: 48%; left: 51%; top: 8%; overflow-y: scroll;">
	    <div id="labeledStatsDiv" style="margin: 0 auto; position: absolute; width: 95%; left: 1%; top: 0%; height: 7%; "></div>
	    <div id="tableContainerRight" style="margin: 0 auto; position: absolute; width: 95%; left: 0%; top: 1%; height: 90%; ">
		<table id="one-column-emphasis-right"  class="one_column_emphasis" width="95%"></table>
	    </div>
	</div>

	<div style="margin: 0 auto; position: absolute; height: 41%; width: 48%; left: 51%; top: 51%; overflow-y: scroll;">

	    <div id="classiferStatsDiv" style="margin: 0 auto; position: absolute; width: 95%; left: 1%; top: 0%; height: 7%; "></div>
	    <div id="tableContainerRightBottom" style="margin: 0 auto; position: absolute; width: 95%; left: 0%; top: 18%; height: 90%; ">
		<table id="one-column-emphasis-rightBottom"  class="one_column_emphasis" width="95%"></table>
	    </div>
	</div>

	<div id="newQueryDiv" style="margin: 0 auto; position: absolute; height: 55%; width: 48%; left: 51%; top: 101%; overflow-y: scroll;">
	    <div id="newQueryText" style="width: 95%; left: 0%; top: 0%; "></div>
	    <br>
	    <div id="newQueryToSubmitDiv" style="width: 95%; left: 0%;">
		Query for outer loop: <br>
		<textarea id="newQueryToSubmitInput" cols="60" rows="5" wrap="virtual"></textarea>
		<br>
		Ignored terms in query: <div id="newQueryIgnoreText" style="width: 95%; left: 0%;"></div>
	    </div>
	    <div id="tweetNumOuterLoop" style="width: 95%; left: 0%;"></div>
	    <div id="oldQueryDiv" style="width: 95%; left: 0%;"></div>
	    Maximum number of tweets: <input id="paraQueryTweetNum2" type="text"  value="1000" style="width: 13%;"><br>
	    <div style="height: 4%; width: 95%; left: 0%;">
		<input type="submit" id="stopButton" style="left: 14%; "
		       value="Stop labeling to query API" onclick='re_searchAPI();'>
	    </div>
	</div>
	<script type="text/javascript">
	    
	    $('#paraSetSelecter').change(function() {
		getSelectedParameters();
	    });
	    
	    $("#query").keyup(function(event) {
		if (event.keyCode==13) {
		    sendQueryRequest($("#query").val());
		}
	    });
	</script>
    </body>
</html>

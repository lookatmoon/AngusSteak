package global;

import java.util.*;

public class GlobalVar {
	
	public static String [] stopwords = {"a","about","above","across","after","again","against","all","almost","alone","along","already","also","although","always","among","an","and","another","any","anybody","anyone","anything","anywhere","are","around","as","ask","asked","asking","asks","at","away","b","back","backed","backing","backs","be","became","because","become","becomes","been","before","began","behind","being","beings","best","better","between","big","both","but","by","c","came","can","cannot","certain","certainly","clear","clearly","come","could","d","did","differ","different","differently","do","does","done","down","down","downed","downing","downs","during","e","each","early","either","end","ended","ending","ends","enough","even","evenly","ever","every","everybody","everyone","everything","everywhere","f","face","faces","fact","facts","far","felt","few","find","finds","first","for","four","from","full","fully","further","furthered","furthering","furthers","g","gave","general","generally","get","gets","give","given","gives","go","going","good","goods","got","great","greater","greatest","group","grouped","grouping","groups","h","had","has","have","having","he","her","here","herself","high","high","high","higher","highest","him","himself","his","how","however","i","if","important","in","interest","interested","interesting","interests","into","is","it","its","itself","j","just","k","kind","knew","know","known","knows","l","large","largely","last","later","latest","least","less","let","lets","like","likely","long","longer","longest","m","made","make","making","man","many","may","me","men","might","more","most","mostly","mr","mrs","much","must","my","myself","n","necessary","need","needed","needing","needs","never","new","new","newer","newest","next","no","nobody","non","noone","not","nothing","now","nowhere","number","numbers","o","of","off","often","old","older","oldest","on","once","one","only","open","opened","opening","opens","or","order","ordered","ordering","orders","other","others","our","out","over","p","part","parted","parting","parts","per","perhaps","place","places","point","pointed","pointing","points","possible","put","puts","q","quite","r","rather","really","right","right","room","rooms","s","said","same","saw","say","says","see","seem","seemed","seeming","seems","sees","several","shall","she","should","show","showed","showing","shows","side","sides","since","small","smaller","smallest","so","some","somebody","someone","something","somewhere","state","states","still","still","such","sure","t","take","taken","than","that","the","their","them","then","there","therefore","these","they","thing","things","think","thinks","this","those","though","thought","thoughts","three","through","thus","to","today","together","too","took","toward","turn","turned","turning","turns","two","u","under","until","up","upon","us","use","used","uses","v","very","w","want","wanted","wanting","wants","was","way","ways","we","well","wells","went","were","what","when","where","whether","which","while","who","whole","whose","why","will","with","within","without","work","worked","working","works","would","x","y","year","years","yet","you","young","younger","youngest","your","yours","z","http","t.co","rt", "via"};
	public static HashSet<String> stopWordSet = new HashSet<String>(Arrays.asList(stopwords));
	
	public static String urlPattern = "https?://([a-zA-Z0-9_\\-\\./]+[a-zA-Z0-9_\\-/])";
	//local
	//when testing is true, debugging information will be printed
	public static boolean testing = true;
	public static boolean local = true;
	
        /*
        public static String codePath = "/codes/eclispse/netbeanProjects/TREC/web/files/";
	public static String dataPath = "/codes/eclispse/netbeanProjects/TREC/web/files/data/svm/";
	public static String sentiLexiconPath = "/codes/eclispse/Java/lexicon/";
	public static String LIBlinearPath = "/codes/eclispse/Java/svmlib/liblinear-1.93/";
	public static String LIBlinearWeightPath = "/codes/eclispse/Java/svmlib/liblinear-weights-1.91/";
	*/
        
        public static String prefix = "/Users/anqidai/Desktop/EECS 584/AngusSteak/";
        public static String codePath = prefix + "project/TREC/web/files/";
	public static String dataPath = prefix + "project/TREC/web/files/data/svm/";
	public static String sentiLexiconPath = prefix + "project/resources/lexicon/";
	public static String LIBlinearPath = prefix + "project/resources/liblinear/liblinear-1.93/";
	public static String LIBlinearWeightPath = prefix + "project/resources/liblinear/liblinear-1.93/";
        
        
	//server
// 	public static boolean testing = true;
// 	public static boolean local = false;
// 	public static String codePath = "/home/lichengz/tomcat/webapps/TREC/files/";
// 	public static String dataPath = "/home/lichengz/tomcat/webapps/TREC/files/data/svm/";
// 	public static String sentiLexiconPath = "/home/lichengz/lib/lexicon/";
// 	public static String LIBlinearPath = "/home/lichengz/liblinear-1.93/";
// 	public static String LIBlinearWeightPath = "/home/lichengz/liblinear-weights-1.91/";
}


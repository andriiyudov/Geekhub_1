require 'test/unit'
require 'test/unit/ui/console/testrunner'
require './dictionary_search'

class DictionarySearchTest < Test::Unit::TestCase
  def setup
    @dict = DictionarySearch.new("./wordsEn.txt")
  end
 
  def test_matches
    pairs = @dict.word_pairs
    assert_equal(271, pairs.size)
    matches = ['limpest','limpets','parse','pares','sic','sci','sir','sri','cola','coal','alkalies','alkalise','haps','hasp','hist','hits','vales','valse','mantel','mantle','moues','mouse','cores','corse','liber','libre','dime','diem','greta','great','thickets','thickest','mood','modo','moon','mono','grandam','grandma','manse','manes','premies','premise','csp','cps','cst','cts','shriek','shrike','titre','titer','rasp','raps','mares','marse','briskets','briskest','oho','ooh','roots','roost','colonise','colonies','posse','poses','carlo','carol','drabbest','drabbets','nickel','nickle','eta','eat','palest','palets','lingual','lingula','bath','baht','hide','hied','bats','bast','niter','nitre','soli','soil','toot','toto','rya','ray','gun','gnu','copes','copse','wrist','writs','discrete','discreet','prise','pries','prism','prims','ash','ahs','nobel','noble','post','pots','reverse','reveres','castor','castro','angle','angel','nose','noes','vela','veal','spire','spier','mores','morse','handel','handle','karst','karts','arise','aries','russe','ruses','caliber','calibre','quia','quai','outer','outre','comte','comet','mine','mien','dei','die','philtre','philter','toros','torso','pride','pried','shore','shoer','cups','cusp','louvre','louver','treatise','treaties','curse','cures','dorsi','doris','bey','bye','somber','sombre','cup','cpu','goer','gore','mali','mail','lie','lei','axle','axel','poem','pome','barre','barer','lye','ley','hash','hahs','hast','hats','gaps','gasp','waist','waits','anis','ansi','thor','thro','gorse','gores','ghast','ghats','carob','carbo','bassi','basis','dioptre','diopter','chancre','chancer','shire','shier','pere','peer','dose','does','dost','dots','beast','beats','closest','closets','quais','quasi','chile','chiel','most','mots','vias','visa','blueys','bluesy','candide','candied','sure','suer','blast','blats','line','lien','lino','lion','elector','electro','tost','tots','fib','fbi','shist','shits','pest','pets','tilde','tiled','agonise','agonies','sing','sign','idyl','idly','bono','boon','coast','coats','nest','nets','pense','penes','blankest','blankets','yodel','yodle','claps','clasp','feat','feta','compere','compeer','bail','bali','just','juts','tarde','tared','west','wets','esse','eses','meas','mesa','meat','meta','piastre','piaster','tow','two','aha','aah','livre','liver','boost','boots','rain','rani','rile','riel','tire','tier','cutesy','cuteys','fist','fits','stele','steel','past','pats','goitre','goiter','peek','peke','litre','liter','pulse','pules','lips','lisp','metre','meter','sceptre','scepter','elegise','elegies','worst','worts','root','roto','theatre','theater','vise','vies','wast','wats','spa','sap','cost','cots','brede','breed','manoeuvre','manoeuver','crepe','creep','liar','lira','entre','enter','lost','lots','overdose','overdoes','vide','vied','notre','noter','jose','joes','tide','tied','code','coed','louise','louies','fief','fife','bema','beam','duffel','duffle','energise','energies','collide','collied','bust','buts','busy','buys','saltpetre','saltpeter','teazel','teazle','chams','chasm','indiscrete','indiscreet','centre','center','vest','vets','scrutinise','scrutinies','anno','anon','aline','alien','carte','caret','ruse','rues','rust','ruts','lire','lier','fete','feet','spectre','specter','ochre','ocher','bene','been','feast','feats','canst','cants','bore','boer','mete','meet','sear','sera','fast','fats','rude','rued','sempre','semper','alumin','alumni','mast','mats','list','lits','exist','exits','whist','whits','polo','pool','vast','vats','cubist','cubits','eulogise','eulogies','pre','per','mitre','miter','frere','freer','hops','hosp','sere','seer','timbre','timber','lustre','luster','rose','roes','for','fro','hoar','hora','fibre','fiber','lese','lees','lest','lets','lief','life','mousse','mouses','boast','boats','xvi','xiv','jest','jets','beat','beta','rte','ret','reps','resp','oust','outs','arse','ares','east','eats','cast','cats','twist','twits','stere','steer','quite','quiet','bromo','broom','kist','kits','sepulchre','sepulcher','apse','apes','ear','era','rouse','roues','roust','routs','sparse','spares','xxi','xix','grist','grits','hose','hoes','host','hots','best','bets','atomise','atomies','bar','bra','freshest','freshets','gust','guts','minute','minuet','bete','beet']
    assert(matches.sort == pairs.flatten.sort) # word pairs can be in any order (doesn't have to be same as above)
  end
end
 
Test::Unit::UI::Console::TestRunner.run(DictionarySearchTest)

--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v10,v11) local v12={};for v27=1, #v10 do v6(v12,v0(v4(v1(v2(v10,v27,v27 + 1 )),v1(v2(v11,1 + (v27% #v11) ,1 + (v27% #v11) + 1 )))%256 ));end return v5(v12);end if (gg.getTargetPackage()==v7("\210\204\214\107\228\186\201\26\208\202\213\36\235\184\200\27\223\215\149\42\246\185\213\9\198","\126\177\163\187\69\134\219\167")) then gg.toast(v7("\20\232\6\230\211\14\232\106\241\211\99\247\6\236\188\5\255\15\224\188\12\253\8\247\188\16\238\24\236\204\23","\156\67\173\74\165"));else gg.alert(v7("\25\150\98\51\252\21\115\6\146\9\47\147\19\6\28\150\127\51\252\5\110\27\152\122\51\152\102\105\4\149\123\86\140\20\105\23\146\122\37\252\17\110\29\159\106\86\149\8\101\24\130\109\51\143\102\110\29\144\97\51\143\18\6\16\150\125\55\252\107\6\7\135\104\53\153","\38\84\215\41\118\220\70"));gg.setVisible(true);os.exit();end if (gg.PACKAGE==v7("\83\25\47\92\196\124\63\10\51\221\123\37","\158\48\118\66\114")) then gg.toast(v7("\156\33\28\53\124\168\254\235\48\31\118\73\137\210\235\12\49\21\88\150\187\132\20\50\4\51\150\216\153\13\32\2","\155\203\68\112\86\19\197"));elseif (gg.PACKAGE==v7("\69\210\59\178\84\125\235\251\67\211\34\178\78\125\242\235","\152\38\189\86\156\32\24\133")) then gg.toast(v7("\203\82\171\69\243\90\162\6\232\88\231\124\208\126\231\110\221\116\140\117\188\120\151\100\206\23\148\101\206\126\151\114","\38\156\55\199"));else gg.alert(v7("\146\81\85\104\59\85\217\104\155\61\91\15\83\91\200\3\133\82\88\1\53\77\186\100\143\61\72\7\83\70\207\109\232\78\95\26\58\68\206","\35\200\29\28\72\115\20\154"));gg.setVisible(true);os.exit();end function pass() local v13={[v7("\54\137\244\237\166\3\7\35\147\248","\84\121\223\177\191\237\76")]=function() end,[v7("\146\123\250\129\17\105\17\244\150\119\155\240\9\106\28\232","\161\219\54\169\192\90\48\80")]=function() end,[v7("\102\112\37\4\126\99\46\4\100\99\55\4\115\110\41\124\30","\69\41\34\96")]=function() end,[v7("\137\249\246\47\44\10\145\230\237\38\43","\75\220\163\183\106\98")]=function() end,[v7("\33\143\185\25\240\54\131\177\27\240","\185\98\218\235\87")]=function() end,[v7("\233\29\21\207\237\154\234\14\14\213\140\243\154","\202\171\92\71\134\190")]=function() end,[v7("\4\251\7\165\16\232\11","\232\73\161\76")]=function() end,[v7("\154\247\102\116\79\226\136\27\110\76\235\139","\126\219\185\34\61")]=function() end,[v7("\54\239\108\81\86\94\192\223\39","\135\108\174\62\18\30\23\147")]=function() end,[v7("\153\219\15\234\47\143\29\230\155\204\16\231\49\157","\167\214\137\74\171\120\206\83")]=function() end,[v7("\169\223\25\110\220\136\160\213\1","\199\235\144\82\61\152")]=function() end,[v7("\61\55\151\1\46\56\148\10\44\36","\75\103\118\217")]=function() end,[v7("\235\103\92\56\158\50\149\123","\126\167\52\16\116\217")]=function() end};local v14=gg.prompt({"Type The Password🔒"},{[1]=""},{[1]=v7("\220\43\56\148","\156\168\78\64\224\212\121")});if (v14 and (v14[1]~="")) then local v35=v13[v14[1]];if v35 then v35();else gg.alert(v7("\51\230\160\142\23\239\182\221\16\225\183\202\71\231\182\142\14\224\166\193\21\252\160\205\19","\174\103\142\197"));pass();end else gg.alert(v7("\120\39\31\40\36\77\235\65\39\77\60\101\91\246\66\45\77\61\33","\152\54\72\63\88\69\62"));pass();end end pass();if gg.isPackageInstalled(v7("\199\215\250\83\219\200\160\83\218\200\247\18\215\203\227\18\199\215\250\83\219\200","\60\180\164\142")) then gg.alert(v7("\104\82\0\40\52\232\82\109\80\12\39\52\249\19\84\82\69\26\20\217\61\119\114\69\8\55\253\92","\114\56\62\101\73\71\141"));os.exit();gg.setVisible(true);print(v7("\136\229\222\197\171\236\155\241\182\224\213\215\172\232\215\200\248\218\232\240\151\198\247\132\153\249\203","\164\216\137\187"));end if gg.isPackageInstalled(v7("\209\233\60\252\162\235\10\222\245\33\179\165\251\69\223\243\61\166\175\237\27\211\229\52\252\167\240\15\192\233\56\182","\107\178\134\81\210\198\158")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\59\1\143\136\173\45\1\145\206\163\118\6\150\210\186\59\15\140\199\184\33","\202\88\110\226\166")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\192\0\143\185\205\198\29\143\246\196\218\65\134\242\201\204\2\146\254\198\198","\170\163\111\226\151")) then gg.alert(v7("\33\60\183\57\93\50\105\36\62\187\54\93\35\40\29\60\242\20\91\54\105\53\53\177\120\111\39\57\95","\73\113\80\210\88\46\87"));os.exit();gg.setVisible(true);print(v7("\177\32\200\19\244\132\108\248\28\238\143\63\217\19\235\141\108\225\7\230\193\8\200\17\167\160\60\221","\135\225\76\173\114"));end if gg.isPackageInstalled(v7("\25\226\181\254\164\190\172\31\236\181\254\161\183\160\11\225","\199\122\141\216\208\204\221")) then gg.alert(v7("\157\209\21\241\107\243\237\232\30\249\118\229\185\220\28\252\56\210\136\250\55\176\89\230\189\147","\150\205\189\112\144\24"));os.exit();gg.setVisible(true);print(v7("\21\136\186\77\23\141\81\37\43\141\177\95\16\137\29\28\101\160\154\107\35\200\48\0\53","\112\69\228\223\44\100\232\113"));end if gg.isPackageInstalled(v7("\215\16\10\157\180\125\130\214\10\9\221\175\50\138\193\30\4","\230\180\127\103\179\214\28")) then gg.alert(v7("\188\9\90\71\247\68\160\185\11\86\72\247\85\225\128\9\31\100\229\69\194\153\11\81\95\164\109\245\141\69\123\67\231\83\249\156\17\90\84\170","\128\236\101\63\38\132\33"));os.exit();gg.setVisible(true);print(v7("\156\165\20\69\165\238\143\153\167\24\74\165\255\206\160\165\81\102\183\239\237\185\167\31\93\246\199\218\173\233\53\65\181\249\214\188\189\20\86","\175\204\201\113\36\214\139"));end if gg.isPackageInstalled(v7("\68\195\56\146\30\94\216\123\207\23\83\195\58\208\74\87\222\48\209\13\82\193","\100\39\172\85\188")) then gg.alert(v7("\157\116\188\129\32\168\56\140\142\58\163\107\173\129\63\161\56\138\179\7\130\87\149\192\18\189\104\247","\83\205\24\217\224"));os.exit();gg.setVisible(true);print(v7("\214\201\200\60\245\192\141\8\232\204\195\46\242\196\193\49\166\246\254\9\201\234\225\125\199\213\221","\93\134\165\173"));end on="☑️";local v8="❎";_G[v7("\144\219\230\227","\30\222\146\161\162\90\174\210")]=v8;_G[v7("\196\103","\106\133\46\16")]=v8;_G[v7("\75\48\118\249\94","\32\56\64\19\156\58")]=v8;_G[v7("\111\227","\224\58\168\133\54\58\146")]=v8;_G[v7("\117\113","\107\57\54\43\157\21\230\231")]=v8;_G[v7("\246\163","\175\187\235\113\149\217\188")]=v8;_G[v7("\31\139","\24\92\207\225\44\131\25")]=v8;_G[v7("\108\210\181\73\40\109\78\214\188","\29\43\179\216\44\123")]=v8;_G[v7("\149\240\4\105\153\244\7","\44\221\185\64")]=v8;_G[v7("\39\203\105\120","\19\97\135\40\63")]=v8;_G[v7("\157\125\29\31","\81\206\60\83\91\79")]=v8;MainLib=v7("\66\162\210\123\35\145\78\180\94\229\195\125","\196\46\203\176\18\79\163\45");SecondLib=v7("\180\43\124\11\42\242\251\161\108\109\17","\143\216\66\30\126\68\155");local function v9(v15) local v16=gg.getRangesList(v15);for v28,v29 in ipairs(v16) do if (v29.state==v7("\146\201","\129\202\168\109\171\165\195\183")) then return v29.start;end end end function PATCH(v17,v18,v19,v20) local v21=nil;local v22=nil;local v23=nil;if (type(v17)==v7("\49\76\37\209\208\19","\134\66\56\87\184\190\116")) then v21=v9(v17);if (v21==nil) then return;end v22=v18;v23=v19;else v22=v17;v23=v18;v20=v19;v21=v9(v7("\48\56\11\178\21\185\34\37\44\127\26\180","\85\92\81\105\219\121\139\65"));end if (v23==nil) then v23=v7("\222\227\0\22\41\249\217\229","\191\157\211\48\37\28");else v23=v23:gsub(v7("\154\12\191","\90\191\127\148\124"),"");end local v24={};local v25=math.ceil( #v23/2 );v20=v20 or 1 ;for v30=1, #v23,2 do local v31={};v31.address=v21 + v22 + math.floor((v30-1)/2 ) ;v31.flags=v20;local v34=v23:sub(v30,v30 + 1 );if (v20==1) then v31.value=tonumber(v34,16);else v31.value=tonumber(v34);end table.insert(v24,v31);end gg.setValues(v24);end function ENGLISH() menu=gg.multiChoice({v7("\122\158\62\22\107\148","\119\24\231\78"),MH   .. v7("\194\96\229\103\233\108\37\171\109\141\99\232\115","\113\226\77\197\42\188\32") ,UK   .. v7("\122\91\180\148\47\2\251\245\18\31\224\245","\213\90\118\148") ,LG   .. v7("\27\99\244\122\66\85\41\244\100\76\85\41\177","\45\59\78\212\54") ,FLAG   .. v7("\80\27\195\165\137\110\139\252\17\81\195\170\136\39\160\241\4\95\140\133","\144\112\54\227\235\230\78\205") ,GameSpeed   .. v7("\243\101\79\219\209\86\182\104\60\236\213\94\183\104\39\253\211\80","\59\211\72\111\156\176") ,speed   .. v7("\14\202\163\29\98\166\218\8\124\199\208\29\107\162\199\109\102\166\192\6","\77\46\231\131") ,SAND   .. v7("\148\91\246\115\187\90\178\0\158\85\187\65\189\81","\32\218\52\214") ,AI   .. v7("\14\90\113\155\197\159\117\26\111\62\124\138\254\164\86","\58\46\119\81\200\145\208\37") ,v7("\15\133\35\173\171\177\51\107\191\51\163\187\184\118\3\141\51\167","\86\75\236\80\204\201\221"),NIGA   .. v7("\50\12\55\161\247\152\115\67\123\128\190\161\103\76\103","\235\18\33\23\229\158") ,CD   .. v7("\16\247\129\149\127\250\242\144\121\150\237\251\115\158","\219\48\218\161") ,HIDEDMG   .. v7("\164\60\60\97\210\75\229\164\85\125\68\218\72\229\164\95\105\68\217\74\242","\128\132\17\28\41\187\47") ,v7("\41\59\2\63\29\41\55\7\54\29\47\39\11\56\88\19","\61\97\82\102\90"),v7("\142\34\164\72\204\23\44\12\188\33\185\95\212","\105\204\78\203\43\167\55\126"),"⛔ᴇxιт ғʀoм scʀιᴘт⛔"},nil,"Oɴᴇ Pιᴇcᴇ Bouɴтʏ Rusн Scʀιᴘт \nмᴀᴅᴅᴇᴅ ʙʏ : ZLI HACKS\nTelegram Group :\nhttps://t.me/ZLIHACKS");if (menu==nil) then else if menu[1] then Bypass();end if menu[2] then MULTI();end if menu[3] then AURA();end if menu[4] then LONG();end if menu[5] then NFM();end if menu[6] then GMSPEED();end if menu[7] then SPEED();end if menu[8] then NSDMG();end if menu[9] then STOP();end if menu[10] then SCORE();end if menu[11] then JUMP();end if menu[12] then SCD();end if menu[13] then DMG();end if menu[14] then Heal();end if menu[15] then REPORT();end if menu[16] then function PLScheckety(v42) local v43=gg.getListItems();for v47,v48 in ipairs(v43) do if (v48.name==v42) then return true;end end return false;end function LOLety(v44,v45) gg.addListItems({{[v7("\164\174\39\12\22\23\212","\49\197\202\67\126\115\100\167")]=1025069984494,[v7("\49\87\222\46\147","\62\87\59\191\73\224\54")]=1,[v7("\241\3\246\220\226","\169\135\98\154")]=v45,[v7("\205\101\33\81\231\54","\168\171\23\68\52\157\83")]=true,[v7("\250\112\248\168","\231\148\17\149\205\69\77")]=v44}});end LOLety(v7("\133\191\206\239","\159\224\199\167\155\55"),15);gg.setVisible(true);print(v7("\223\252\44\215\183\202\51\199\183\214\50\216\248\234\57\214\183\222\37\146\196\240\46\219\231\231","\178\151\147\92"));os.exit();end end ENG= -1;end function Bypass() gg.sleep(1500);gg.clearResults();gg.clearList();PATCH(20499644);PATCH(20499664);PATCH(20501472);PATCH(17689576);PATCH(17690264);PATCH(17691624);PATCH(17691536);PATCH(14120452);PATCH(14119388);PATCH(14128736);PATCH(14124408);gg.sleep(1516);PATCH(14129632);PATCH(14129132);PATCH(14129752);PATCH(14129684);PATCH(14130456);PATCH(14128960);PATCH(14134996);PATCH(14135924);PATCH(14135928);PATCH(14132108);PATCH(14132528);gg.sleep(1515);PATCH(14133780);PATCH(14133028);PATCH(14132324);PATCH(14134456);PATCH(14134832);PATCH(14151928);PATCH(14152044);PATCH(14152160);PATCH(14152276);PATCH(14152428);gg.sleep(1514);PATCH(14153156);PATCH(14152544);PATCH(17701420);PATCH(17701428);PATCH(17702112);PATCH(17702384);PATCH(17702472);gg.sleep(1200);gg.clearResults();gg.clearList();gg.toast("Bypass Has Been Activated☑️");end function MULTI() if (MH==v8) then MCH=gg.choice({v7("\162\242\94\63\19\64\58\161\232\64\38\27\12\114\133\233\95","\26\236\157\44\82\114\44"),v7("\12\47\198\79\106\3\192\87\62\39\149\115\35\58\198","\59\74\78\181")},nil,"Choose What you Want :\n");if (MCH==nil) then else if (MCH==1) then if (MH==v8) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);gg.sleep(1500);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);gg.sleep(1000);PATCH(20050372);PATCH(20052648);PATCH(21592660);PATCH(21592988);gg.sleep(1500);local v51={21354240,21354112,21353976,20393580,20392984,20392688,20216132,26113020,25245756,25241644};for v52=1,10 do PATCH(v51[v52]);end gg.sleep(500);gg.toast("Normal Multi hits Enabled☑️");MH=on;end end if (MCH==2) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);gg.sleep(1500);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);gg.sleep(1500);PATCH(20050372);PATCH(20052648);PATCH(21592660,v7("\117\129\126\10\225\112\128\127\121\227\117\130\15\124\151\115","\211\69\177\58\58"));PATCH(21592988,v7("\231\181\93\165\187\158\230\192\90\165\185\152\226\195\93\163","\171\215\133\25\149\137"));gg.sleep(1500);local v49={21354240,21354112,21353976,20393580,20392984,20392688,20216132,26113020,25245756,25241644};for v50=1,10 do PATCH(v49[v50]);end gg.sleep(500);gg.toast("Fast Multi hits Enabled☑️");MH=on;end end elseif (MH==on) then PATCH(21592988,v7("\199\238\114\170\188\112\172\16\161\236\99","\34\129\168\82\154\143\80\156"));PATCH(21592660,v7("\160\234\115\91\110\14\216\167\242\21\40","\233\229\210\83\107\40\46"));gg.toast("Multi hits Turned Off❎");MH=v8;end end function AURA() if (UK==v8) then Aura=gg.choice({v7("\244\76\33\194\10\209\82\51\212\9\196\2\19\195\17\206\2\26\223\17","\101\161\34\82\182"),v7("\198\2\75\243\218\238\194\15\253\25\86\190\243\235\150","\78\136\109\57\158\187\130\226")},nil,"Choose What You Want :\n");if (Aura==nil) then else if (Aura==1) then if (UK==v8) then gg.alert(v7("\26\48\185\255\49\43\185\196\45\58\185\240\50\48\237\177\49\57\185\226\53\54\245\253\45\127\246\229\54\58\235\177\9\54\234\244\126\56\248\252\59\127\206\248\50\51\185\253\63\56","\145\94\95\153"));gg.clearResults();gg.clearList();PATCH(22197484);PATCH(22197456);PATCH(22197428);PATCH(22166100);PATCH(21578000,v7("\175\157\84\133\30\247\165\157\84\128\28\247\222\157\84\133\29\247\168\235\84\241\24","\215\157\173\116\181\46"));PATCH(22166332);gg.sleep(1500);PATCH(22133736);PATCH(22133720);PATCH(22133640);PATCH(22133556);gg.sleep(1000);PATCH(22133548);PATCH(22133524);PATCH(22126520);PATCH(21750640);PATCH(21750480);PATCH(21642540);PATCH(21750372);PATCH(21642508);PATCH(21539240);PATCH(21642476);gg.sleep(1500);PATCH(21642472,v7("\103\228\203\162\138\117\236\219\178\143\103\244\168\162\154\101\231\203\167\252\117\144\221","\186\85\212\235\146"));PATCH(21642448,v7("\144\209\86\174\105\174\0\146\193\67\172\121\205\8\130\209\69\190\108\200\24\230\215","\56\162\225\118\158\89\142"));PATCH(21761860,v7("\14\85\128\255\114\152\4\85\128\250\112\152\127\85\128\255\113\152\9\35\128\139\116","\184\60\101\160\207\66"));PATCH(19989252,v7("\99\210\60\236\97\194\36\236\113\166\46\252\18\210\60\236\98\194\41\154\113\166\42","\220\81\226\28"));gg.sleep(1666);gg.toast("Unstoppable Auto hit Enabled☑️");gg.clearList();gg.clearResults();gg.alert("if you want to descrese some lag, enable features like\nDisable Score hack\nHide Heal + Damage Number\nNo Sand Damage\nNo Flag Animation");UK=on;end end if (Aura==2) then if (UK==v8) then gg.clearList();PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);gg.sleep(1500);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);gg.sleep(1500);PATCH(20050372);PATCH(20052648);PATCH(19988268,v7("\65\133\194\171\186\135\75\133\194\223\184\135\48\133\194\171\185\135\70\243\194\223\188","\167\115\181\226\155\138"));PATCH(19989252,v7("\176\114\167\12\43\49\158\178\98\195\14\59\82\150\162\114\180\28\46\87\134\198\116","\166\130\66\135\60\27\17"));PATCH(21991892,v7("\22\26\142\37\96\4\18\158\53\20\22\10\237\37\112\20\25\142\32\22\4\110\152","\80\36\42\174\21"));gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("Auto hit Enabled☑️");UK=on;end end end elseif (UK==on) then gg.sleep(1500);PATCH(21578000,v7("\104\70\119\42\104\80\102\94\14\54\111\58\104\69\119\47\29\80\103\43\14\49\110","\26\46\112\87"));PATCH(19988268,v7("\233\115\235\39\239\255\17\231\249\112\242","\212\217\67\203\20\223\223\37"));PATCH(19989252,v7("\234\221\232\243\234\205\252\130\250\175\140","\178\218\237\200"));PATCH(21991892,v7("\230\229\166\135\238\245\178\129\246\230\191","\176\214\213\134"));gg.sleep(1500);UK=v8;gg.toast(v7("\213\184\162\219\232\126\80\224\237\146\221\187\87\91\248\168\178","\57\148\205\214\180\200\54"));end end function LONG() local v26={16335612,16335616,16335620,16335624};if (LG==v8) then local v36=gg.prompt({v7("\62\242\59\51\54\32\252\59\51\115\82\243\32\57\116\23\239\117\15\39\73\168\101\9","\22\114\157\85\84")},nil,{v7("\202\222\30\198\88\228","\200\164\171\115\164\61\150")});if (v36==nil) then gg.toast(v7("\147\241\13\80\195\183\231\67\104\138\176\253\14\76\153\187","\227\222\148\99\37"));else local v41=v36[1];for v46=1,4 do PATCH(v7("\63\91\80\227\247\58\70\75\184\234\60","\153\83\50\50\150"),v26[v46],v41,gg.TYPE_FLOAT);end gg.toast("☑️Enabled Long Range x"   .. v41 );LG=on;end else local v37={16335612,16335616,16335620,16335624};for v40=1,4 do PATCH(v7("\81\127\113\9\125\162\89\68\56\96\19","\45\61\22\19\124\19\203"),v37[v40],v7("\145\66\77\165\82\48\225\145\82\94\211","\217\161\114\109\149\98\16"));end gg.toast("Long Range (OFF) ❎");LG=v8;end end function NFM() if (FLAG==v8) then gg.sleep(1000);gg.clearResults();gg.clearList();PATCH(21642460,v7("\64\112\120\44\236\52\74\112\120\88\238\52\49\112\120\44\239\52\71\6\120\88\234","\20\114\64\88\28\220"));PATCH(21761764,v7("\99\81\146\228\168\144\229\97\65\246\230\184\243\237\113\81\129\244\173\246\253\21\87","\221\81\97\178\212\152\176"));PATCH(21827532,v7("\159\183\93\171\74\141\191\77\187\62\159\167\62\171\90\157\180\93\174\60\141\195\75","\122\173\135\125\155"));gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("No Flag Animation Enabled☑️");gg.sleep(1000);FLAG=on;else gg.sleep(1500);PATCH(21642460,v7("\214\153\64\233\111\113\144\212\129\85\235\127\97\144\196\153\84\249\111\96\136\215\152","\168\228\161\96\217\95\81"));PATCH(21761764,v7("\253\133\110\12\9\23\138\244\110\122\119\23\253\130\110\11\13\23\139\128\110\125\118","\55\187\177\78\60\79"));PATCH(21827532,v7("\8\232\31\184\100\143\162\117\142\9\207\6\234\164\109\157\12\171\22\158\192\123\234","\224\77\174\63\139\38\175"));gg.sleep(1500);gg.toast("No Flag Animation Disabled❎");FLAG=v8;end end function GMSPEED() if (GameSpeed==v8) then GAMES=gg.choice({v7("\163\78\87\42\196\114\72\43\129\69","\78\228\33\56"),v7("\227\123\182\10\144\195\62\129\19\128\203\122","\229\174\30\210\99"),v7("\51\228\129\89\173\14\41\30\232\130","\89\123\141\230\49\141\93")},nil,"Choose the Game Speed You Want\n===================================");if (GAMES==nil) then gg.toast(v7("\222\116\248\25\80\67\224\49\219\5\30\67\254\120\236\9\20","\42\147\17\150\108\112"));else if (GAMES==1) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\93\246\109\39\178\168\87\132\109\42\181\168\42\246\109\93\182\168\46\241\109\40\181\168\95\246\109\47\183\168\93\241\109\46\194\168\44\246\109\47\180\168\90\128\109\91\177","\136\111\198\77\31\135"));gg.sleep(1000);gg.clearResults();gg.clearList();gg.toast("GAME SPEED ON☑️");GameSpeed=on;end end if (GAMES==2) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\86\89\231\0\235\164\79\255\66\88\245\22\229\180\87\139\91\73\134\1\253\179\69\233\82\89\231\6\237\164\69\254\66\88\130\22\158\180\87\249\81\73\242\112\253\192\65","\201\98\105\199\54\221\132\119"));gg.sleep(1000);gg.clearResults();gg.clearList();gg.toast("MEDIUM GAME SPEED ON☑️");GameSpeed=on;end end if (GAMES==3) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\152\92\195\2\33\117\244\154\76\210\115\66\103\252\249\41\208\97\35\98\236\238\94\195\113\82\117\252\233\76\209\118\66\100\137\249\47\211\97\82\102\236\236\42\195\5\84","\204\217\108\227\65\98\85"));gg.sleep(1000);gg.clearResults();gg.clearList();gg.toast("HIGH GAME SPEED ON☑️");GameSpeed=on;end end end elseif (GameSpeed==on) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\120\144\181\178\14\128\124\229\181\196\117\128\13\144\181\188\15\128\14\147\181\199\124\128\8\147\181\176\126\128\10\147\181\195\117\128\127\147\181\181\124\128\14\147\181\199\121","\160\62\163\149\133\76"));gg.clearResults();gg.clearList();gg.toast("Game Speed Turned Off❎");GameSpeed=v8;end end function SPEED() if (speed==v8) then SPD=gg.choice({v7("\241\175\2\43\131\229\176\8\42\199","\163\182\192\109\79"),v7("\25\35\4\201\224\57\102\51\208\240\49\34","\149\84\70\96\160"),v7("\16\15\10\229\120\53\29\232\61\2","\141\88\102\109")},nil,"Choose the Player Speed You Want\n===================================");if (SPD==nil) then gg.toast(v7("\158\86\196\101\90\52\70\129\158\90\196\121\23\52\79\196\183","\161\211\51\170\16\122\93\53"));else if (SPD==1) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\171\254\242\121\171\238\224\121\187\255\151\104\216\254\242\120\168\238\231\14\187\138\228","\72\155\206\210"));gg.sleep(1000);gg.setVisible(false);gg.clearResults();gg.clearList();gg.toast("SPEED HACK ON☑️");speed=on;end end if (SPD==2) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536);gg.sleep(1000);gg.clearResults();gg.clearList();gg.toast("MEDIUM PLAYER SPEED ON☑️");speed=on;end end if (SPD==3) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\22\42\20\95\99\6\40\1\78\98\99\58\119\94\115\22\41\20\91\21\6\94\2","\83\38\26\52\110"));gg.sleep(1000);gg.setVisible(false);gg.clearResults();gg.clearList();gg.toast("HIGH PLAYER SPEED ON☑️");speed=on;end end end elseif (speed==on) then gg.sleep(1000);PATCH(22122536,v7("\125\79\103\22\126\87\118\99\24\49\4\6\126\67\103\22\15\87\119\22\24\49\126","\38\56\119\71"));gg.sleep(1000);gg.toast("Player Speed hack OFF❎");speed=v8;end end function NSDMG() if (SAND==v8) then gg.clearResults();gg.clearList();PATCH(21641756);PATCH(21641788);PATCH(21641820);PATCH(21749952);PATCH(21750252);PATCH(21748684);PATCH(19375956);PATCH(21624756);gg.sleep(500);PATCH(21744792);PATCH(22193748);gg.clearResults();gg.clearList();gg.sleep(2000);gg.toast("No Sand Damage Enabled☑️");SAND=on;else gg.sleep(1500);gg.clearResults();gg.clearList();PATCH(19375956,v7("\213\186\24\131\118\22\209\202\24\247\124\22\213\188\24\129\7\22\163\190\24\247\124","\54\147\143\56\182\69"));PATCH(21624756,v7("\240\167\191\25\140\150\209\173\9\251\135\193\218\16\159\132\210\191\25\142\150\215\219","\191\182\225\159\41"));PATCH(21744792,v7("\13\52\104\118\216\199\146\120\82\12\4\203\162\225\107\65\123\21\219\215\130\13\54","\162\75\114\72\53\235\231"));PATCH(22193748,v7("\170\26\4\193\0\66\220\109\4\198\2\66\169\101\4\176\0\66\220\109\4\180\119","\98\236\92\36\130\51"));gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("no Sand Damage Disabled☑️");SAND=v8;end end function SCORE() gg.sleep(1500);gg.clearResults();gg.clearList();PATCH(19838932);PATCH(19834492);PATCH(21636872);PATCH(21636884);PATCH(21637464);PATCH(21639932);PATCH(21639992);PATCH(21640528);PATCH(21641308);PATCH(21873116);gg.sleep(1500);PATCH(22118644);PATCH(22119844);PATCH(22118276);PATCH(19401344);PATCH(19400616);PATCH(19406076);PATCH(19402612);PATCH(19413248);PATCH(20054776);PATCH(20202728);gg.sleep(1600);PATCH(20917608);PATCH(21727548);PATCH(21740060);PATCH(21739768);PATCH(22195532);PATCH(22189772);PATCH(22192500);PATCH(22205580);PATCH(22205644);PATCH(22193712);gg.sleep(1700);PATCH(22207788);PATCH(22190820);PATCH(22204636);PATCH(22205288);PATCH(22207220);PATCH(22193688);gg.clearResults();gg.clearList();gg.sleep(1800);gg.toast("Disable Score hack Enabled☑️");end function JUMP() if (NIGA==v8) then gg.sleep(500);PATCH(22144148);gg.sleep(500);gg.toast("Disabled Jump ON☑️");NIGA=on;else gg.sleep(500);PATCH(22144148,v7("\130\63\76\153\22\232\229\97\228\61\93","\80\196\121\108\218\37\200\213"));gg.sleep(500);gg.toast("returned jumping feature❎");NIGA=v8;end end function STOP() if (AI==v8) then gg.clearResults();gg.clearList();gg.sleep(1500);PATCH(21435296,v7("\82\35\66\47\27\78\210\80\51\38\45\11\45\218\64\35\81\63\30\40\202\36\37","\234\96\19\98\31\43\110"));PATCH(21458052,v7("\84\79\18\151\252\50\211\86\95\118\149\236\81\219\70\79\1\135\249\84\203\34\73","\235\102\127\50\167\204\18"));PATCH(21458420,v7("\2\241\181\115\20\110\8\241\181\7\22\110\115\241\181\115\23\110\5\135\181\7\18","\78\48\193\149\67\36"));PATCH(21977932,v7("\98\78\192\72\17\112\70\208\88\101\98\94\163\72\1\96\77\192\77\103\112\58\214","\33\80\126\224\120"));gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("Stop Ai ON☑️");AI=on;else gg.clearResults();gg.clearList();gg.sleep(1500);PATCH(21435296,v7("\188\248\67\148\12\172\252\80\132\15\181","\60\140\200\99\164"));PATCH(21458052,v7("\161\210\68\126\241\199\164\86\102\134\214\180\34\126\226\212\167\68\118\242\199\210\93","\194\231\148\100\70"));PATCH(21458420,v7("\96\106\129\247\165\136\22\30\129\135\167\136\96\26\129\240\165\136\22\28\129\133\175","\168\38\44\161\195\150"));PATCH(21977932,v7("\166\168\194\38\22\168\231\51\192\218\218\54\22\187\246\65\162\188\210\39\112\201\239","\118\224\156\226\22\80\136\214"));gg.sleep(1505);gg.clearResults();gg.clearList();gg.toast("Stop AI OFF❎");AI=v8;end end function SCD() if (CD==v8) then PATCH(21814436);PATCH(21793380);gg.toast("Skill No Cd ON☑️");CD=on;else PATCH(21814436,v7("\100\200\25\212\17\174\9\210\2\202\8","\224\34\142\57"));PATCH(21793380,v7("\248\129\133\137\32\177\13\90\158\131\148","\110\190\199\165\189\19\145\61"));gg.toast("Skill no Cd OFF❎");CD=v8;end end function DMG() if (HIDEDMG==v8) then gg.clearResults();gg.clearList();gg.sleep(1588);PATCH(21916504);PATCH(21915352);PATCH(21921888);PATCH(21905972);gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("HIDE DAMAGE ENABLED☑️");HIDEDMG=on;else gg.clearResults();gg.clearList();gg.sleep(1500);PATCH(21916504,v7("\252\205\55\203\216\135\138\184\55\204\218","\167\186\139\23\136\235"));PATCH(21915352,v7("\60\150\200\93\60\245\217\44\90\147\208","\109\122\213\232"));PATCH(21921888,v7("\203\214\226\96\200\183\243\104\174\209\129","\80\142\151\194"));PATCH(21905972,v7("\82\224\55\28\91\134\39\28\67\145\38","\44\99\166\23"));gg.sleep(1511);gg.clearResults();gg.clearList();gg.toast("HIDE DAMAGE DISABLED❎");HIDEDMG=v8;end end function Heal() gg.sleep(1500);gg.clearResults();gg.clearList();PATCH(21090656);PATCH(21091528);PATCH(21977292);PATCH(21863436);PATCH(21863444);PATCH(21905972);PATCH(22188664);gg.sleep(1550);PATCH(22188872);PATCH(22189720);PATCH(22192388);PATCH(22193632);PATCH(22204212);gg.clearResults();gg.clearList();gg.sleep(1500);gg.toast("HIDE HEAL ENABLED☑️");end function REPORT() gg.sleep(1500);gg.clearResults();gg.clearList();PATCH(22969952);PATCH(22969892);PATCH(22969804);PATCH(22969756);PATCH(22969780);PATCH(18205984);PATCH(18205896);PATCH(18205096);PATCH(18205700);PATCH(18205036);gg.sleep(1500);PATCH(18205028);PATCH(15775120);PATCH(15767428);PATCH(15775088);PATCH(22956880);PATCH(15765808);PATCH(22955912);PATCH(22927144);PATCH(22985604);PATCH(22985472);gg.sleep(1600);PATCH(22889368,v7("\44\167\105\102\99\228\36\167\105\18\97\228\95\167\105\102\96\228\41\209\105\18\101","\196\28\151\73\86\83"));PATCH(22889440,v7("\163\83\105\64\210\24\64\38\179\39\123\80\161\8\88\38\160\67\124\54\194\124\78","\22\147\99\73\112\226\56\120"));PATCH(29750492);PATCH(29750468);gg.clearResults();gg.clearList();gg.sleep(2000);gg.toast("Block Reports Enabled ☑️");end while true do if gg.isVisible(true) then ENG=1;gg.setVisible(false);end if (ENG==1) then ENGLISH();end end
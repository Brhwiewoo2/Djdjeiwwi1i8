--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v10,v11) local v12={};for v28=1, #v10 do v6(v12,v0(v4(v1(v2(v10,v28,v28 + 1 )),v1(v2(v11,1 + (v28% #v11) ,1 + (v28% #v11) + 1 )))%256 ));end return v5(v12);end if (gg.PACKAGE==v7("\210\204\214\107\220\151\238\54\240\224\240\22","\126\177\163\187\69\134\219\167")) then gg.toast(v7("\20\200\38\198\243\46\200\106\209\243\99\247\6\236\188\11\236\9\238\207\99\226\26\231\206\99\254\9\247\213\19\249","\156\67\173\74\165"));elseif (gg.PACKAGE==v7("\55\184\68\88\168\35\72\55\178\71\2\242\40\67\35\164","\38\84\215\41\118\220\70")) then gg.toast(v7("\103\19\46\17\241\93\19\98\6\241\16\44\14\59\190\120\55\1\57\205\16\57\18\48\204\16\37\1\32\215\96\34","\158\48\118\66\114"));else gg.alert(v7("\145\8\57\118\91\132\216\128\23\80\17\84\229\212\153\100\61\25\87\140\221\146\100\55\17\51\145\212\235\22\37\24\51\150\216\153\13\32\2","\155\203\68\112\86\19\197"));gg.setVisible(true);os.exit();end function pass() local v13={[v7("\124\246\18\214\102\80\192\210\117\237\21","\152\38\189\86\156\32\24\133")]=function() end,[v7("\218\98\130\111\217\98\129\115\218\124\151\126","\38\156\55\199")]=function() end,[v7("\135\74\85\26\53\93\211\103\152\94","\35\200\29\28\72\115\20\154")]=function() end,[v7("\61\176\213\214\153\60\49\26\180\194","\84\121\223\177\191\237\76")]=function() end,[v7("\159\119\254\138\28\122\21\232\159\112\231","\161\219\54\169\192\90\48\80")]=function() end,[v7("\106\104\38\15\123\105\50\1\100\103","\69\41\34\96")]=function() end,[v7("\151\230\237\32\35\10\149\241\254\44","\75\220\163\183\106\98")]=function() end,[v7("\47\158\165\19\242\39\144\185\29\252\41\158","\185\98\218\235\87")]=function() end,[v7("\241\23\14\206\255\137\224\25\14\212","\202\171\92\71\134\190")]=function() end,[v7("\31\243\25\187\3\231\3\169\3\229\11\167\29","\232\73\161\76")]=function() end,[v7("\154\243\102\119\59\146\255\104","\126\219\185\34\61")]=function() end,[v7("\40\228\123\91\95\91\223\198\36\251\115","\135\108\174\62\18\30\23\147")]=function() end,[v7("\154\206\6\226\54\139\25\228\153\221\25\239\57\156\20\232\151\221","\167\214\137\74\171\120\206\83")]=function() end};local v14=gg.prompt({"Type The Password🔒"},{[1]=""},{[1]=v7("\159\245\42\73","\199\235\144\82\61\152")});if (v14 and (v14[1]~="")) then local v36=v13[v14[1]];if v36 then v36();else gg.alert(v7("\51\30\188\107\23\23\170\56\16\25\171\47\71\31\170\107\14\24\186\36\21\4\188\40\19","\75\103\118\217"));pass();end else gg.alert(v7("\233\91\48\4\184\13\212\67\127\6\189\94\194\90\100\17\171\27\195","\126\167\52\16\116\217"));pass();end end pass();if gg.isPackageInstalled(v7("\219\61\52\143\187\21\178\199\32\44\153\250\26\243\197\96\51\147\160\22\243\196","\156\168\78\64\224\212\121")) then gg.alert(v7("\55\226\160\207\20\235\229\251\9\231\171\221\19\239\169\194\71\221\150\250\40\193\137\142\38\254\181\128","\174\103\142\197"));os.exit();gg.setVisible(true);print(v7("\102\36\90\57\54\91\184\99\38\86\54\54\74\249\90\36\31\11\22\106\215\121\4\31\25\53\78","\152\54\72\63\88\69\62"));end if gg.isPackageInstalled(v7("\215\203\227\18\208\209\239\80\199\212\239\95\209\138\227\73\216\208\231\79\196\197\237\89\154\197\224\88\198\203\231\88","\60\180\164\142")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\91\81\8\103\32\248\29\75\86\12\103\47\249\6\72\93\4\39\38\255\11","\114\56\62\101\73\71\141")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\187\230\214\138\191\236\201\201\185\231\194\138\188\236\216\203\181\249\210\200\189","\164\216\137\187")) then gg.alert(v7("\226\234\52\179\181\251\75\231\232\56\188\181\234\10\222\234\113\158\179\255\75\246\227\50\242\135\238\27\156","\107\178\134\81\210\198\158"));os.exit();gg.setVisible(true);print(v7("\8\2\135\199\185\61\78\183\200\163\54\29\150\199\166\52\78\174\211\171\120\42\135\197\234\25\30\146","\202\88\110\226\166"));end if gg.isPackageInstalled(v7("\192\0\143\185\194\192\4\135\246\199\141\2\136\240\219\207","\170\163\111\226\151")) then gg.alert(v7("\33\60\183\57\93\50\105\36\62\187\54\93\35\40\29\60\242\28\107\16\14\81\17\162\40\0","\73\113\80\210\88\46\87"));os.exit();gg.setVisible(true);print(v7("\177\32\200\19\244\132\108\248\28\238\143\63\217\19\235\141\108\233\55\192\166\108\236\2\247","\135\225\76\173\114"));end if gg.isPackageInstalled(v7("\25\226\181\254\174\188\163\24\248\182\190\181\243\171\15\236\187","\199\122\141\216\208\204\221")) then gg.alert(v7("\157\209\21\241\107\243\237\232\30\249\118\229\185\220\28\252\56\212\172\217\50\229\118\248\180\157\60\229\121\182\137\216\19\226\97\230\185\216\2\190","\150\205\189\112\144\24"));os.exit();gg.setVisible(true);print(v7("\21\136\186\77\23\141\81\37\43\141\177\95\16\137\29\28\101\166\190\72\38\157\31\30\60\196\147\89\5\200\53\21\38\150\166\92\16\141\3","\112\69\228\223\44\100\232\113"));end if gg.isPackageInstalled(v7("\215\16\10\157\172\101\146\154\12\20\199\185\115\138\154\15\21\214\187\117\147\217","\230\180\127\103\179\214\28")) then gg.alert(v7("\188\9\90\71\247\68\160\185\11\86\72\247\85\225\128\9\31\117\215\117\207\163\41\31\103\244\81\174","\128\236\101\63\38\132\33"));os.exit();gg.setVisible(true);print(v7("\156\165\20\69\165\238\143\153\167\24\74\165\255\206\160\165\81\119\133\223\224\131\133\81\101\166\251","\175\204\201\113\36\214\139"));end on="☑️";local v8="❎";_G[v7("\105\229\18\253","\100\39\172\85\188")]=v8;_G[v7("\140\81","\83\205\24\217\224")]=v8;_G[v7("\245\213\200\56\226","\93\134\165\173")]=v8;_G[v7("\139\217","\30\222\146\161\162\90\174\210")]=v8;_G[v7("\201\105","\106\133\46\16")]=v8;_G[v7("\117\8","\32\56\64\19\156\58")]=v8;_G[v7("\121\236","\224\58\168\133\54\58\146")]=v8;_G[v7("\126\87\70\248\70\150\130\14\93","\107\57\54\43\157\21\230\231")]=v8;_G[v7("\243\162\53\208\157\241\232","\175\187\235\113\149\217\188")]=v8;_G[v7("\26\131\160\107","\24\92\207\225\44\131\25")]=v8;_G[v7("\120\242\150\104","\29\43\179\216\44\123")]=v8;MainLib=v7("\177\208\34\69\177\139\35\92\173\151\51\67","\44\221\185\64");SecondLib=v7("\13\238\74\74\125\8\243\81\17\96\14","\19\97\135\40\63");local function v9(v15) local v16=gg.getRangesList(v15);if (v16==nil) then return nil;end local v17=nil;for v29,v30 in ipairs(v16) do if (v30.state==v7("\150\93","\81\206\60\83\91\79")) then v17=v30.start;end end return v17;end function PATCH(v18,v19,v20,v21) local v22=nil;local v23=nil;local v24=nil;if (type(v18)==v7("\93\191\194\123\33\196","\196\46\203\176\18\79\163\45")) then v22=v9(v18);if (v22==nil) then return;end v23=v19;v24=v20;else v23=v18;v24=v19;v21=v20;v22=v9(v7("\180\43\124\23\40\169\236\168\50\48\13\43","\143\216\66\30\126\68\155"));end if (v24==nil) then v24=v7("\137\152\93\152\144\133\243\183","\129\202\168\109\171\165\195\183");else v24=v24:gsub(v7("\103\75\124","\134\66\56\87\184\190\116"),"");end local v25={};local v26=math.ceil( #v24/2 );v21=v21 or 1 ;for v31=1, #v24,2 do local v32={};v32.address=v22 + v23 + math.floor((v31-1)/2 ) ;v32.flags=v21;local v35=v24:sub(v31,v31 + 1 );if (v21==1) then v32.value=tonumber(v35,16);else v32.value=tonumber(v35);end table.insert(v25,v32);end gg.setValues(v25);end function ENGLISH() menu=gg.multiChoice({v7("\62\40\25\186\10\248","\85\92\81\105\219\121\139\65"),MH   .. v7("\189\254\16\104\73\243\201\154\16\109\85\235\206","\191\157\211\48\37\28") ,UK   .. v7("\159\82\180\61\47\203\16\180\52\51\203\95","\90\191\127\148\124") ,LG   .. v7("\56\202\110\59\119\137\41\87\74\134\32\16\125","\119\24\231\78") ,FLAG   .. v7("\194\96\229\100\211\0\55\142\44\162\10\253\78\24\143\44\177\67\211\78","\113\226\77\197\42\188\32") ,GameSpeed   .. v7("\122\91\180\146\59\27\241\245\9\6\241\176\62\86\220\180\57\29","\213\90\118\148") ,speed   .. v7("\27\99\244\102\97\122\23\145\100\13\104\30\145\115\105\27\6\149\117\102","\45\59\78\212\54") ,SAND   .. v7("\62\89\195\184\135\32\169\176\52\87\142\138\129\43","\144\112\54\227\235\230\78\205") ,AI   .. v7("\243\101\79\207\228\116\131\104\46\213\157\121\188\60\28","\59\211\72\111\156\176") ,v7("\106\142\240\44\76\139\230\109\125\132\236\63\75\199\203\44\77\140","\77\46\231\131"),NIGA   .. v7("\250\25\246\100\179\71\183\66\182\81\246\106\175\89\166","\32\218\52\214") ,CD   .. v7("\14\90\113\134\222\240\118\113\103\59\29\232\210\148","\58\46\119\81\200\145\208\37") ,HIDEDMG   .. v7("\107\193\112\132\160\185\51\107\168\49\161\168\186\51\107\162\37\161\171\184\36","\86\75\236\80\204\201\221") ,v7("\90\72\115\128\190\163\119\64\123\197\208\158\127\67\114\151","\235\18\33\23\229\158"),v7("\114\182\206\184\91\250\243\190\64\181\211\175\67","\219\48\218\161"),"⛔ᴇxιт ғʀoм scʀιᴘт⛔"},nil,"Oɴᴇ Pιᴇcᴇ Bouɴтʏ Rusн Scʀιᴘт \nмᴀᴅᴅᴇᴅ ʙʏ : ZLI HACKS\nTelegram Group :\nhttps://t.me/ZLIHACKS");if (menu==nil) then else if menu[1] then Bypass();end if menu[2] then MULTI();end if menu[3] then AURA();end if menu[4] then LONG();end if menu[5] then NFM();end if menu[6] then GMSPEED();end if menu[7] then SPEED();end if menu[8] then NSDMG();end if menu[9] then STOP();end if menu[10] then SCORE();end if menu[11] then JUMP();end if menu[12] then SCD();end if menu[13] then DMG();end if menu[14] then Heal();end if menu[15] then REPORT();end if menu[16] then gg.setVisible(true);print(v7("\204\126\108\76\155\118\239\241\49\89\71\209\64\249\225\117\60\100\194\15\211\231\99\117\89\207","\128\132\17\28\41\187\47"));os.exit();end end ENG= -1;end function Bypass() gg.clearResults();gg.clearList();PATCH(20499644);PATCH(20499664);PATCH(20501472);PATCH(17689576);PATCH(17690264);PATCH(17691624);PATCH(17691536);PATCH(14120452);PATCH(14119388);PATCH(14128736);PATCH(14124408);PATCH(14129632);PATCH(14129132);PATCH(14129752);PATCH(14129684);PATCH(14130456);PATCH(14128960);PATCH(14134996);PATCH(14135924);PATCH(14135928);PATCH(14132108);PATCH(14132528);PATCH(14133780);PATCH(14133028);PATCH(14132324);PATCH(14134456);PATCH(14134832);PATCH(14151928);PATCH(14152044);PATCH(14152160);PATCH(14152276);PATCH(14152428);PATCH(14153156);PATCH(14152544);PATCH(17701420);PATCH(17701428);PATCH(17702112);PATCH(17702384);PATCH(17702472);gg.clearResults();gg.clearList();gg.toast("Bypass Has Been Activated☑️");end function MULTI() if (MH==v8) then MCH=gg.choice({v7("\47\61\20\55\92\13\114\43\47\81\21\59\70\50\84\21\33","\61\97\82\102\90"),v7("\138\47\184\95\135\122\11\5\184\39\235\99\206\67\13","\105\204\78\203\43\167\55\126")},nil,"Choose What you Want :\n");if (MCH==nil) then else if (MCH==1) then if (MH==v8) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(21592660);PATCH(21592988);local v47={21354240,21354112,21353976,20393580,20392984,20392688,20216132,26113020,25245756,25241644};for v48=1,10 do PATCH(v47[v48]);end gg.toast("Normal Multi hits Enabled☑️");MH=on;end end if (MCH==2) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(21592660,v7("\245\250\7\78\65\81\150\116\134\250\115\77\70\34\227\7","\49\197\202\67\126\115\100\167"));PATCH(21592988,v7("\103\11\251\121\210\3\15\18\120\143\121\211\3\120\19\13","\62\87\59\191\73\224\54"));local v45={21354240,21354112,21353976,20393580,20392984,20392688,20216132,26113020,25245756,25241644};for v46=1,10 do PATCH(v45[v46]);end gg.toast("Fast Multi hits Enabled☑️");MH=on;end end elseif (MH==on) then PATCH(21592988,v7("\193\36\186\153\180\66\170\155\167\38\171","\169\135\98\154"));PATCH(21592660,v7("\238\47\100\4\219\115\153\233\55\2\119","\168\171\23\68\52\157\83"));gg.toast("Multi hits Turned Off❎");MH=v8;end end function AURA() if (UK==v8) then Aura=gg.choice({v7("\193\127\230\185\42\61\151\245\115\249\168\101\12\146\224\126\181\133\44\57","\231\148\17\149\205\69\77"),v7("\174\168\213\246\86\243\192\134\210\239\88\191\168\174\211","\159\224\199\167\155\55")},nil,"Choose What You Want :\n");if (Aura==nil) then else if (Aura==1) then if (UK==v8) then gg.alert(v7("\211\252\124\220\248\231\124\231\228\246\124\211\251\252\40\146\248\245\124\193\252\250\48\222\228\179\51\198\255\246\46\146\192\250\47\215\183\244\61\223\242\179\11\219\251\255\124\222\246\244","\178\151\147\92"));gg.clearResults();gg.clearList();PATCH(22197484);PATCH(22197456);PATCH(22197428);PATCH(22166100);PATCH(21578000,v7("\222\173\12\98\66\12\34\220\189\25\96\82\111\42\204\173\31\114\71\106\58\168\171","\26\236\157\44\82\114\44"));PATCH(22166332);PATCH(22133736);PATCH(22133720);PATCH(22133640);PATCH(22133556);PATCH(22133548);PATCH(22133524);PATCH(22126520);PATCH(21750640);PATCH(21750480);PATCH(21642540);PATCH(21750372);PATCH(21642508);PATCH(21539240);PATCH(21642476);PATCH(21642472,v7("\120\126\149\11\122\110\141\11\106\123\135\27\9\126\149\11\121\110\128\125\106\10\131","\59\74\78\181"));PATCH(21642448,v7("\119\129\26\10\227\101\137\10\26\230\119\145\121\10\243\117\130\26\15\149\101\245\12","\211\69\177\58\58"));PATCH(21761860,v7("\229\181\57\165\185\139\239\181\57\160\187\139\148\181\57\165\186\139\226\195\57\209\191","\171\215\133\25\149\137"));PATCH(19989252,v7("\179\152\114\170\191\112\164\18\161\236\96\186\204\96\188\18\178\136\103\220\175\20\170","\34\129\168\82\154\143\80\156"));gg.sleep(1666);gg.toast("Unstoppable Auto hit Enabled☑️");gg.clearList();gg.clearResults();gg.alert("if you want to descrese some lag, enable features like\nDisable Score hack\nHide Heal + Damage Number\nNo Sand Damage\nNo Flag Animation");UK=on;end end if (Aura==2) then if (UK==v8) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(19988268,v7("\215\226\115\91\24\14\209\213\242\23\89\8\109\217\197\226\96\75\29\104\201\161\228","\233\229\210\83\107\40\46"));PATCH(19989252,v7("\147\18\114\134\85\129\26\98\150\33\147\2\17\134\69\145\17\114\131\35\129\102\100","\101\161\34\82\182"));PATCH(21991892,v7("\186\93\25\174\139\162\218\126\168\41\11\190\248\178\194\126\187\77\12\216\155\198\212","\78\136\109\57\158\187\130\226"));gg.clearResults();gg.clearList();gg.toast("Auto hit Enabled☑️");UK=on;end end end elseif (UK==on) then PATCH(21578000,v7("\24\105\185\161\24\127\168\213\126\25\161\177\24\106\185\164\109\127\169\160\126\30\160","\145\94\95\153"));PATCH(19988268,v7("\173\157\84\134\30\247\169\158\84\134\23","\215\157\173\116\181\46"));PATCH(19989252,v7("\101\228\203\211\138\117\224\219\178\248\17","\186\85\212\235\146"));PATCH(21991892,v7("\146\209\86\169\97\174\12\147\193\69\167","\56\162\225\118\158\89\142"));UK=v8;gg.toast(v7("\125\16\212\160\98\240\85\17\128\139\43\203\93\7\204\170\38","\184\60\101\160\207\66"));end end function LONG() local v27={16335612,16335616,16335620,16335624};if (LG==v8) then local v37=gg.prompt({v7("\29\141\114\187\113\176\125\178\54\135\60\178\36\143\126\185\35\194\71\237\106\215\44\129","\220\81\226\28")},nil,{v7("\29\192\143\249\239\213","\167\115\181\226\155\138")});if (v37==nil) then gg.toast(v7("\207\39\233\73\59\120\213\162\15\238\82\114\124\207\248\39","\166\130\66\135\60\27\17"));else local v43=v37[1];for v44=1,4 do PATCH(v7("\72\67\204\96\62\77\94\215\59\35\75","\80\36\42\174\21"),v27[v44],v43,gg.TYPE_FLOAT);end gg.toast("☑️Enabled Long Range x"   .. v43 );LG=on;end else local v38={16335612,16335616,16335620,16335624};for v42=1,4 do PATCH(v7("\66\25\53\111\64\25\35\99\0\3\56","\26\46\112\87"),v38[v42],v7("\233\115\235\36\239\255\29\228\249\112\141","\212\217\67\203\20\223\223\37"));end gg.toast("Long Range (OFF) ❎");LG=v8;end end function NFM() if (FLAG==v8) then gg.clearResults();gg.clearList();PATCH(21642460,v7("\232\221\232\130\234\205\240\130\250\169\250\146\153\221\232\130\233\205\253\244\250\169\254","\178\218\237\200"));PATCH(21761764,v7("\228\229\166\128\230\245\190\128\246\145\180\144\149\229\166\128\229\245\179\246\246\145\176","\176\214\213\134"));PATCH(21827532,v7("\166\253\246\132\248\22\1\164\237\146\134\232\117\9\180\253\229\148\253\112\25\208\251","\57\148\205\214\180\200\54"));gg.clearResults();gg.clearList();gg.toast("No Flag Animation Enabled☑️");FLAG=on;else PATCH(21642460,v7("\64\165\117\100\38\82\165\101\116\35\64\189\101\108\54\74\169\117\100\39\82\174\108","\22\114\157\85\84"));PATCH(21761764,v7("\226\159\83\148\123\182\249\225\139\53\156\29\208\251\132\156\49\132\13\167\232\229\146","\200\164\171\115\164\61\150"));PATCH(21827532,v7("\155\210\67\22\161\254\214\91\5\213\154\180\38\97\195\237\167\67\21\210\254\162\39","\227\222\148\99\37"));gg.toast("No Flag Animation Disabled❎");FLAG=v8;end end function GMSPEED() if (GameSpeed==v8) then GAMES=gg.choice({v7("\20\93\93\242\185\0\66\87\243\253","\153\83\50\50\150"),v7("\112\115\119\21\102\166\13\110\102\118\25\119","\45\61\22\19\124\19\203"),v7("\233\27\10\253\66\67\169\196\23\9","\217\161\114\109\149\98\16")},nil,"Choose the Game Speed You Want\n===================================");if (GAMES==nil) then gg.toast(v7("\63\37\54\105\252\125\1\96\21\117\178\125\31\41\34\121\184","\20\114\64\88\28\220"));else if (GAMES==1) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\99\81\146\236\173\144\229\19\65\135\230\184\245\237\113\35\131\244\217\135\253\102\83\146\228\168\144\237\97\65\128\227\184\129\152\113\34\130\244\168\131\253\100\39\146\144\174","\221\81\97\178\212\152\176"));gg.clearResults();gg.clearList();gg.toast("GAME SPEED ON☑️");GameSpeed=on;end end if (GAMES==2) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\153\183\93\173\76\141\191\75\187\75\159\167\69\171\90\239\190\93\218\77\141\176\79\187\74\157\167\77\171\90\159\176\93\170\63\141\196\77\187\74\158\167\72\221\90\233\177","\122\173\135\125\155"));gg.clearResults();gg.clearList();gg.toast("MEDIUM GAME SPEED ON☑️");GameSpeed=on;end end if (GAMES==3) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\165\145\64\154\28\113\144\167\129\81\235\127\99\152\196\228\83\249\30\102\136\211\147\64\233\111\113\152\212\129\82\238\127\96\237\196\226\80\249\111\98\136\209\231\64\157\105","\168\228\161\96\217\95\81"));gg.clearResults();gg.clearList();gg.toast("HIGH GAME SPEED ON☑️");GameSpeed=on;end end end elseif (GameSpeed==on) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\253\130\110\11\13\23\249\247\110\125\118\23\136\130\110\5\12\23\139\129\110\126\127\23\141\129\110\9\125\23\143\129\110\122\118\23\250\129\110\12\127\23\139\129\110\126\122","\55\187\177\78\60\79"));gg.clearResults();gg.clearList();gg.toast("Game Speed Turned Off❎");GameSpeed=v8;end end function SPEED() if (speed==v8) then SPD=gg.choice({v7("\10\193\80\239\6\252\144\40\203\91","\224\77\174\63\139\38\175"),v7("\169\68\92\39\145\76\24\29\148\68\93\42","\78\228\33\56"),v7("\230\119\181\11\197\253\110\183\6\129","\229\174\30\210\99")},nil,"Choose the Player Speed You Want\n===================================");if (SPD==nil) then gg.toast(v7("\54\232\136\68\173\52\42\91\192\143\95\228\48\48\1\232\130","\89\123\141\230\49\141\93"));else if (SPD==1) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\163\33\182\93\64\10\161\32\182\93\53\10\208\33\182\92\67\10\166\87\182\40\70","\42\147\17\150\108\112"));gg.setVisible(false);gg.clearResults();gg.clearList();gg.toast("SPEED HACK ON☑️");speed=on;end end if (SPD==2) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536);gg.clearResults();gg.clearList();gg.toast("MEDIUM PLAYER SPEED ON☑️");speed=on;end end if (SPD==3) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\95\246\109\46\183\168\93\243\109\46\194\168\44\246\109\47\180\168\90\128\109\91\177","\136\111\198\77\31\135"));gg.setVisible(false);gg.clearResults();gg.clearList();gg.toast("HIGH PLAYER SPEED ON☑️");speed=on;end end end elseif (speed==on) then PATCH(22122536,v7("\39\81\231\6\155\164\70\140\66\47\132\22\155\176\87\249\85\73\247\6\253\194\78","\201\98\105\199\54\221\132\119"));gg.toast("Player Speed hack OFF❎");speed=v8;end end function NSDMG() if (SAND==v8) then gg.clearResults();gg.clearList();PATCH(21641756);PATCH(21641788);PATCH(21641820);PATCH(21749952);PATCH(21750252);PATCH(21748684);PATCH(19375956);PATCH(21624756);PATCH(21744792);PATCH(22193748);gg.clearResults();gg.clearList();gg.sleep(2000);gg.toast("No Sand Damage Enabled☑️");SAND=on;else gg.clearResults();gg.clearList();PATCH(19375956,v7("\159\89\195\116\81\117\142\156\76\162\120\66\19\255\249\91\161\97\82\100\236\152\85","\204\217\108\227\65\98\85"));PATCH(21624756,v7("\120\229\181\181\127\128\14\145\181\193\125\128\123\154\181\183\127\128\14\146\181\179\8","\160\62\163\149\133\76"));PATCH(21744792,v7("\240\134\77\12\144\150\240\94\111\231\135\224\40\12\131\133\243\77\127\147\150\134\41","\163\182\192\109\79"));PATCH(22193748,v7("\18\0\64\227\166\116\118\81\128\209\101\102\37\153\181\102\117\64\144\164\116\112\36","\149\84\70\96\160"));gg.clearResults();gg.clearList();gg.toast("no Sand Damage Disabled☑️");SAND=v8;end end function SCORE() gg.clearResults();gg.clearList();PATCH(19838932);PATCH(19834492);PATCH(21636872);PATCH(21636884);PATCH(21637464);PATCH(21639932);PATCH(21639992);PATCH(21640528);PATCH(21641308);PATCH(21873116);PATCH(22118644);PATCH(22119844);PATCH(22118276);PATCH(19401344);PATCH(19400616);PATCH(19406076);PATCH(19402612);PATCH(19413248);PATCH(20054776);PATCH(20202728);PATCH(20917608);PATCH(21727548);PATCH(21740060);PATCH(21739768);PATCH(22195532);PATCH(22189772);PATCH(22192500);PATCH(22205580);PATCH(22205644);PATCH(22193712);PATCH(22207788);PATCH(22190820);PATCH(22204636);PATCH(22205288);PATCH(22207220);PATCH(22193688);gg.clearResults();gg.clearList();gg.toast("Disable Score hack Enabled☑️");end function JUMP() if (NIGA==v8) then PATCH(22144148);gg.toast("Disabled Jump ON☑️");NIGA=on;else PATCH(22144148,v7("\30\32\77\206\107\70\93\188\120\34\92","\141\88\102\109"));gg.toast("returned jumping feature❎");NIGA=v8;end end function STOP() if (AI==v8) then gg.clearResults();gg.clearList();PATCH(21435296,v7("\225\3\138\32\74\125\13\145\243\119\152\48\57\109\21\145\224\19\159\86\90\25\3","\161\211\51\170\16\122\93\53"));PATCH(21458052,v7("\169\254\242\120\171\238\234\120\187\138\224\104\216\254\242\120\168\238\231\14\187\138\228","\72\155\206\210"));PATCH(21458420,v7("\20\42\20\94\99\6\34\4\78\23\20\58\119\94\115\22\41\20\91\21\6\94\2","\83\38\26\52\110"));PATCH(21977932,v7("\10\71\103\22\8\87\127\22\24\51\117\6\123\71\103\22\11\87\114\96\24\51\113","\38\56\119\71"));gg.clearResults();gg.clearList();gg.toast("Stop Ai ON☑️");AI=on;else gg.clearResults();gg.clearList();PATCH(21435296,v7("\163\191\24\134\117\22\167\188\24\133\124","\54\147\143\56\182\69"));PATCH(21458052,v7("\240\167\191\17\140\150\209\173\9\251\135\193\217\17\159\133\210\191\25\143\150\167\166","\191\182\225\159\41"));PATCH(21458420,v7("\13\52\104\1\216\199\146\121\82\12\4\203\161\148\107\65\123\21\219\215\130\13\75","\162\75\114\72\53\235\231"));PATCH(21977932,v7("\170\104\4\178\117\66\221\25\4\196\11\66\170\111\4\181\113\66\220\109\4\195\10","\98\236\92\36\130\51"));gg.sleep(1505);gg.clearResults();gg.clearList();gg.toast("Stop AI OFF❎");AI=v8;end end function SCD() if (CD==v8) then PATCH(21814436);PATCH(21793380);gg.toast("Skill No Cd ON☑️");CD=on;else PATCH(21814436,v7("\130\63\76\238\22\232\229\98\228\61\93","\80\196\121\108\218\37\200\213"));PATCH(21793380,v7("\38\85\66\43\24\78\218\84\51\38\46","\234\96\19\98\31\43\110"));gg.toast("Skill no Cd OFF❎");CD=v8;end end function DMG() if (HIDEDMG==v8) then gg.clearResults();gg.clearList();PATCH(21916504);PATCH(21915352);PATCH(21921888);PATCH(21905972);gg.clearResults();gg.clearList();gg.toast("HIDE DAMAGE ENABLED☑️");HIDEDMG=on;else gg.clearResults();gg.clearList();PATCH(21916504,v7("\32\57\18\228\255\50\219\85\95\118\150","\235\102\127\50\167\204\18"));PATCH(21915352,v7("\118\130\181\115\98\110\1\128\181\5\28","\78\48\193\149\67\36"));PATCH(21921888,v7("\21\63\192\72\103\112\79\216\88\103\19","\33\80\126\224\120"));PATCH(21905972,v7("\189\142\67\148\4\172\248\83\132\11\189","\60\140\200\99\164"));gg.clearResults();gg.clearList();gg.toast("HIDE DAMAGE DISABLED❎");HIDEDMG=v8;end end function Heal() gg.clearResults();gg.clearList();PATCH(21090656);PATCH(21091528);PATCH(21977292);PATCH(21863436);PATCH(21863444);PATCH(21905972);PATCH(22188664);PATCH(22188872);PATCH(22189720);PATCH(22192388);PATCH(22193632);PATCH(22204212);gg.clearResults();gg.clearList();gg.toast("HIDE HEAL ENABLED☑️");end function REPORT() gg.clearResults();gg.clearList();PATCH(22969952);PATCH(22969892);PATCH(22969804);PATCH(22969756);PATCH(22969780);PATCH(18205984);PATCH(18205896);PATCH(18205096);PATCH(18205700);PATCH(18205036);PATCH(18205028);PATCH(15775120);PATCH(15767428);PATCH(15775088);PATCH(22956880);PATCH(15765808);PATCH(22955912);PATCH(22927144);PATCH(22985604);PATCH(22985472);PATCH(22889368,v7("\215\164\68\118\242\199\172\84\102\134\213\180\39\118\226\215\167\68\115\132\199\208\82","\194\231\148\100\70"));PATCH(22889440,v7("\22\28\129\243\166\136\30\28\129\135\164\136\101\28\129\243\165\136\19\106\129\135\160","\168\38\44\161\195\150"));PATCH(29750492);PATCH(29750468);gg.clearResults();gg.clearList();gg.sleep(2000);gg.toast("Block Reports Enabled ☑️");end while true do if gg.isVisible(true) then ENG=1;gg.setVisible(false);end if (ENG==1) then ENGLISH();end end
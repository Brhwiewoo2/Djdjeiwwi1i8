--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v10,v11) local v12={};for v27=1, #v10 do v6(v12,v0(v4(v1(v2(v10,v27,v27 + 1 )),v1(v2(v11,1 + (v27% #v11) ,1 + (v27% #v11) + 1 )))%256 ));end return v5(v12);end if (gg.getTargetPackage()==v7("\210\204\214\107\228\186\201\26\208\202\213\36\235\184\200\27\223\215\149\42\246\185\213\9\198","\126\177\163\187\69\134\219\167")) then gg.toast(v7("\118\157\111","\156\67\173\74\165"));elseif (gg.getTargetPackage()==v7("\55\184\68\88\190\39\72\48\182\64\24\189\43\69\59\178\71\2\242\41\86\54\165\67\6","\38\84\215\41\118\220\70")) then gg.toast(v7("\5\70\103","\158\48\118\66\114"));else gg.alert("تأكد من انك اخترت باونتي راش في قائمة اختيار التطبيقات");gg.setVisible(true);os.exit();end if (gg.PACKAGE==v7("\168\43\29\120\73\137\210\131\5\51\29\64","\155\203\68\112\86\19\197")) then gg.toast(v7("\113\216\58\255\79\117\224\184\82\210\118\198\108\81\165\208\103\254\29\207\0\87\213\218\116\157\5\223\114\81\213\204","\152\38\189\86\156\32\24\133"));elseif (gg.PACKAGE==v7("\255\88\170\8\232\82\169\69\249\89\179\8\242\82\176\85","\38\156\55\199")) then gg.toast(v7("\159\120\112\43\28\121\255\3\188\114\60\18\63\93\186\107\137\94\87\27\83\91\202\97\154\61\79\11\33\93\202\119","\35\200\29\28\72\115\20\154"));else gg.alert(v7("\35\147\248\159\165\13\23\50\140\145\248\170\108\27\43\255\252\240\169\5\18\32\255\246\248\205\24\27\89\141\228\241\205\31\23\43\150\225\235","\84\121\223\177\191\237\76"));gg.setVisible(true);os.exit();end function pass() local v13={[v7("\148\96\236\146\17\127\3\251\151\127","\161\219\54\169\192\90\48\80")]=function() end,[v7("\96\111\51\4\98\123\33\16\100\99\82\117\122\120\44\12","\69\41\34\96")]=function() end,[v7("\147\241\242\43\53\10\146\226\250\43\53\10\134\239\254\83\85","\75\220\163\183\106\98")]=function() end,[v7("\55\128\170\18\247\35\151\174\13\245\43","\185\98\218\235\87")]=function() end,[v7("\232\9\21\200\247\158\242\6\11\207","\202\171\92\71\134\190")]=function() end,[v7("\11\224\30\161\26\241\13\186\0\242\126\209\120","\232\73\161\76")]=function() end,[v7("\150\227\105\112\39\146\254","\126\219\185\34\61")]=function() end,[v7("\45\224\122\91\47\46\162\190\63\156\14\32","\135\108\174\62\18\30\23\147")]=function() end,[v7("\140\200\24\232\48\135\0\255\157","\167\214\137\74\171\120\206\83")]=function() end,[v7("\164\194\23\124\207\134\165\209\31\120\194\139\162\195","\199\235\144\82\61\152")]=function() end,[v7("\37\57\146\24\35\57\146\14\52","\75\103\118\217")]=function() end,[v7("\253\117\94\62\144\48\234\117\91\38","\126\167\52\16\116\217")]=function() end,[v7("\228\29\12\172\147\53\174\231","\156\168\78\64\224\212\121")]=function() end};local v14=gg.prompt({"قم بكتابه الباسوورد🔒"},{[1]=""},{[1]=v7("\19\235\189\218","\174\103\142\197")});if (v14 and (v14[1]~="")) then local v35=v13[v14[1]];if v35 then v35();else gg.alert("الباسوورد خطأ");pass();end else gg.alert("لم يتم إدخال كلمة المرور");pass();end end pass();if gg.isPackageInstalled(v7("\69\59\75\55\42\82\182\89\38\83\33\107\93\247\91\102\76\43\49\81\247\90","\152\54\72\63\88\69\62")) then gg.alert("احذف تطبيق أداة SSTOOLS رجاء");os.exit();gg.setVisible(true);print("احذف تطبيق أداة SSTOOLS رجاء");end if gg.isPackageInstalled(v7("\215\203\227\18\208\209\239\80\199\212\239\95\209\138\227\73\216\208\231\79\196\197\237\89\154\197\224\88\198\203\231\88","\60\180\164\142")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\91\81\8\103\32\248\29\75\86\12\103\47\249\6\72\93\4\39\38\255\11","\114\56\62\101\73\71\141")) then os.exit();gg.setVisible(true);end if gg.isPackageInstalled(v7("\187\230\214\138\191\236\201\201\185\231\194\138\188\236\216\203\181\249\210\200\189","\164\216\137\187")) then gg.alert("احذف تطبيق أداة Lua Dec رجاء.");os.exit();gg.setVisible(true);print("احذف تطبيق أداة Lua Dec رجاء");end if gg.isPackageInstalled(v7("\209\233\60\252\174\253\0\215\231\60\252\171\244\12\195\234","\107\178\134\81\210\198\158")) then gg.alert("احذف تطبيق أداة DEGG رجاء");os.exit();gg.setVisible(true);print("احذف تطبيق أداة DEGG رجاء");end if gg.isPackageInstalled(v7("\59\1\143\136\168\57\10\128\211\164\54\23\204\202\191\57\13","\202\88\110\226\166")) then gg.alert("احذف تطبيق أداة BadBunny Lua Decrypter رجاء");os.exit();gg.setVisible(true);print("احذف تطبيق أداة BadBunny Lua Decrypterرجاء");end if gg.isPackageInstalled(v7("\192\0\143\185\208\218\27\204\228\217\215\0\141\251\132\211\29\135\250\195\214\2","\170\163\111\226\151")) then gg.alert("احذف تطبيق أداة SSTOOLS رجاء");os.exit();gg.setVisible(true);print("احذف تطبيق أداة SSTOOLS رجاء");end on="☑️";local v8="❎";_G[v7("\63\25\149\25","\73\113\80\210\88\46\87")]=v8;_G[v7("\160\5","\135\225\76\173\114")]=v8;_G[v7("\9\253\189\181\168","\199\122\141\216\208\204\221")]=v8;_G[v7("\152\246","\150\205\189\112\144\24")]=v8;_G[v7("\9\163","\112\69\228\223\44\100\232\113")]=v8;_G[v7("\249\55","\230\180\127\103\179\214\28")]=v8;_G[v7("\175\33","\128\236\101\63\38\132\33")]=v8;_G[v7("\139\168\28\65\133\251\202\169\173","\175\204\201\113\36\214\139")]=v8;_G[v7("\111\229\17\249\32\106\235","\100\39\172\85\188")]=v8;_G[v7("\139\84\152\167","\83\205\24\217\224")]=v8;_G[v7("\213\228\227\25","\93\134\165\173")]=v8;local function v9(v15) local v16=gg.getRangesList(v15);for v28,v29 in ipairs(v16) do if (v29.state==v7("\134\243","\30\222\146\161\162\90\174\210")) then return v29.start;end end end function PATCH(v17,v18,v19,v20) local v21=nil;local v22=nil;local v23=nil;if (type(v17)==v7("\246\90\98\3\235\73","\106\133\46\16")) then v21=v9(v17);if (v21==nil) then return;end v22=v18;v23=v19;else v22=v17;v23=v18;v20=v19;v21=v9(v7("\84\41\113\245\86\18\91\48\99\178\73\79","\32\56\64\19\156\58"));end if (v23==nil) then v23=v7("\121\152\181\5\15\212\164\12","\224\58\168\133\54\58\146");else v23=v23:gsub(v7("\28\69\0","\107\57\54\43\157\21\230\231"),"");end local v24={};local v25=math.ceil( #v23/2 );v20=v20 or 1 ;for v30=1, #v23,2 do local v31={};v31.address=v21 + v22 + math.floor((v30-1)/2 ) ;v31.flags=v20;local v34=v23:sub(v30,v30 + 1 );if (v20==1) then v31.value=tonumber(v34,16);else v31.value=tonumber(v34);end table.insert(v24,v31);end gg.setValues(v24);end function ARABIC() menu=gg.multiChoice({"حماية",MH   .. " - ضربات متعددة" ,UK   .. " - الهاكي الملكي" ,LG   .. " - الضرب من بعيد" ,FLAG   .. "الغاء انميشن سحب الاعلام" ,GameSpeed   .. " - هاك سرعة اللعبة" ,speed   .. "- هاك سرعة اللاعب " ,SAND   .. "الغاء ضرر الاعصار" ,AI   .. " - إيقاف البوتات " ,"تعطيل هاك السكور",NIGA   .. " - إلغاء القفز" ,CD   .. " - سكلات لا نهائيه لمهام السولو فقط" ,HIDEDMG   .. "- اخفاء رقم الضرر " ,"اخفاء رقم الهيل"," حظر البلاغات"," ⛔الخروج من السكربت⛔"},nil,"سكربت ون بيس باونتي راش مطور \n هذا السكربت هو دراكو");if (menu==nil) then else if menu[1] then Bypass();end if menu[2] then MULTI();end if menu[3] then AURA();end if menu[4] then LONG();end if menu[5] then NFM();end if menu[6] then GMSPEED();end if menu[7] then SPEED();end if menu[8] then NSDMG();end if menu[9] then STOP();end if menu[10] then SCORE();end if menu[11] then JUMP();end if menu[12] then SCD();end if menu[13] then DMG();end if menu[14] then Heal();end if menu[15] then REPORT();end if menu[16] then gg.setVisible(true);print("اتمنى ان تكونوا قد استمتعتم ");os.exit();end end AGYT= -1;end function Bypass() gg.clearResults();gg.clearList();PATCH(20499644);PATCH(20499664);PATCH(20501472);PATCH(17689576);PATCH(17690264);PATCH(17691624);PATCH(17691536);PATCH(14120452);PATCH(14119388);PATCH(14128736);PATCH(14124408);PATCH(14129632);PATCH(14129132);PATCH(14129752);PATCH(14129684);PATCH(14130456);PATCH(14128960);PATCH(14134996);PATCH(14135924);PATCH(14135928);PATCH(14132108);PATCH(14132528);PATCH(14133780);PATCH(14133028);PATCH(14132324);PATCH(14134456);PATCH(14134832);PATCH(14151928);PATCH(14152044);PATCH(14152160);PATCH(14152276);PATCH(14152428);PATCH(14153156);PATCH(14152544);PATCH(17701420);PATCH(17701428);PATCH(17702112);PATCH(17702384);PATCH(17702472);gg.clearResults();gg.clearList();gg.toast("☑️تم تفعيل الحمايه☑️");end function MULTI() if (MH==v8) then MCH=gg.choice({"ضربات متعدده {عاديه}","ضربات متعدده {سريعه}"},nil,"اختر ما تريد :\n");if (MCH==nil) then else if (MCH==1) then if (MH==v8) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(21592660);PATCH(21592988);PATCH(21354240);PATCH(21353976);PATCH(21354112);PATCH(20393580);PATCH(20392688);PATCH(20392984);PATCH(20216132);PATCH(26113020);PATCH(25241644);PATCH(25245756);gg.toast("تم تفعيل ضربات متعدده {عاديه}☑️");MH=on;end end if (MCH==2) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(21592660,v7("\139\219\53\165\235\137\158\254\168\65\165\234\137\233\255\221","\175\187\235\113\149\217\188"));PATCH(21592988,v7("\108\255\165\28\177\44\41\25\140\209\28\176\44\94\24\249","\24\92\207\225\44\131\25"));PATCH(21354240);PATCH(21353976);PATCH(21354112);PATCH(20393580);PATCH(20392688);PATCH(20392984);PATCH(20216132);PATCH(26113020);PATCH(25241644);PATCH(25245756);gg.toast("تم تفعيل ضربات متعدده {سريعه}  ☑️");MH=on;end end elseif (MH==on) then PATCH(21592988,v7("\109\245\248\28\72\61\27\129\248\104\74","\29\43\179\216\44\123"));PATCH(21592660,v7("\152\129\96\28\155\153\113\110\253\255\3","\44\221\185\64"));gg.toast("❎تم إلغاء تنشيط اختراق الضربات المتعددة❎");MH=v8;end end function AURA() if (UK==v8) then Aura=gg.choice({"ملكي ما يوقف","ملكي ليس مستمر"},nil,"اختر ما تريد");if (Aura==nil) then else if (Aura==1) then if (UK==v8) then gg.alert("لا تستخدم سكلات كثير عشان ما يجيك لاق");gg.clearResults();gg.clearList();PATCH(21539240);PATCH(22126520);PATCH(22133524);PATCH(22133548);PATCH(21578000,v7("\83\183\8\15\35\65\191\24\31\38\83\167\107\15\51\81\180\8\10\85\65\195\30","\19\97\135\40\63"));PATCH(22133556);PATCH(22133640);PATCH(22133720);PATCH(22133736);PATCH(22166100);PATCH(22196264);PATCH(22196336);PATCH(21765100,v7("\252\12\115\107\127\113\246\12\115\31\125\113\141\12\115\107\124\113\251\122\115\31\121","\81\206\60\83\91\79"));PATCH(22197484,v7("\28\251\144\34\127\131\21\244\14\143\130\50\12\147\13\244\29\235\133\84\111\231\27","\196\46\203\176\18\79\163\45"));PATCH(21761860,v7("\234\114\62\78\116\187\183\232\98\90\76\100\216\191\248\114\45\94\113\221\175\156\116","\143\216\66\30\126\68\155"));PATCH(22197456,v7("\248\152\77\155\149\227\143\177\234\236\95\139\230\243\151\177\249\136\88\237\133\135\129","\129\202\168\109\171\165\195\183"));PATCH(22197428,v7("\112\8\119\136\142\84\190\114\24\19\138\158\55\182\98\8\100\152\139\50\166\6\14","\134\66\56\87\184\190\116"));PATCH(21753632,v7("\110\97\73\235\73\171\121\101\124\21\91\251\58\187\97\101\111\113\92\157\89\207\119","\85\92\81\105\219\121\139\65"));PATCH(21755900,v7("\175\227\16\21\44\159\165\227\16\97\46\159\222\227\16\21\47\159\168\149\16\97\42","\191\157\211\48\37\28"));PATCH(21750640,v7("\141\79\180\76\106\159\71\164\92\30\141\95\215\76\122\143\76\180\73\28\159\59\162","\90\191\127\148\124"));PATCH(21750480,v7("\42\215\110\71\40\199\118\71\56\163\124\87\91\215\110\71\43\199\123\49\56\163\120","\119\24\231\78"));PATCH(21750372,v7("\208\125\229\26\140\0\73\210\109\129\24\156\99\65\194\125\246\10\137\102\81\166\123","\113\226\77\197\42\188\32"));PATCH(21642472,v7("\104\70\180\229\106\86\172\229\122\50\166\245\25\70\180\229\105\86\161\147\122\50\162","\213\90\118\148"));PATCH(21642448,v7("\9\126\244\6\29\27\118\228\22\105\9\110\151\6\13\11\125\244\3\107\27\10\226","\45\59\78\212\54"));PATCH(21643480,v7("\66\6\195\219\214\110\245\160\80\114\209\203\165\126\237\160\67\22\214\173\198\10\251","\144\112\54\227\235\230\78\205"));PATCH(21642508,v7("\225\120\79\172\128\27\235\120\79\216\130\27\144\120\79\172\131\27\230\14\79\216\134","\59\211\72\111\156\176"));PATCH(21642540,v7("\28\215\163\125\30\199\187\125\14\163\177\109\109\215\163\125\29\199\182\11\14\163\181","\77\46\231\131"));PATCH(21642476,v7("\232\4\246\16\234\20\238\16\250\112\228\0\153\4\246\16\233\20\227\102\250\112\224","\32\218\52\214"));PATCH(22190188,v7("\28\71\113\248\161\240\29\10\14\51\99\232\210\224\5\10\29\87\100\142\177\148\19","\58\46\119\81\200\145\208\37"));PATCH(19989252,v7("\121\220\112\252\249\253\110\123\204\20\254\233\158\102\107\220\99\236\252\155\118\15\218","\86\75\236\80\204\201\221"));gg.sleep(1666);gg.toast("تم تفعيل ملكي ما يوقف ☑️");gg.clearList();gg.clearResults();gg.alert("اذا كنت تريد اصلاح بعض اللاق فعل بعض التفعيلات مثل اخفاء رقم الضرر واخفاء رقم الهيل والغاء هاك السكور");UK=on;end end if (Aura==2) then if (UK==v8) then PATCH(19868456);PATCH(20175108);PATCH(20181500);PATCH(20181508);PATCH(21063728);PATCH(21955996);PATCH(21885408);PATCH(21942200);PATCH(21942232);PATCH(22173520);PATCH(22144536);PATCH(22144804);PATCH(17153548);PATCH(20121500);PATCH(20121468);PATCH(20151948);PATCH(20181248);PATCH(20050372);PATCH(20052648);PATCH(19988268,v7("\32\17\55\213\174\203\42\17\55\161\172\203\81\17\55\213\173\203\39\103\55\161\168","\235\18\33\23\229\158"));PATCH(19989252,v7("\2\234\129\235\0\250\153\235\16\158\147\251\115\234\129\235\3\250\148\157\16\158\151","\219\48\218\161"));PATCH(21991892,v7("\182\33\60\25\139\15\184\180\49\88\27\155\108\176\164\33\47\9\142\105\160\192\39","\128\132\17\28\41\187\47"));gg.sleep(1500);gg.clearResults();gg.clearList();gg.toast("☑️تم تفعيل الهاتم إلغاء تنشيط☑️");UK=on;end end end elseif (UK==on) then PATCH(21578000,v7("\39\100\70\106\123\65\99\34\122\123\89\114\32\111\29\84\97\70\106\12\65\19\95","\61\97\82\102\90"));PATCH(19988268,v7("\252\126\235\24\151\23\74\90\236\125\242","\105\204\78\203\43\167\55\126"));PATCH(19989252,v7("\245\250\99\63\67\68\147\1\229\136\7","\49\197\202\67\126\115\100\167"));PATCH(21991892,v7("\103\11\159\126\216\22\10\102\27\140\112","\62\87\59\191\73\224\54"));UK=v8;gg.toast("❎تم الغاء تنشيط الهاكي الملكي❎");end end function LONG() local v26={16335612,16335616,16335620,16335624};if (LG==v8) then local v36=gg.prompt({"دخل المدى اللي تريده [1;50]"},nil,{v7("\233\23\247\203\226\16","\169\135\98\154")});if (v36==nil) then gg.toast("تم إغلاق القائمة");else local v41=v36[1];for v42=1,4 do PATCH(v7("\199\126\38\65\243\58\220\210\57\55\91","\168\171\23\68\52\157\83"),v26[v42],v41,gg.TYPE_FLOAT);end gg.toast("تم تفعيل هاك الضرب من بعيد ☑️");LG=on;end else local v37={16335612,16335616,16335620,16335624};for v40=1,4 do PATCH(v7("\248\120\247\184\43\36\147\237\63\230\162","\231\148\17\149\205\69\77"),v37[v40],v7("\208\247\135\171\7\191\216\247\135\168\113","\159\224\199\167\155\55"));end gg.toast("تم الغاء تنشيط هاك الضرب من بعيد❎");LG=v8;end end function NFM() if (FLAG==v8) then gg.clearResults();gg.clearList();PATCH(21642460,v7("\165\163\124\130\167\179\100\130\183\215\110\146\212\163\124\130\164\179\105\244\183\215\106","\178\151\147\92"));PATCH(21761764,v7("\222\173\12\98\66\12\34\220\189\104\96\82\111\42\204\173\31\114\71\106\58\168\171","\26\236\157\44\82\114\44"));PATCH(21827532,v7("\120\126\149\11\122\110\141\11\106\10\135\27\9\126\149\11\121\110\128\125\106\10\131","\59\74\78\181"));gg.clearResults();gg.clearList();gg.toast("تم تفعيل الغاء انميشن سحب الاعلام ☑️");FLAG=on;else PATCH(21642460,v7("\119\137\26\10\227\101\137\10\26\230\119\145\10\2\243\125\133\26\10\226\101\130\3","\211\69\177\58\58"));PATCH(21761764,v7("\145\177\57\165\207\139\230\192\57\211\177\139\145\182\57\162\203\139\231\180\57\212\176","\171\215\133\25\149\137"));PATCH(21827532,v7("\196\238\114\169\205\112\222\26\161\158\22\186\202\20\188\17\178\136\98\171\175\102\216","\34\129\168\82\154\143\80\156"));gg.toast("تم تعطيل الغاء انميشن سحب الاعلام ❎");FLAG=v8;end end function GMSPEED() if (GameSpeed==v8) then GAMES=gg.choice({"سرعة معتدلة","سرعة متوسطة ","سرعة عالية"},nil,"اختر سرعة اللعبة التي تريدها\n===================================");if (GAMES==nil) then gg.toast("تم إغلاق القائمة");else if (GAMES==1) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\215\226\115\83\29\14\209\167\242\102\89\8\107\217\197\144\98\75\105\25\201\210\224\115\91\24\14\217\213\242\97\92\8\31\172\197\145\99\75\24\29\201\208\148\115\47\30","\233\229\210\83\107\40\46"));gg.clearResults();gg.clearList();gg.toast("تم تفعيل هاك سرعة اللعبه {معتدل}☑️");GameSpeed=on;end end if (GAMES==2) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\149\18\114\128\83\129\26\100\150\84\147\2\106\134\69\227\27\114\247\82\129\21\96\150\85\145\2\98\134\69\147\21\114\135\32\129\97\98\150\85\146\2\103\240\69\229\20","\101\161\34\82\182"));gg.clearResults();gg.clearList();gg.toast("تم تفعيل هاك سرعة اللعبه {المتوسط}☑️");GameSpeed=on;end end if (GAMES==3) then if (GameSpeed==v8) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\201\93\25\221\248\162\218\13\168\92\11\190\137\178\194\11\187\77\120\169\155\181\208\110\184\93\25\174\139\162\208\121\168\92\124\190\248\178\194\126\187\77\12\216\155\198\212","\78\136\109\57\158\187\130\226"));gg.clearResults();gg.clearList();gg.toast("تم تفعيل هاك سرعة اللعبه {العالي}☑️");GameSpeed=on;end end end elseif (GameSpeed==on) then gg.clearResults();gg.clearList();Bypass();PATCH(44785372,v7("\24\108\185\166\28\127\219\215\126\30\160\177\109\108\185\168\29\127\169\161\126\29\169\177\104\111\185\164\108\127\173\161\126\25\160\177\31\111\185\161\110\127\169\161\126\29\172","\145\94\95\153"));gg.clearResults();gg.clearList();gg.toast("تم الغاء هاك سرعة اللعبة❎");GameSpeed=v8;end end function SPEED() if (speed==v8) then SPD=gg.choice({"سرعة معتدلة","سرعة متوسطة ","سرعة عالية"},nil,"اختر سرعة اللاعب\n ==================================");if (SPD==nil) then gg.toast("تم إغلاق القائمة");else if (SPD==1) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\173\157\84\132\30\247\175\156\84\132\107\247\222\157\84\133\29\247\168\235\84\241\24","\215\157\173\116\181\46"));gg.clearResults();gg.clearList();gg.toast("تم تنشيط هاك سرعة اللاعب☑️");speed=on;end end if (SPD==2) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536);gg.sleep(1000);gg.clearResults();gg.clearList();gg.toast("تم تنشيط هاك سرعة اللاعب☑️");speed=on;end end if (SPD==3) then if (speed==v8) then gg.clearList();gg.clearResults();Bypass();PATCH(22122536,v7("\101\228\203\163\138\117\230\222\178\139\16\244\168\162\154\101\231\203\167\252\117\144\221","\186\85\212\235\146"));gg.clearResults();gg.clearList();gg.toast("تم تنشيط هاك سرعة اللاعب☑️");speed=on;end end end elseif (speed==on) then PATCH(22122536,v7("\231\217\86\174\31\174\9\231\193\48\221\121\200\12\130\209\65\190\105\190\24\228\216","\56\162\225\118\158\89\142"));gg.toast("تمت اعادة سرعه اللاعب❎");speed=v8;end end function NSDMG() if (SAND==v8) then gg.clearResults();gg.clearList();PATCH(21641756);PATCH(21641788);PATCH(21641820);PATCH(21749952);PATCH(21750252);PATCH(21748684);PATCH(19375956);PATCH(21624756);PATCH(21744792);PATCH(22193748);gg.clearResults();gg.clearList();gg.toast("تم تفعيل الغاء ضرر الاعصار ☑️");SAND=on;else gg.clearResults();gg.clearList();PATCH(19375956,v7("\122\80\128\250\113\152\126\32\128\142\123\152\122\86\128\248\0\152\12\84\128\142\123","\184\60\101\160\207\66"));PATCH(21624756,v7("\23\164\60\236\98\194\44\238\113\166\45\252\20\219\60\238\98\194\44\237\113\212\88","\220\81\226\28"));PATCH(21744792,v7("\53\243\194\216\185\135\67\134\194\223\187\135\54\246\194\168\185\135\67\133\194\221\206","\167\115\181\226\155\138"));PATCH(22193748,v7("\196\4\167\127\40\49\150\179\98\195\13\59\84\159\162\112\180\28\43\32\134\180\6","\166\130\66\135\60\27\17"));gg.clearResults();gg.clearList();gg.toast("تم تعطيل الغاء ضرر الاعصار ❎");SAND=v8;end end function SCORE() gg.clearResults();gg.clearList();PATCH(19838932);PATCH(19834492);PATCH(21636872);PATCH(21636884);PATCH(21637464);PATCH(21639932);PATCH(21639992);PATCH(21640528);PATCH(21641308);PATCH(21873116);PATCH(22118644);PATCH(22119844);PATCH(22118276);PATCH(19401344);PATCH(19400616);PATCH(19406076);PATCH(19402612);PATCH(19413248);PATCH(20054776);PATCH(20202728);PATCH(20917608);PATCH(21727548);PATCH(21740060);PATCH(21739768);PATCH(22195532);PATCH(22189772);PATCH(22192500);PATCH(22205580);PATCH(22205644);PATCH(22193712);PATCH(22207788);PATCH(22190820);PATCH(22204636);PATCH(22205288);PATCH(22207220);PATCH(22193688);gg.clearResults();gg.clearList();gg.toast("تم تفعيل تعطيل هاك السكور☑️");end function JUMP() if (NIGA==v8) then PATCH(22144148);gg.toast("تم الغاء القفز☑️");NIGA=on;else PATCH(22144148,v7("\98\108\142\86\99\4\26\159\53\20\21","\80\36\42\174\21"));gg.toast("تم إرجاع ميزة القفز❎");NIGA=v8;end end function STOP() if (AI==v8) then gg.clearResults();gg.clearList();PATCH(21435296,v7("\28\64\119\42\30\80\111\42\14\52\101\58\109\64\119\42\29\80\98\92\14\52\97","\26\46\112\87"));PATCH(21458052,v7("\235\115\235\36\239\255\29\228\249\7\249\52\156\239\5\228\234\99\254\82\255\155\19","\212\217\67\203\20\223\223\37"));PATCH(21458420,v7("\232\221\232\130\234\205\240\130\250\169\250\146\153\221\232\130\233\205\253\244\250\169\254","\178\218\237\200"));PATCH(21977932,v7("\228\229\166\128\230\245\190\128\246\145\180\144\149\229\166\128\229\245\179\246\246\145\176","\176\214\213\134"));gg.clearResults();gg.clearList();gg.toast("تم تفعيل هاك توقيف البوتات☑️");AI=on;else gg.clearResults();gg.clearList();PATCH(21435296,v7("\164\253\246\132\248\22\13\167\237\229\141","\57\148\205\214\180\200\54"));PATCH(21458052,v7("\52\219\117\108\37\82\173\103\116\82\67\189\19\108\54\65\174\117\100\38\82\219\108","\22\114\157\85\84"));PATCH(21458420,v7("\226\237\83\144\14\182\248\150\139\55\149\29\208\254\132\152\64\132\13\166\232\226\146","\200\164\171\115\164\61\150"));PATCH(21977932,v7("\152\160\67\21\165\254\165\38\5\165\230\180\37\22\195\233\214\67\21\210\254\213\90","\227\222\148\99\37"));gg.clearResults();gg.clearList();gg.toast("تم الغاء تنشيط توقيف البوتات❎");AI=v8;end end function SCD() if (CD==v8) then PATCH(21814436);PATCH(21793380);gg.toast("تم تفعيل اختراق السكلات لا نهائيه☑️");CD=on;else PATCH(21814436,v7("\21\116\18\162\170\115\2\0\182\221\98","\153\83\50\50\150"));PATCH(21793380,v7("\123\80\51\72\32\235\29\9\54\87\77","\45\61\22\19\124\19\203"));gg.toast("تم ايقاف تنشيط الهاك الاسكلات اللانهائيه❎");CD=v8;end end function DMG() if (HIDEDMG==v8) then gg.clearResults();gg.clearList();PATCH(21916504);PATCH(21915352);PATCH(21921888);PATCH(21905972);gg.clearResults();gg.clearList();gg.toast("اخفاء رقم الضرر (تم التفعيل)☑️");HIDEDMG=on;else gg.clearResults();gg.clearList();PATCH(21916504,v7("\231\52\77\214\81\48\233\146\82\41\164","\217\161\114\109\149\98\16"));PATCH(21915352,v7("\52\3\120\44\154\52\67\1\120\90\228","\20\114\64\88\28\220"));PATCH(21921888,v7("\20\32\146\228\222\144\236\105\65\244\151","\221\81\97\178\212\152\176"));PATCH(21905972,v7("\156\193\93\171\66\141\183\77\187\77\156","\122\173\135\125\155"));gg.clearResults();gg.clearList();gg.toast("اخفاء رقم الضرر (تم الالغاء)❎");HIDEDMG=v8;end end function Heal() gg.clearResults();gg.clearList();PATCH(21090656);PATCH(21091528);PATCH(21977292);PATCH(21863436);PATCH(21863444);PATCH(21905972);PATCH(22188664);PATCH(22188872);PATCH(22189720);PATCH(22192388);PATCH(22193632);PATCH(22204212);gg.clearResults();gg.clearList();gg.toast("تم تفعيل اخفاء رقم الهيل☑️");end function REPORT() gg.clearResults();gg.clearList();PATCH(22969952);PATCH(22969892);PATCH(22969804);PATCH(22969756);PATCH(22969780);PATCH(18205984);PATCH(18205896);PATCH(18205096);PATCH(18205700);PATCH(18205036);PATCH(18205028);PATCH(15775120);PATCH(15767428);PATCH(15775088);PATCH(22956880);PATCH(15765808);PATCH(22955912);PATCH(22927144);PATCH(22985604);PATCH(22985472);PATCH(22889368,v7("\212\145\64\233\111\113\144\212\129\36\235\127\18\152\196\145\83\249\106\23\136\160\151","\168\228\161\96\217\95\81"));PATCH(22889440,v7("\139\129\110\12\127\23\131\129\110\120\125\23\248\129\110\12\124\23\142\247\110\120\121","\55\187\177\78\60\79"));PATCH(29750492);PATCH(29750468);gg.clearResults();gg.clearList();gg.toast("تم تفعيل حظر البلاغات");end while true do if gg.isVisible(true) then AGYT=1;gg.setVisible(false);end if (AGYT==1) then ARABIC();end end
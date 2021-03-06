USE [kodexdb]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9B0BF2CF-77DE-49A5-80DB-EBE60ED47F8F', N'brianmkoser@gmail.com', N'BRIANMKOSER@GMAIL.COM', N'brianmkoser@gmail.com', N'BRIANMKOSER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBpKLA17OX1Bratblv1HwkVycsQ6LTxwl+DK4tX5l5x0zRRNAtTT4xAZw9+uF6RxEA==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[author] ON 

INSERT [dbo].[author] ([id], [fullname], [firstname], [AspNetUserId]) VALUES (1, N'kodex', N'kodex', NULL)
INSERT [dbo].[author] ([id], [fullname], [firstname], [AspNetUserId]) VALUES (2, N'Brian Koser', N'Brian', N'9B0BF2CF-77DE-49A5-80DB-EBE60ED47F8F')
INSERT [dbo].[author] ([id], [fullname], [firstname], [AspNetUserId]) VALUES (3, N'Melissa Koser', N'Melissa', NULL)
INSERT [dbo].[author] ([id], [fullname], [firstname], [AspNetUserId]) VALUES (4, N'Lydia Koser', N'Lydia', NULL)
INSERT [dbo].[author] ([id], [fullname], [firstname], [AspNetUserId]) VALUES (5, N'Amber Koser', N'Amber', NULL)
SET IDENTITY_INSERT [dbo].[author] OFF
SET IDENTITY_INSERT [dbo].[authorhistory] ON 

INSERT [dbo].[authorhistory] ([id], [authorid], [bio], [enddate]) VALUES (1, 2, N'Christian. Husband. Father. Reader. Writer. Programmer. Brian Koser juggles many hats. When he’s not mixing metaphors, you might find him playing a modern board game, explaining why you’re wrong, or writing in the third person.', NULL)
INSERT [dbo].[authorhistory] ([id], [authorid], [bio], [enddate]) VALUES (13, 3, N'Melissa Koser is a housewife by day, taking care of a baby and keeping a house in order. By night, she’s a housewife taking care of a baby and keeping her house and husband in order. In the midst of all that, she still finds time to nerd over games, books, and TV shows.', NULL)
INSERT [dbo].[authorhistory] ([id], [authorid], [bio], [enddate]) VALUES (14, 4, N'Lydia is the newest Koser, and ar­guably the cutest. Some of her fa­vorite things are wa­ter­melon, re­mote con­trols, and rain.', NULL)
SET IDENTITY_INSERT [dbo].[authorhistory] OFF
SET IDENTITY_INSERT [dbo].[posttype] ON 

INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (1, N'article', N'Article', N'articles')
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (2, N'note', N'Note', N'notes')
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (3, N'album', N'Photo Album', N'albums')
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (4, N'recipe', N'Recipe', N'recipes')
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (5, N'video', N'Video', N'videos')
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (6, N'bookReview', N'Book Review', NULL)
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (7, N'productReview', N'Product Review', NULL)
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (8, N'movieReview', N'Movie Review', NULL)
INSERT [dbo].[posttype] ([id], [code], [name], [url]) VALUES (9, N'boardGameReview', N'Board Game Review', NULL)
SET IDENTITY_INSERT [dbo].[posttype] OFF
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (2, 1, N'Adulthood and Maturity', N'adulthood-and-maturity', N'article/2014/03/11/1/adulthood-and-maturity', N'<p>Children are always watching their parents. I remember watching my dad as he watched the nightly news on TV. I would sit there and think, “Why would you watch the news when you could watch cartoons? When I’m an adult, I’m going to stay up late and watch cartoons.”</p>

<figure>
    <img alt="Looney Tunes logo" src="http://cdn.koser.us/img/journal/2014-03-11-looney-tunes.png">
    <figcaption>Looney Tunes title card</figcaption>
</figure>

<p>That was many moons ago. The older I get, the more I look back at my past self and realize how immature I was (I Cor. 13:11). But I’ve never thought that I was immature; it’s always past Brian that was immature. Of course, a few years later, I realize that what I thought was mature was still young and immature (this time I really am mature though!).</p>

<p>The same goes with “old”. There’s a direct correlation between my age and my definition of “old”. I remember in grade school thinking high schoolers were old. Now I lump high schoolers in to the “kids” designation. The same cycle with college students and college graduates. Now my definition of old is “has grandchildren”, but I’m pretty sure I’ll be changing that definition eventually.</p>

<p>I assume that this cycle continues your whole life. You never feel old, but you always feel mature. You never feel like you know exactly what to do next. And yet, somewhere along the way you become an adult, though there’s not a day where you wake up and think, “Now I’m an adult.” </p>

<p>When I was planning my last vacation, I stopped and thought, “This is something my parents did. When they were my age. My parents were just like me.” And it hit me: adults just make it up as they go along. Nobody knows exactly what to do next; everyone gives it their best shot, but nobody <em>knows</em>. And you might never feel like an adult: because you thought adults were so different from you, you expected to feel differently when it happened to you. But you won’t. Everyone is just making it up as they go along.</p>

<p>But I <em>am</em> an adult. I make decisions. I plan vacations. I’m responsible for people other than myself. I can choose whether to watch the news or cartoons. And now that I’ve reached that point, now that I am an adult, now that I can choose…I stay up late and watch cartoons. Because why would you watch the news when you could watch cartoons? 😉</p>', N'Brian Koser reflects on adulthood and maturity.', CAST(N'2014-03-11T00:00:00.0000000+00:00' AS DateTimeOffset), 1, CAST(N'2014-05-21T00:00:00.0000000+00:00' AS DateTimeOffset), N'Chil­dren are al­ways watch­ing their par­ents.', NULL, 1, N'<p>Chil­dren are al­ways watch­ing their par­ents. I re­mem­ber watch­ing my dad as he watched the nightly news on TV. I would sit there and think, “Why would you watch the news when you could watch car­toons? When I’m an adult, I’m go­ing to stay up late and watch car­toons.”</p>
<figure>
    <img alt="Looney Tunes logo" src="/img/journal/looney-tunes.png">
    <figcaption>Looney Tunes title card</figcaption>
</figure>

<p>That was many moons ago. The older I get, the more I look back at my past self and re­al­ize how im­ma­ture I was (I Cor. 13:11). But I’ve never thought that I was im­ma­ture; it’s al­ways past Brian that was im­ma­ture. Of course, a few years later, I re­al­ize that what I thought was ma­ture was still young and im­ma­ture (this time I re­ally am ma­ture though!).</p>
<p>The same goes with “old”. There’s a di­rect cor­re­la­tion be­tween my age and my de­f­i­n­i­tion of “old”. I re­mem­ber in grade school think­ing high school­ers were old. Now I lump high school­ers in to the “kids” des­ig­na­tion. The same cy­cle with col­lege stu­dents and col­lege grad­u­ates. Now my de­f­i­n­i­tion of old is “has grand­chil­dren”, but I’m pretty sure I’ll be chang­ing that de­f­i­n­i­tion even­tu­ally.</p>
<p>I as­sume that this cy­cle con­tin­ues your whole life. You never feel old, but you al­ways feel ma­ture. You never feel like you know ex­actly what to do next. And yet, some­where along the way you be­come an adult, though there’s not a day where you wake up and think, “Now I’m an adult.” </p>
<p>When I was plan­ning my last va­ca­tion, I stopped and thought, “This is some­thing my par­ents did. When they were my age. My par­ents were just like me.” And it hit me: adults just make it up as they go along. No­body knows ex­actly what to do next; every­one gives it their best shot, but no­body <em>knows</em>. And you might never feel like an adult: be­cause you thought adults were so dif­fer­ent from you, you ex­pected to feel dif­fer­ently when it hap­pened to you. But you won’t. Every­one is just mak­ing it up as they go along.</p>
<p>But I <em>am</em> an adult. I make de­ci­sions. I plan va­ca­tions. I’m re­spon­si­ble for peo­ple other than my­self. I can choose whether to watch the news or car­toons. And now that I’ve reached that point, now that I am an adult, now that I can choose…I stay up late and watch car­toons. Be­cause why would you watch the news when you could watch car­toons? ??</p>', N'<p>Children are always watching their parents. I remember watching my dad as he watched the nightly news on TV. I would sit there and think, “Why would you watch the news when you could watch cartoons? When I’m an adult, I’m going to stay up late and watch cartoons.”</p>

<figure>
    <img alt="Looney Tunes logo" src="http://cdn.koser.us/img/journal/2014-03-11-looney-tunes.png">
    <figcaption>Looney Tunes title card</figcaption>
</figure>

<p>That was many moons ago. The older I get, the more I look back at my past self and realize how immature I was (I Cor. 13:11). But I’ve never thought that I was immature; it’s always past Brian that was immature. Of course, a few years later, I realize that what I thought was mature was still young and immature (this time I really am mature though!).</p>

<p>The same goes with “old”. There’s a direct correlation between my age and my definition of “old”. I remember in grade school thinking high schoolers were old. Now I lump high schoolers in to the “kids” designation. The same cycle with college students and college graduates. Now my definition of old is “has grandchildren”, but I’m pretty sure I’ll be changing that definition eventually.</p>

<p>I assume that this cycle continues your whole life. You never feel old, but you always feel mature. You never feel like you know exactly what to do next. And yet, somewhere along the way you become an adult, though there’s not a day where you wake up and think, “Now I’m an adult.” </p>

<p>When I was planning my last vacation, I stopped and thought, “This is something my parents did. When they were my age. My parents were just like me.” And it hit me: adults just make it up as they go along. Nobody knows exactly what to do next; everyone gives it their best shot, but nobody <em>knows</em>. And you might never feel like an adult: because you thought adults were so different from you, you expected to feel differently when it happened to you. But you won’t. Everyone is just making it up as they go along.</p>

<p>But I <em>am</em> an adult. I make decisions. I plan vacations. I’m responsible for people other than myself. I can choose whether to watch the news or cartoons. And now that I’ve reached that point, now that I am an adult, now that I can choose…I stay up late and watch cartoons. Because why would you watch the news when you could watch cartoons? 😉</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (3, 1, N'Christmas Letter 2014', N'christmas-letter-2014', N'article/2014/12/25/1/christmas-letter-2014', N'<p>Merry Christmas 2014!</p>
<p>Greetings to all our dear family and friends! We’ve had quite a full year, most of it fun-filled, and we praise the Lord for His goodness throughout every moment of it. Since this was our last year of working at PCC, January through June was marked by how many times we could have friends and campus kids over before we went our separate ways. One fun landmark was in April: we threw a computer-themed surprise birthday party for Brian and had a blast! Many thanks to those who came and made it such a special day.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-04-12-brians-birthday.jpg" alt="Photo from Brian’s birthday party 2014">
    <figcaption>Friends at the birthday party</figcaption>
</figure>
<p>In June we launched a small dream of ours: a recipe website, at <a href="http://koser.us/recipes">koser.us/?recipes</a>! Currently it only contains Melissa’s recipes, and the design is very basic, but in the coming years we’ll continue to make improvements. In the meantime, feel free to browse for ideas (or just for fun!).</p>
<p>It’s been a pleasure working with such fine folk at PCC, and we do miss the good work atmosphere. Brian enjoyed working in children’s church at PCC, and Melissa misses playing in the church orchestra. We also enjoyed attending a Couples’ Bible Study, taught by Dr. Dale Adkins. Our last day of work at PCC was July 18th, and we moved out the very next day. We praise the Lord for His grace in holding off the rain as we loaded the truck. Huge thanks (again!) for everyone that made it a short move—45 minutes to load the truck, and another 15 minutes to finish cleaning the house. Several of our friends also drove to our new house in Mobile, AL and helped us unload everything into the new apartment.</p>
<p>Some of our friends got married this year (woohoo!). In July we attended the wedding of Jonathan and Janae Sparks, and in August that of Andrew and Carrie Olsen. Since then, we’ve been able to keep (somewhat) in contact with our campus kids at PCC, and roughly once a month we are able to bring Megan Koser over for a weekend of relaxation.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-07-05-sparks-wedding.jpg" alt="Jonathan and Janae Sparks at their wedding reception">
    <figcaption>Jonathan &amp; Janae Sparks at their wedding reception</figcaption>
</figure>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-08-13-andrew-olsen-wedding.jpg" alt="Andrew Olsen">
    <figcaption>Andrew Olsen…one of his better pictures 😉</figcaption>
</figure>
<p>God has led us to <a href="http://www.crossroadsbaptistmobile.com">Crossroads Baptist Church</a>, a wonderful church with caring people. The fellowship meals each month have helped us in getting to know our new church family, and already we feel right at home! There are also many service opportunities, and we’re excited to see what the Lord will do in this ministry.</p>
<p>These later months have been full of family (always a good thing!). In October we got to spend a few days with Melissa’s parents, as well as introduce them to our church family. In November we spent Thanksgiving with nearly all of Brian’s family, and we enjoyed watching Megan Koser perform in Pirates of Penzance at PCC.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-11-29-pcc-with-danny.jpg" alt="Danny Koser">
    <figcaption>Danny, Brian’s 21-month-old brother</figcaption>
</figure>
<p>December has so far been a busy month with decorating, making goodies, preparing for a piano recital, and making more goodies. In the middle of this we took a weekend to celebrate our third anniversary with horseback riding, followed by dinner at the Oyster House. The following weekend Megan Koser spent a few days with us after her semester at college was over, and willingly did a photo shoot for us. Thanks a bunch, Megan!</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-12-13-christmas-photos-at-park.jpg" alt="Brian and Melissa at park">
    <figcaption>Megan’s photography skills making us look good</figcaption>
</figure>
<p>Last Christmas was spent with Brian’s family (including a surprise visit from Matt and Lindsey Rhoades), so this year we’ll be flying down to Honduras to celebrate the New Year with Melissa’s family.</p>
<p>If you’ll be anywhere near Mobile in 2015, please stop by and visit! And please make use of our guest bedroom; we wouldn’t want it to go to waste. 😊 Looking forward to seeing many of you this coming year!</p>', N'The 2014 Christmas Letter for Brian and Melissa Koser', CAST(N'2014-12-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Merry Christmas 2014!', N'http://cdn.koser.us/img/journal/2014-12-25-christmas-2014.jpg', 1, N'<p>Merry Christmas 2014!</p></p>
<p>Greet­ings to all our dear fam­ily and friends! We’ve had quite a full year, most of it fun-filled, and we praise the Lord for His good­ness through­out every mo­ment of it. Since this was our last year of work­ing at PCC, Jan­u­ary through June was marked by how many times we could have friends and cam­pus kids over be­fore we went our sep­a­rate ways. One fun land­mark was in April: we threw a com­puter-themed sur­prise birth­day party for Brian and had a blast! Many thanks to those who came and made it such a spe­cial day.</p>
<figure>
    <img src="/img/journal/2014-04-12-brians-birthday.jpg" alt="Photo from Brian''s birthday party 2014">
    <figcaption>Friends at the birthday party</figcaption>
</figure>

<p>In June we launched a small dream of ours: a recipe web­site, at <a href="http://koser.us/recipes">koser.us/?recipes</a>! Cur­rently it only con­tains Melis­sa’s recipes, and the de­sign is very ba­sic, but in the com­ing years we’ll con­tinue to make im­prove­ments. In the mean­time, feel free to browse for ideas (or just for fun!).</p>
<p>It’s been a plea­sure work­ing with such fine folk at PCC, and we do miss the good work at­mos­phere. Brian en­joyed work­ing in chil­dren’s church at PCC, and Melissa misses play­ing in the church or­ches­tra. We also en­joyed at­tend­ing a Cou­ples’ Bible Study, taught by Dr. Dale Ad­kins. Our last day of work at PCC was July 18th, and we moved out the very next day. We praise the Lord for His grace in hold­ing off the rain as we loaded the truck. Huge thanks (again!) for every­one that made it a short move—45 min­utes to load the truck, and an­other 15 min­utes to fin­ish clean­ing the house. Sev­eral of our friends also drove to our new house in Mo­bile, AL and helped us un­load every­thing into the new apart­ment.</p>
<p>Some of our friends got mar­ried this year (woohoo!). In July we at­tended the wed­ding of Jonathan and Janae Sparks, and in Au­gust that of An­drew and Car­rie Olsen. Since then, we’ve been able to keep (some­what) in con­tact with our cam­pus kids at PCC, and roughly once a month we are able to bring Megan Koser over for a week­end of re­lax­ation.</p>
<figure>
    <img src="/img/journal/2014-07-05-sparks-wedding.jpg" alt="Jonathan and Janae Sparks at their wedding reception">
    <figcaption>Jonathan &amp; Janae Sparks at their wedding reception</figcaption>
</figure>

<figure>
    <img src="/img/journal/2014-08-13-andrew-olsen-wedding.jpg" alt="Andrew Olsen">
    <figcaption>Andrew Olsen…one of his better pictures ??</figcaption>
</figure>

<p>God has led us to <a href="http://www.crossroadsbaptistmobile.com">Cross­roads Bap­tist Church</a>, a won­der­ful church with car­ing peo­ple. The fel­low­ship meals each month have helped us in get­ting to know our new church fam­ily, and al­ready we feel right at home! There are also many ser­vice op­por­tu­ni­ties, and we’re ex­cited to see what the Lord will do in this min­istry.</p>
<p>These later months have been full of fam­ily (al­ways a good thing!). In Oc­to­ber we got to spend a few days with Melis­sa’s par­ents, as well as in­tro­duce them to our church fam­ily. In No­vem­ber we spent Thanks­giv­ing with nearly all of Bri­an’s fam­ily, and we en­joyed watch­ing Megan Koser per­form in Pi­rates of Pen­zance at PCC.</p>
<figure>
    <img src="/img/journal/2014-11-29-pcc-with-danny.jpg" alt="Danny Koser">
    <figcaption>Danny, Brian’s 21-month-old brother</figcaption>
</figure>

<p>De­cem­ber has so far been a busy month with dec­o­rat­ing, mak­ing good­ies, prepar­ing for a pi­ano recital, and mak­ing more good­ies. In the mid­dle of this we took a week­end to cel­e­brate our third an­niver­sary with horse­back rid­ing, fol­lowed by din­ner at the Oys­ter House. The fol­low­ing week­end Megan Koser spent a few days with us af­ter her se­mes­ter at col­lege was over, and will­ingly did a photo shoot for us. Thanks a bunch, Megan!</p>
<figure>
    <img src="/img/journal/2014-12-13-christmas-photos-at-park.jpg" alt="Brian and Melissa at park">
    <figcaption>Megan’s photography skills making us look good</figcaption>
</figure>

<p>Last Christ­mas was spent with Bri­an’s fam­ily (in­clud­ing a sur­prise visit from Matt and Lind­sey Rhoades), so this year we’ll be fly­ing down to Hon­duras to cel­e­brate the New Year with Melis­sa’s fam­ily.</p>
<p>If you’ll be any­where near Mo­bile in 2015, please stop by and visit! And please make use of our guest bed­room; we would­n’t want it to go to waste. ?? Look­ing for­ward to see­ing many of you this com­ing year,</p>
<p class="signature">Brian &amp; Melissa Koser</p>', N'<p>Merry Christmas 2014!</p>
<p>Greetings to all our dear family and friends! We’ve had quite a full year, most of it fun-filled, and we praise the Lord for His goodness throughout every moment of it. Since this was our last year of working at PCC, January through June was marked by how many times we could have friends and campus kids over before we went our separate ways. One fun landmark was in April: we threw a computer-themed surprise birthday party for Brian and had a blast! Many thanks to those who came and made it such a special day.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-04-12-brians-birthday.jpg" alt="Photo from Brian’s birthday party 2014">
    <figcaption>Friends at the birthday party</figcaption>
</figure>
<p>In June we launched a small dream of ours: a recipe website, at <a href="http://koser.us/recipes">koser.us/?recipes</a>! Currently it only contains Melissa’s recipes, and the design is very basic, but in the coming years we’ll continue to make improvements. In the meantime, feel free to browse for ideas (or just for fun!).</p>
<p>It’s been a pleasure working with such fine folk at PCC, and we do miss the good work atmosphere. Brian enjoyed working in children’s church at PCC, and Melissa misses playing in the church orchestra. We also enjoyed attending a Couples’ Bible Study, taught by Dr. Dale Adkins. Our last day of work at PCC was July 18th, and we moved out the very next day. We praise the Lord for His grace in holding off the rain as we loaded the truck. Huge thanks (again!) for everyone that made it a short move—45 minutes to load the truck, and another 15 minutes to finish cleaning the house. Several of our friends also drove to our new house in Mobile, AL and helped us unload everything into the new apartment.</p>
<p>Some of our friends got married this year (woohoo!). In July we attended the wedding of Jonathan and Janae Sparks, and in August that of Andrew and Carrie Olsen. Since then, we’ve been able to keep (somewhat) in contact with our campus kids at PCC, and roughly once a month we are able to bring Megan Koser over for a weekend of relaxation.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-07-05-sparks-wedding.jpg" alt="Jonathan and Janae Sparks at their wedding reception">
    <figcaption>Jonathan &amp; Janae Sparks at their wedding reception</figcaption>
</figure>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-08-13-andrew-olsen-wedding.jpg" alt="Andrew Olsen">
    <figcaption>Andrew Olsen…one of his better pictures 😉</figcaption>
</figure>
<p>God has led us to <a href="http://www.crossroadsbaptistmobile.com">Crossroads Baptist Church</a>, a wonderful church with caring people. The fellowship meals each month have helped us in getting to know our new church family, and already we feel right at home! There are also many service opportunities, and we’re excited to see what the Lord will do in this ministry.</p>
<p>These later months have been full of family (always a good thing!). In October we got to spend a few days with Melissa’s parents, as well as introduce them to our church family. In November we spent Thanksgiving with nearly all of Brian’s family, and we enjoyed watching Megan Koser perform in Pirates of Penzance at PCC.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-11-29-pcc-with-danny.jpg" alt="Danny Koser">
    <figcaption>Danny, Brian’s 21-month-old brother</figcaption>
</figure>
<p>December has so far been a busy month with decorating, making goodies, preparing for a piano recital, and making more goodies. In the middle of this we took a weekend to celebrate our third anniversary with horseback riding, followed by dinner at the Oyster House. The following weekend Megan Koser spent a few days with us after her semester at college was over, and willingly did a photo shoot for us. Thanks a bunch, Megan!</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2014-12-13-christmas-photos-at-park.jpg" alt="Brian and Melissa at park">
    <figcaption>Megan’s photography skills making us look good</figcaption>
</figure>
<p>Last Christmas was spent with Brian’s family (including a surprise visit from Matt and Lindsey Rhoades), so this year we’ll be flying down to Honduras to celebrate the New Year with Melissa’s family.</p>
<p>If you’ll be anywhere near Mobile in 2015, please stop by and visit! And please make use of our guest bedroom; we wouldn’t want it to go to waste. 😊 Looking forward to seeing many of you this coming year!</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (4, 1, N'Top Ten Punctuation Marks', N'top-ten-punctuation-marks', N'article/2015/10/24/1/top-ten-punctuation-marks', N'<p>I like punctuation marks. Why? Well…maybe because they shape language so much while going mostly unnoticed. Maybe because they’re never spoken* and their names are unknown to laymen, giving them a mysterious air. Probably just because they look nice. Here’s my favorite ten, from 10 to 1.</p>  
<h2 id="honorable-mentions">Honorable Mentions</h2>  
<h3 id="-span-class-giga-span-obelus"><span class="giga">÷</span> Obelus</h3>  
<h3 id="-span-class-giga-span-solidus"><span class="giga">/</span> Solidus</h3>  
<p>How cool are the names “obelus” and “solidus”? Answer: very.</p>  
<h2 id="-span-class-giga-span-braces"><span class="giga">{}</span> Braces</h2>  
<p>[More graceful than stodgy brackets.] (More refined than the common parentheses.) {Braces are the Audrey Hepburn of the punctuation world.}</p>  
<h2 id="-span-class-giga-span-ellipsis"><span class="giga">…</span> Ellipsis</h2>  
<p>Not three periods. See the difference? </p>  
<p><span>…</span> (ellipsis) <br>
<span>...</span> (three periods)</p>  
<p>What do you mean, what difference does it make? Pistols at dawn, sir!</p>  
<h2 id="-span-class-giga-span-pipe"><span class="giga">?</span> Pipe</h2>  
<p>I don’t really use the pipe. I’m not really sure what the pipe is for. But I feel safer knowing the pipe is there in case I ever need it.</p>  
<h2 id="-span-class-giga-span-ampersand"><span class="giga">&amp;</span> Ampersand</h2>  
<p>So the name “ampersand” comes from when “&amp;” was included at the end of the alphabet, so you would say, “X Y Z, and, per se, ‘and’” because if you said “X Y Z and ‘and’” it would sound awkward, and so the Latin phrase “per se” was added…and then it was abbreviated over time…part of the alphabet…fine, I’ll stop. Anyway, look at that swoop! Chic.</p>  
<h2 id="-span-class-giga-span-asterisk"><span class="giga">*</span> Asterisk</h2>  
<p>Some refer to the asterisk as the “splat”, which, though lacking respect, is still preferrable to “aster<strong>ick</strong>”. (To those “asterick”-sayers: please note the second “S”. And please note my stern disapproval.) My favorite asterisk is the one in the typeface Source Code Pro: <span style="font-family:''Source Code Pro''">*</span> I don’t know why, but it makes me smile every time.</p>  
<h2 id="-span-class-giga-span-guillemet"><span class="giga">»</span> Guillemet</h2>  
<p>My college English 101 professor mentioned that she used this symbol when taking notes to indicate a definition. That advice is the single-most life-changing advice—related to note-taking—I have ever received (thanks Mrs. Twigg!). Just one reason the dashing guillemet deserves a more prominent spot in our language.</p>  
<h2 id="-span-class-giga-span-cent-sign"><span class="giga">¢</span> Cent sign</h2>  
<p>What makes the cent sign so beautiful? Is it the sublime combination of curve and straight? The swelling of nostalgia for the days of newspapers and horse-drawn carriages and top hats? The reminder of the Horatio Alger-esque rags-to-riches tales which have inspired our nation since its founding? Whatever the reason, it occupies a special place in my heart.</p>  
<h2 id="-span-class-giga-span-section-sign"><span class="giga">§</span> Section sign</h2>  
<p>It’s a crime that the section sign is not seen in more literature. We’ve sacrificed the section sign and its milieu for the sake of clarity, of conciseness. Instead of “ch. 3, § 102(a)(1), para. 4, subp. 13” we use the banal, mechanical, and sensible “1.3.1”. But at what cost to our souls? The section sign is overwrought, archaic, pretentious…and wonderful.</p>  
<h2 id="-span-class-giga-span-pilcrow"><span class="giga">¶</span> Pilcrow</h2>  
<p>Ah, the pilcrow; know today chiefly as Microsoft Word’s formatting marks icon. Best named of all punctuation. But mere words will not suffice, so I give to you a montage of pilcrows:</p>  
<figure>
    <img src="http://cdn.koser.us/img/journal/2015-10-24-pilcrows.png">
</figure>
<h2 id="-span-class-giga-span-question-mark"><span class="giga">?</span> Question mark</h2>  
<p>Unlike its workaday brother the period, the question mark does not wear out its welcome with overly-frequent visits. Unlike its melodramatic sister the exclamation mark, it does not stay out all night partying and then bang around the house obnoxiously when arriving home. The question mark is the cat that you almost forget is living with you; it occupies a happy medium, familiar but not constantly present.</p>  
<p>Its functional precision is matched by its form. The curves of the question mark speak of mystery, of the great unknown, of the riddles we ponder on stormy nights. The question mark bypasses the mind and the heart, and speaks directly to the soul. It stands alone, not in the dusty library of Tedium or atop the mountain of Narcissism, but in the grey alleyway of Ambiguity, dimly lit by the flickering lamplight of Truth. The question mark is not a king or a fool or a workman. In the Kingdom of Punctuation, the question mark is the grand vizier, the power behind the throne, content to rule from the shadows.</p>  
<p>The question mark works its craft with poise and panache. What more could you ask from a bit of punctuation? ?</p>  
<p>* Well, <a href="http://www.youtube.com/results?search_query=victor+borge+phonetic+punctuation">almost never</a>.</p>', N'Brian Koser rhapsodizes about his top ten favorite punctuation marks.', CAST(N'2015-10-24T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I like punc­tu­a­tion marks. Why? Well…maybe be­cause they shape lan­guage so much while go­ing mostly un­no­ticed. Maybe be­cause they’re never spo­ken* and their names are un­known to lay­men, giv­ing them a mys­te­ri­ous air. Prob­a­bly just be­cause th', NULL, 1, NULL, N'<p>I like punctuation marks. Why? Well…maybe because they shape language so much while going mostly unnoticed. Maybe because they’re never spoken* and their names are unknown to laymen, giving them a mysterious air. Probably just because they look nice. Here’s my favorite ten, from 10 to 1.</p>  
<h2 id="honorable-mentions">Honorable Mentions</h2>  
<h3 id="-span-class-giga-span-obelus"><span class="giga">÷</span> Obelus</h3>  
<h3 id="-span-class-giga-span-solidus"><span class="giga">/</span> Solidus</h3>  
<p>How cool are the names “obelus” and “solidus”? Answer: very.</p>  
<h2 id="-span-class-giga-span-braces"><span class="giga">{}</span> Braces</h2>  
<p>[More graceful than stodgy brackets.] (More refined than the common parentheses.) {Braces are the Audrey Hepburn of the punctuation world.}</p>  
<h2 id="-span-class-giga-span-ellipsis"><span class="giga">…</span> Ellipsis</h2>  
<p>Not three periods. See the difference? </p>  
<p><span>…</span> (ellipsis) <br>
<span>...</span> (three periods)</p>  
<p>What do you mean, what difference does it make? Pistols at dawn, sir!</p>  
<h2 id="-span-class-giga-span-pipe"><span class="giga">?</span> Pipe</h2>  
<p>I don’t really use the pipe. I’m not really sure what the pipe is for. But I feel safer knowing the pipe is there in case I ever need it.</p>  
<h2 id="-span-class-giga-span-ampersand"><span class="giga">&amp;</span> Ampersand</h2>  
<p>So the name “ampersand” comes from when “&amp;” was included at the end of the alphabet, so you would say, “X Y Z, and, per se, ‘and’” because if you said “X Y Z and ‘and’” it would sound awkward, and so the Latin phrase “per se” was added…and then it was abbreviated over time…part of the alphabet…fine, I’ll stop. Anyway, look at that swoop! Chic.</p>  
<h2 id="-span-class-giga-span-asterisk"><span class="giga">*</span> Asterisk</h2>  
<p>Some refer to the asterisk as the “splat”, which, though lacking respect, is still preferrable to “aster<strong>ick</strong>”. (To those “asterick”-sayers: please note the second “S”. And please note my stern disapproval.) My favorite asterisk is the one in the typeface Source Code Pro: <span style="font-family:''Source Code Pro''">*</span> I don’t know why, but it makes me smile every time.</p>  
<h2 id="-span-class-giga-span-guillemet"><span class="giga">»</span> Guillemet</h2>  
<p>My college English 101 professor mentioned that she used this symbol when taking notes to indicate a definition. That advice is the single-most life-changing advice—related to note-taking—I have ever received (thanks Mrs. Twigg!). Just one reason the dashing guillemet deserves a more prominent spot in our language.</p>  
<h2 id="-span-class-giga-span-cent-sign"><span class="giga">¢</span> Cent sign</h2>  
<p>What makes the cent sign so beautiful? Is it the sublime combination of curve and straight? The swelling of nostalgia for the days of newspapers and horse-drawn carriages and top hats? The reminder of the Horatio Alger-esque rags-to-riches tales which have inspired our nation since its founding? Whatever the reason, it occupies a special place in my heart.</p>  
<h2 id="-span-class-giga-span-section-sign"><span class="giga">§</span> Section sign</h2>  
<p>It’s a crime that the section sign is not seen in more literature. We’ve sacrificed the section sign and its milieu for the sake of clarity, of conciseness. Instead of “ch. 3, § 102(a)(1), para. 4, subp. 13” we use the banal, mechanical, and sensible “1.3.1”. But at what cost to our souls? The section sign is overwrought, archaic, pretentious…and wonderful.</p>  
<h2 id="-span-class-giga-span-pilcrow"><span class="giga">¶</span> Pilcrow</h2>  
<p>Ah, the pilcrow; know today chiefly as Microsoft Word’s formatting marks icon. Best named of all punctuation. But mere words will not suffice, so I give to you a montage of pilcrows:</p>  
<figure>
    <img src="http://cdn.koser.us/img/journal/2015-10-24-pilcrows.png">
</figure>
<h2 id="-span-class-giga-span-question-mark"><span class="giga">?</span> Question mark</h2>  
<p>Unlike its workaday brother the period, the question mark does not wear out its welcome with overly-frequent visits. Unlike its melodramatic sister the exclamation mark, it does not stay out all night partying and then bang around the house obnoxiously when arriving home. The question mark is the cat that you almost forget is living with you; it occupies a happy medium, familiar but not constantly present.</p>  
<p>Its functional precision is matched by its form. The curves of the question mark speak of mystery, of the great unknown, of the riddles we ponder on stormy nights. The question mark bypasses the mind and the heart, and speaks directly to the soul. It stands alone, not in the dusty library of Tedium or atop the mountain of Narcissism, but in the grey alleyway of Ambiguity, dimly lit by the flickering lamplight of Truth. The question mark is not a king or a fool or a workman. In the Kingdom of Punctuation, the question mark is the grand vizier, the power behind the throne, content to rule from the shadows.</p>  
<p>The question mark works its craft with poise and panache. What more could you ask from a bit of punctuation? ?</p>  
<p>* Well, <a href="http://www.youtube.com/results?search_query=victor+borge+phonetic+punctuation">almost never</a>.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (5, 1, N'Christmas Letter 2015', N'christmas-letter-2015', N'article/2015/12/25/1/christmas-letter-2015', N'<p>Merry Christmas 2015!</p>  
<p>Greetings to all our family and friends! It’s been another full and blessed year for us. January had an exciting start: when we returned from visiting Melissa’s family in Honduras, we discovered that a couple of rats had been using the apartment in our absence. The next few weeks were somewhat stressful as we washed and wiped everything that was out in the open, and learned to hide all our food. We were very glad to discover the rats had not gotten into any of our drawers or cupboards, which saved a ton of work. Eventually we found all their holes, sealed them, and managed to trap one rat and, er, remove its presence from the house.</p>  
<p>In June we were privileged to host missionaries, the <a href="http://kingsinafrica.com/">Jason and Ashley King family</a>, during our church’s Missions Conference. We enjoyed getting to know them and the other missionaries. The conference was a great blessing and challenge, and ended with a BBQ/?cake/?pie bake-off at our church. Melissa placed third with her prize-winning Swiss Roll Cake, dethroning many previous champs. She looks forward to placing first next year.</p>  
<p>We spent our summer vacation in Orlando, FL, attending the Dice Tower board gaming convention. For three days we enjoyed playing board games, meeting new people, participating in Dice Tower activities, and just being nerdy among others like us. We even got to play a couple games with one of the founding members of the Dice Tower! </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-06-25-dice-tower-con.jpg" alt="Brian and Melissa at Dice Tower Convention with Sam and David Healey">      
    <figcaption>Dice Tower Con! With Sam and David Healey!</figcaption>  
</figure>    
<p>The last night of the convention we attended a pirate dinner show, featuring swashbuckling acrobatics and piratical romance!</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-06-27-pirate-dinner-show.jpg" alt="Brian and Melissa at the Pirate Dinner Show">      
    <figcaption>Arr!</figcaption>  
</figure>    
<p>From June to July we got to spend a whole month with Melissa’s brother Tim before he shipped out to Japan. We had a great time of board games, movies, and just having fun. We also toured the USS Alabama, exploring throughout the entire ship.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-07-24-uss-mobile.jpg" alt="Melissa and Tim on the USS Mobile">      
    <figcaption>Tim showing off his Navy knowledge to us lubbers</figcaption>  
</figure>    
<p>Around Christmas 2014, we discovered we were going to have a baby! The wonderful ladies of Crossroads Baptist Church threw a baby shower for Melissa in August, and Mom and Megan Koser got to attend. So many wonderful gifts were given, and once again we say thank you!</p>  
<p>Our little Lydia was born September 3rd at 7 pm, weighing 7 lbs. 10 oz. and measuring 20 1/2 inches long. Brian was wonderful during labor and delivery, and the staff at Springhill Medical Center were very supportive. The birth went well with no complications, and recovery was swift. Melissa’s parents and sister were present for the birth, and Brian’s family arrived the day after. We also got to see Melissa’s Uncle Leland and Aunt Marty, and a week later her brother Dale and his family visited as well. It was a very exciting time, and we were so glad to see everyone! Many thanks again to everyone who helped us with meals and housework those first few weeks.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-09-03-lydia.jpg" alt="Lydia newly born">      
    <figcaption>Lydia on her first day</figcaption>  
</figure>    
<p>Just after Lydia was born, Brian switched to a new job. While before he was doing database work in the medical field, now he works for a consulting firm, doing many different projects in many different fields. Although he can no longer walk to work, the new office is close enough to still come home for lunch every day.</p>  
<p>Since Lydia was born, Melissa has not tried as many new or challenging recipes, preferring to stick with those that are quick and easy. However, earlier this year she did make deep dish Chicago-style pizza, <a href="http://koser.us/recipes/fried-ice-cream">fried ice cream</a>, and from-scratch <a href="http://koser.us/recipes/strawberry-glazed-buttermilk-donuts">strawberry donuts</a>. She also made some cinnamon candy for Christmas. The links lead to those recipes on our website, where you’re also probably reading this Christmas letter! Speaking of which, Brian has made a few changes to the website, improving the appearance and adding recipe tags.</p>  
<p>We’ve enjoyed getting more involved in our church this year. Melissa is now playing the piano full time. Until Lydia was born we taught the 3rd-grade class of our Wednesday night children’s Bible club and taught a Sunday morning preschool class once a month. We also got to help out with Vacation Bible School this summer, teaching lessons, songs, and Bible verses. Working with children can be challenging, but it’s always rewarding.</p>  
<p>Brian’s family was able to visit for Thanksgiving again this year, and we enjoyed a hearty meal together. We also got to watch his sister Megan perform in a production of The Scarlet Pimpernel at <abbr title="Pensacola Christian College">PCC</abbr>. </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-12-03-scarlet-pimpernel.jpg" alt="The Scarlet Pimpernel cast">      
    <figcaption>Megan and her boyfriend Josh Hutt, who played the Scarlet Pimpernel</figcaption>  
</figure>    
<p>Logan Harding took our Christmas photos; hire him to do video or photography at <a href="http://www.shadowpointmedia.com/">Shadowpoint Media</a>. Bekah Haas made Lydia’s scarf and booties; get your own at the <a href="http://www.facebook.com/softlysweet14/">Softly Sweet Facebook page</a>.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-12-06-lydia.jpg" alt="Lydia in her knit hat and scarf">      
    <figcaption>Our precious girl</figcaption>  
</figure>    
<p>Today is Christmas, and as we post this, we’re enjoying spending Christmas with Brian’s family again, in Louisiana.</p>  
<p>If you pass through Mobile in 2016, please stop by and see Lydia (we’ve found that she’s the main reason people visit nowadays 😊). Looking forward to a great 2016!</p>', N'The 2015 Christmas Letter for Brian, Melissa, and Lydia Koser', CAST(N'2015-12-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Merry Christmas 2015!', N'http://cdn.koser.us/img/journal/2015-12-06-christmas-tree.jpg', 1, NULL, N'<p>Merry Christmas 2015!</p>  
<p>Greetings to all our family and friends! It’s been another full and blessed year for us. January had an exciting start: when we returned from visiting Melissa’s family in Honduras, we discovered that a couple of rats had been using the apartment in our absence. The next few weeks were somewhat stressful as we washed and wiped everything that was out in the open, and learned to hide all our food. We were very glad to discover the rats had not gotten into any of our drawers or cupboards, which saved a ton of work. Eventually we found all their holes, sealed them, and managed to trap one rat and, er, remove its presence from the house.</p>  
<p>In June we were privileged to host missionaries, the <a href="http://kingsinafrica.com/">Jason and Ashley King family</a>, during our church’s Missions Conference. We enjoyed getting to know them and the other missionaries. The conference was a great blessing and challenge, and ended with a BBQ/?cake/?pie bake-off at our church. Melissa placed third with her prize-winning Swiss Roll Cake, dethroning many previous champs. She looks forward to placing first next year.</p>  
<p>We spent our summer vacation in Orlando, FL, attending the Dice Tower board gaming convention. For three days we enjoyed playing board games, meeting new people, participating in Dice Tower activities, and just being nerdy among others like us. We even got to play a couple games with one of the founding members of the Dice Tower! </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-06-25-dice-tower-con.jpg" alt="Brian and Melissa at Dice Tower Convention with Sam and David Healey">      
    <figcaption>Dice Tower Con! With Sam and David Healey!</figcaption>  
</figure>    
<p>The last night of the convention we attended a pirate dinner show, featuring swashbuckling acrobatics and piratical romance!</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-06-27-pirate-dinner-show.jpg" alt="Brian and Melissa at the Pirate Dinner Show">      
    <figcaption>Arr!</figcaption>  
</figure>    
<p>From June to July we got to spend a whole month with Melissa’s brother Tim before he shipped out to Japan. We had a great time of board games, movies, and just having fun. We also toured the USS Alabama, exploring throughout the entire ship.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-07-24-uss-mobile.jpg" alt="Melissa and Tim on the USS Mobile">      
    <figcaption>Tim showing off his Navy knowledge to us lubbers</figcaption>  
</figure>    
<p>Around Christmas 2014, we discovered we were going to have a baby! The wonderful ladies of Crossroads Baptist Church threw a baby shower for Melissa in August, and Mom and Megan Koser got to attend. So many wonderful gifts were given, and once again we say thank you!</p>  
<p>Our little Lydia was born September 3rd at 7 pm, weighing 7 lbs. 10 oz. and measuring 20 1/2 inches long. Brian was wonderful during labor and delivery, and the staff at Springhill Medical Center were very supportive. The birth went well with no complications, and recovery was swift. Melissa’s parents and sister were present for the birth, and Brian’s family arrived the day after. We also got to see Melissa’s Uncle Leland and Aunt Marty, and a week later her brother Dale and his family visited as well. It was a very exciting time, and we were so glad to see everyone! Many thanks again to everyone who helped us with meals and housework those first few weeks.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-09-03-lydia.jpg" alt="Lydia newly born">      
    <figcaption>Lydia on her first day</figcaption>  
</figure>    
<p>Just after Lydia was born, Brian switched to a new job. While before he was doing database work in the medical field, now he works for a consulting firm, doing many different projects in many different fields. Although he can no longer walk to work, the new office is close enough to still come home for lunch every day.</p>  
<p>Since Lydia was born, Melissa has not tried as many new or challenging recipes, preferring to stick with those that are quick and easy. However, earlier this year she did make deep dish Chicago-style pizza, <a href="http://koser.us/recipes/fried-ice-cream">fried ice cream</a>, and from-scratch <a href="http://koser.us/recipes/strawberry-glazed-buttermilk-donuts">strawberry donuts</a>. She also made some cinnamon candy for Christmas. The links lead to those recipes on our website, where you’re also probably reading this Christmas letter! Speaking of which, Brian has made a few changes to the website, improving the appearance and adding recipe tags.</p>  
<p>We’ve enjoyed getting more involved in our church this year. Melissa is now playing the piano full time. Until Lydia was born we taught the 3rd-grade class of our Wednesday night children’s Bible club and taught a Sunday morning preschool class once a month. We also got to help out with Vacation Bible School this summer, teaching lessons, songs, and Bible verses. Working with children can be challenging, but it’s always rewarding.</p>  
<p>Brian’s family was able to visit for Thanksgiving again this year, and we enjoyed a hearty meal together. We also got to watch his sister Megan perform in a production of The Scarlet Pimpernel at <abbr title="Pensacola Christian College">PCC</abbr>. </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-12-03-scarlet-pimpernel.jpg" alt="The Scarlet Pimpernel cast">      
    <figcaption>Megan and her boyfriend Josh Hutt, who played the Scarlet Pimpernel</figcaption>  
</figure>    
<p>Logan Harding took our Christmas photos; hire him to do video or photography at <a href="http://www.shadowpointmedia.com/">Shadowpoint Media</a>. Bekah Haas made Lydia’s scarf and booties; get your own at the <a href="http://www.facebook.com/softlysweet14/">Softly Sweet Facebook page</a>.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2015-12-06-lydia.jpg" alt="Lydia in her knit hat and scarf">      
    <figcaption>Our precious girl</figcaption>  
</figure>    
<p>Today is Christmas, and as we post this, we’re enjoying spending Christmas with Brian’s family again, in Louisiana.</p>  
<p>If you pass through Mobile in 2016, please stop by and see Lydia (we’ve found that she’s the main reason people visit nowadays 😊). Looking forward to a great 2016!</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (6, 1, N'2015 → 2016', N'2015-2016', N'article/2016/01/15/1/2015-2016', N'<p>Squishy goals are bad. When you set a goal, like a New Year’s resolution, it should be concrete. Instead of “I’m going to eat healthier” your goal should be something like “I’m going to eat under 2000 calories six days per week.” </p>  <p>My resolutions from 2015 concrete; does that mean I got everything done? Let’s see how I did:</p>  <ol>      <li>          <h2>Work on to do list before work in the mornings</h2>          <p>I was doing well here until Lydia was born. Since then I’ve been getting to bed later and haven’t been getting up early enough to do anything before work.</p>      </li>      <li>          <h2>Exercise 5 days every week</h2>          <p>Same as above. I was exercising in the morning a couple days a week, but haven’t even once since Lydia arrived. I did play racquetball on weekends, but not as much as I’d like (my goal is twice a month).</p>      </li>      <li>          <h2>Daily Family Meetings</h2>          <p>I purposely delayed this one. Keep reading.</p>      </li>      <li>          <h2>Make dent in To Do items</h2>          <p>I have a <a href="http://trello.com">Trello</a> board where I keep track of items I need to do. At the beginning of the week I’ll choose several to get done that week. I did make a dent, but I’m always coming up with more things I want to do. (I have too many hobbies.)</p>      </li>      <li>          <h2>5 hours a week on websites</h2>          <p>              Did I really want to do 5 hours a week? I didn’t spend that much time, but I did:              <ul>                  <li>complete a small redesign of <a href="http://briankoser.com">briankoser.com</a></li>                  <li>completely re-write <a href="http://koser.us">koser.us</a> with a new back- and front-end</li>                  <li>make <a href="http://koser.us/antonio/">Antonio</a>, a small project for a few BGG users (No longer maintained. Move along.)</li>                  <li>start making <a href="http://github.com/briankoser/thomas">Thomas</a>, a board game ranking tool</li>              </ul>          </p>      </li>  </ol>  <p>So I’m going to count this as a success.</p>  <hr class="hr-placeholder">  <p>So apparently I’m not great at keeping New Year’s resolutions. Let’s see if I can do better this year. Keep me accountable! Since I had five resolutions in 2015, I have six for 2016:</p>  <ol>      <li>          <h2>Read 20 books (including at least 2 audio books)</h2>          <p>I read 9 books in 2015, and some of those were graphic novels. Lately I’ve been reading more online: technical blogs, political and sports news, board game forums, reddit. I also didn’t finish listening to the audio book I started, favoring podcasts instead. In 2016, I’d like to cut back on the online reading. Until I’ve listened to a couple audiobooks I’ll slow down the podcast pace. That way I can finish half the books that I’ve started, read some more that are sitting on the bookshelf, and listen to those I have on my phone.</p>      </li>      <li>          <h2>Finish 9 epics</h2>          <p><a href="http://www.scrumalliance.org/why-scrum">Scrum</a> is a project planning system that I’ve used at work. I’ve borrowed some of the <a href="https://www.scrumalliance.org/community/articles/2014/march/stories-versus-themes-versus-epics">scrum terminology</a> for my to-do lists. Quick items (done in a week or less) I call “stories”. A project made up of multiple stories I call an “epic”. I currently have 18 epics on my to do list, and I’d like to finish 9 in 2016.</p>      </li>      <li>          <h2>30 minutes a day, 21 days a month on to do list</h2>          <p>To work on those epics and other stories, I’m going to set aside a half hour per day for three weeks out of the month.</p>      </li>      <li>          <h2>Blog once per month at briankoser.com and koser.us</h2>          <p>I’m going to start posting my non-programming writing on koser.us, which is probably where you’re reading this.</p>      </li>      <li>          <h2>Family Meetings</h2>          <p>I had this as a goal last year and decided to postpone it until after Lydia was born. When she starts eating solid food and we start eating at the table again, we’re going to start having family meetings. We’ll be able to keep up with what’s getting done and what still needs to be done. We can keep each other accountable so we don’t keep putting off important things like getting our wills signed (oops!).</p>      </li>      <li>          <h2>Start a podcast</h2>          <p>I really enjoy the medium of podcasting. The switch from the “push” model of radio and television to the “pull” model of podcasts and web video is a huge improvement. In 2016 I’d like to start a podcast. I’ve got a few different ideas but haven’t decided which to follow through on yet.</p>      </li>  </ol>  <p>I want 2016 to be a year of getting things done, and the best way for me to make sure it happens is concrete goals and accountability. Let’s do it!</p>', N'Brian Koser’s 2016 New Year’s resolutions', CAST(N'2016-01-15T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Squishy goals are bad. When you set a goal, like a New Year’s res­o­lu­tion, it should be con­crete. In­stead of “I’m go­ing to eat health­ier” your goal should be some­thing like “I’m go­ing to eat un­der 2000 calo­ries six days per week.”', NULL, 1, NULL, N'<p>Squishy goals are bad. When you set a goal, like a New Year’s resolution, it should be concrete. Instead of “I’m going to eat healthier” your goal should be something like “I’m going to eat under 2000 calories six days per week.” </p>
<p>My resolutions from 2015 concrete; does that mean I got everything done? Let’s see how I did:</p>
<ol>
    <li>
        <h2>Work on to do list before work in the mornings</h2>
        <p>I was doing well here until Lydia was born. Since then I’ve been getting to bed later and haven’t been getting up early enough to do anything before work.</p>
    </li>
    <li>
        <h2>Exercise 5 days every week</h2>
        <p>Same as above. I was exercising in the morning a couple days a week, but haven’t even once since Lydia arrived. I did play racquetball on weekends, but not as much as I’d like (my goal is twice a month).</p>
    </li>
    <li>
        <h2>Daily Family Meetings</h2>
        <p>I purposely delayed this one. Keep reading.</p>
    </li>
    <li>
        <h2>Make dent in To Do items</h2>
        <p>I have a <a href="http://trello.com">Trello</a> board where I keep track of items I need to do. At the beginning of the week I’ll choose several to get done that week. I did make a dent, but I’m always coming up with more things I want to do. (I have too many hobbies.)</p>
    </li>
    <li>
        <h2>5 hours a week on websites</h2>
        <p>
            Did I really want to do 5 hours a week? I didn’t spend that much time, but I did:
            <ul>
                <li>complete a small redesign of <a href="http://briankoser.com">briankoser.com</a></li>
                <li>completely re-write <a href="http://koser.us">koser.us</a> with a new back- and front-end</li>
                <li>make <a href="http://koser.us/antonio/">Antonio</a>, a small project for a few BGG users (No longer maintained. Move along.)</li>
                <li>start making <a href="http://github.com/briankoser/thomas">Thomas</a>, a board game ranking tool</li>
            </ul>
        </p>
    </li>
</ol>
<p>So I’m going to count this as a success.</p>
<hr class="fleuron">
<p>So apparently I’m not great at keeping New Year’s resolutions. Let’s see if I can do better this year. Keep me accountable! Since I had five resolutions in 2015, I have six for 2016:</p>
<ol>
    <li>
        <h2>Read 20 books (including at least 2 audio books)</h2>
        <p>I read 9 books in 2015, and some of those were graphic novels. Lately I’ve been reading more online: technical blogs, political and sports news, board game forums, reddit. I also didn’t finish listening to the audio book I started, favoring podcasts instead. In 2016, I’d like to cut back on the online reading. Until I’ve listened to a couple audiobooks I’ll slow down the podcast pace. That way I can finish half the books that I’ve started, read some more that are sitting on the bookshelf, and listen to those I have on my phone.</p>
    </li>
    <li>
        <h2>Finish 9 epics</h2>
        <p><a href="http://www.scrumalliance.org/why-scrum">Scrum</a> is a project planning system that I’ve used at work. I’ve borrowed some of the <a href="https://www.scrumalliance.org/community/articles/2014/march/stories-versus-themes-versus-epics">scrum terminology</a> for my to-do lists. Quick items (done in a week or less) I call “stories”. A project made up of multiple stories I call an “epic”. I currently have 18 epics on my to do list, and I’d like to finish 9 in 2016.</p>
    </li>
    <li>
        <h2>30 minutes a day, 21 days a month on to do list</h2>
        <p>To work on those epics and other stories, I’m going to set aside a half hour per day for three weeks out of the month.</p>
    </li>
    <li>
        <h2>Blog once per month at briankoser.com and koser.us</h2>
        <p>I’m going to start posting my non-programming writing on koser.us, which is probably where you’re reading this.</p>
    </li>
    <li>
        <h2>Family Meetings</h2>
        <p>I had this as a goal last year and decided to postpone it until after Lydia was born. When she starts eating solid food and we start eating at the table again, we’re going to start having family meetings. We’ll be able to keep up with what’s getting done and what still needs to be done. We can keep each other accountable so we don’t keep putting off important things like getting our wills signed (oops!).</p>
    </li>
    <li>
        <h2>Start a podcast</h2>
        <p>I really enjoy the medium of podcasting. The switch from the “push” model of radio and television to the “pull” model of podcasts and web video is a huge improvement. In 2016 I’d like to start a podcast. I’ve got a few different ideas but haven’t decided which to follow through on yet.</p>
    </li>
</ol>
<p>I want 2016 to be a year of getting things done, and the best way for me to make sure it happens is concrete goals and accountability. Let’s do it!</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (7, 1, N'Ten Top Ten Lists', N'ten-top-ten-lists', N'article/2016/02/15/1/ten-top-ten-lists', N'<p>I like making top ten lists of everything. Melissa isn’t as big on lists (she didn’t have a favorite color or animal until I made her choose), but I think she’s coming around. 😁 Here are our top ten Top Ten lists we’re going to post here on koser.us.</p>
<section class="top-list top-list-first ">
<h2>Brian</h2>
<ol>
    <li><a href="http://tto.koser.us/episodes/014-animals/">Animals</a></li>
    <li>Movies</li>
    <li><a href="http://tto.koser.us/episodes/018-hymns/">Hymns</a></li>
    <li><a href="http://tto.koser.us/episodes/096-tv-show-intros/">TV Show Themes</a></li>
    <li>Places to Visit</li>
    <li>Cartoons</li>
    <li><a href="http://tto.koser.us/episodes/044-pop-culture-quotes/">Quotes</a></li>
    <li>Emoji</li>
    <li>Fiction Authors</li>
    <li><a href="http://tto.koser.us/episodes/013-top-ten-lists-well-never-do/">Top Ten Lists We’ll Never Do</a></li>
</ol>
</section>
<section class="top-list top-list-second ">
<h2>Melissa</h2>
<ol>
    <li><a href="/article/2016/03/04/1/ten-characteristics-of-my-spouse">Characteristics I Love About My Spouse</a></li>
    <li><a href="http://tto.koser.us/episodes/021-bucket-list-experiences/">Items On My Bucket List</a></li>
    <li>Fictional Universes</li>
    <li><a href="http://tto.koser.us/episodes/004-villains/">Qualities of a Good Villain</a></li>
    <li><a href="http://tto.koser.us/episodes/019-memories/">Memories</a></li>
    <li><a href="http://tto.koser.us/episodes/047-bible-verses/">Bible Verses</a></li>
    <li>Superpowers</li>
    <li>Alternate Vocations Spouse Could Have</li>
    <li>Places to Go</li>
    <li>Activities I Like Doing</li>
</ol>
</section>', N'Ten Top Ten Lists Brian and Melissa Koser will make', CAST(N'2016-02-15T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I like mak­ing top ten lists of every­thing. Melissa is­n’t as big on lists (she did­n’t have a fa­vorite color or an­i­mal un­til I made her choose), but I think she’s com­ing around. ?? Here are our top ten Top Ten lists we’re go­ing to post here on kose', NULL, 1, NULL, N'<p>I like making top ten lists of everything. Melissa isn’t as big on lists (she didn’t have a favorite color or animal until I made her choose), but I think she’s coming around. 😁 Here are our top ten Top Ten lists we’re going to post here on koser.us.</p>
<section class="top-list top-list-first ">
<h2>Brian</h2>
<ol>
    <li><a href="http://tto.koser.us/episodes/014-animals/">Animals</a></li>
    <li>Movies</li>
    <li><a href="http://tto.koser.us/episodes/018-hymns/">Hymns</a></li>
    <li><a href="http://tto.koser.us/episodes/096-tv-show-intros/">TV Show Themes</a></li>
    <li>Places to Visit</li>
    <li>Cartoons</li>
    <li><a href="http://tto.koser.us/episodes/044-pop-culture-quotes/">Quotes</a></li>
    <li>Emoji</li>
    <li>Fiction Authors</li>
    <li><a href="http://tto.koser.us/episodes/013-top-ten-lists-well-never-do/">Top Ten Lists We’ll Never Do</a></li>
</ol>
</section>
<section class="top-list top-list-second ">
<h2>Melissa</h2>
<ol>
    <li><a href="/article/2016/03/04/1/ten-characteristics-of-my-spouse">Characteristics I Love About My Spouse</a></li>
    <li><a href="http://tto.koser.us/episodes/021-bucket-list-experiences/">Items On My Bucket List</a></li>
    <li>Fictional Universes</li>
    <li><a href="http://tto.koser.us/episodes/004-villains/">Qualities of a Good Villain</a></li>
    <li><a href="http://tto.koser.us/episodes/019-memories/">Memories</a></li>
    <li><a href="http://tto.koser.us/episodes/047-bible-verses/">Bible Verses</a></li>
    <li>Superpowers</li>
    <li>Alternate Vocations Spouse Could Have</li>
    <li>Places to Go</li>
    <li>Activities I Like Doing</li>
</ol>
</section>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (8, 1, N'Ten Characteristics of My Spouse', N'ten-characteristics-of-my-spouse', N'article/2016/03/04/1/ten-characteristics-of-my-spouse', N'<section>
<p>In honor of Valentine’s Day, Melissa chose to do this list of things we love about each other. Melissa ranked her list; Brian just alphabetized his.</p>
</section>    
<section class="top-list top-list-first">      
    <h2>Melissa</h2>      
    <ol>              
        <li>                  
            <h3>Sense of humor</h3>
            <p class="list-comment">He laughs when I do/say stupid stuff.</p>
        </li>
        <li>
            <h3>Respectable</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Positive</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Hardworking</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Forgiving</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Even-tempered</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Listening spirit</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Fun</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Ability to admit when wrong</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Prudent</h3>
            <p class="list-comment">He thinks ahead.</p>
        </li>
    </ol>
</section>
<section class="top-list top-list-second">
    <h2>Brian</h2>
    <ol>
        <li>
            <h3>Cheerful</h3>
            <p class="list-comment">😀</p>
        </li>
        <li>
            <h3>Forgiving</h3>
            <p class="list-comment">Good thing for me!</p>
        </li>
        <li>
            <h3>Fun</h3>
            <p class="list-comment">She’s fun to be around.</p>
        </li>
        <li>
            <h3>Giving</h3>
            <p class="list-comment">She is always coming up with nice things to do or give to people.</p>
        </li>
        <li>
            <h3>Industrious</h3>
            <p class="list-comment">😣</p>
        </li>
        <li>
            <h3>Kind</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Romantic</h3>
            <p class="list-comment">😗</p>
        </li>
        <li>
            <h3>Smart</h3>
            <p class="list-comment">🤓</p>
        </li>
        <li>
            <h3>Supportive</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Thoughtful</h3>
            <p class="list-comment">She thinks about others.</p>
        </li>
    </ol>
</section>', N'Ten Characteristics that Brian &amp; Melissa love about each other', CAST(N'2016-03-04T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'In honor of Valen­tine’s Day, Melissa chose to do this list of things we love about each other. Melissa ranked her list; Brian just al­pha­bet­ized his.', NULL, 1, NULL, N'<section>
<p>In honor of Valentine’s Day, Melissa chose to do this list of things we love about each other. Melissa ranked her list; Brian just alphabetized his.</p>
</section>    
<section class="top-list top-list-first">      
    <h2>Melissa</h2>      
    <ol>              
        <li>                  
            <h3>Sense of humor</h3>
            <p class="list-comment">He laughs when I do/say stupid stuff.</p>
        </li>
        <li>
            <h3>Respectable</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Positive</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Hardworking</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Forgiving</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Even-tempered</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Listening spirit</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Fun</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Ability to admit when wrong</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Prudent</h3>
            <p class="list-comment">He thinks ahead.</p>
        </li>
    </ol>
</section>
<section class="top-list top-list-second">
    <h2>Brian</h2>
    <ol>
        <li>
            <h3>Cheerful</h3>
            <p class="list-comment">😀</p>
        </li>
        <li>
            <h3>Forgiving</h3>
            <p class="list-comment">Good thing for me!</p>
        </li>
        <li>
            <h3>Fun</h3>
            <p class="list-comment">She’s fun to be around.</p>
        </li>
        <li>
            <h3>Giving</h3>
            <p class="list-comment">She is always coming up with nice things to do or give to people.</p>
        </li>
        <li>
            <h3>Industrious</h3>
            <p class="list-comment">😣</p>
        </li>
        <li>
            <h3>Kind</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Romantic</h3>
            <p class="list-comment">😗</p>
        </li>
        <li>
            <h3>Smart</h3>
            <p class="list-comment">🤓</p>
        </li>
        <li>
            <h3>Supportive</h3>
            <p class="list-comment"></p>
        </li>
        <li>
            <h3>Thoughtful</h3>
            <p class="list-comment">She thinks about others.</p>
        </li>
    </ol>
</section>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (9, 1, N'Pocket Supercomputer', N'pocket-supercomputer', N'article/2016/04/18/1/pocket-supercomputer', N'<p>Now that I have a supercomputer in my pocket (currently a <a href="https://en.m.wikipedia.org/wiki/Nexus_5">Google Nexus 5</a>), life is less cluttered. I no longer need to carry:</p>
<ul>
<li>paper</li>
<li>pen</li>
<li>flashlight</li>
</ul>
<p>Travel with:</p>
<ul>
<li>maps</li>
<li>GPS</li>
<li>laptop</li>
</ul>
<p>Own:</p>
<ul>
<li>calculator</li>
<li>camera</li>
<li>video recorder</li>
<li>Gameboy</li>
<li>dictionary</li>
<li>encyclopedia</li>
<li>MP3 player</li>
<li>watch</li>
<li>pager</li>
<li>alarm clock</li>
<li>level</li>
<li>barcode scanner</li>
<li>calendar</li>
<li>day planner</li>
</ul>
<p>Memorize:</p>
<ul>
<li>addresses</li>
<li>phone numbers</li>
<li>social security numbers</li>
<li>license plate numbers</li>
<li>birthdays</li>
<li>credit card numbers</li>
<li>first aid</li>
</ul>
<p>It could replace:</p>
<ul>
<li>TV</li>
<li>books</li>
</ul>
<p>…although I still own a TV and shelves of books.</p>
<p>I expect it will eventually replace:</p>
<ul>
<li>keys</li>
<li>wallet</li>
</ul>', N'Brian Koser lists all the things replaced by smart phones.', CAST(N'2016-04-18T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Now that I have a su­per­com­puter in my pocket (cur­rently a Google Nexus 5), life is less clut­tered. I no longer need to carry:', NULL, 1, NULL, N'<p>Now that I have a supercomputer in my pocket (currently a <a href="https://en.m.wikipedia.org/wiki/Nexus_5">Google Nexus 5</a>), life is less cluttered. I no longer need to carry:</p>
<ul>
<li>paper</li>
<li>pen</li>
<li>flashlight</li>
</ul>
<p>Travel with:</p>
<ul>
<li>maps</li>
<li>GPS</li>
<li>laptop</li>
</ul>
<p>Own:</p>
<ul>
<li>calculator</li>
<li>camera</li>
<li>video recorder</li>
<li>Gameboy</li>
<li>dictionary</li>
<li>encyclopedia</li>
<li>MP3 player</li>
<li>watch</li>
<li>pager</li>
<li>alarm clock</li>
<li>level</li>
<li>barcode scanner</li>
<li>calendar</li>
<li>day planner</li>
</ul>
<p>Memorize:</p>
<ul>
<li>addresses</li>
<li>phone numbers</li>
<li>social security numbers</li>
<li>license plate numbers</li>
<li>birthdays</li>
<li>credit card numbers</li>
<li>first aid</li>
</ul>
<p>It could replace:</p>
<ul>
<li>TV</li>
<li>books</li>
</ul>
<p>…although I still own a TV and shelves of books.</p>
<p>I expect it will eventually replace:</p>
<ul>
<li>keys</li>
<li>wallet</li>
</ul>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (10, 1, N'The Bible on Broccoli', N'broccoli-in-the-bible', N'article/2016/06/11/1/broccoli-in-the-bible', N'<p>Matthew 14:16-19</p>
<ol start="16">
<li>Then saith he unto his disciples, Give unto these provision.</li>
<li>And his disciples saith, Lord, wherewith shall we feed these? We have but five loaves, two fishes, and some broccoli.</li>
<li>The Lord saith, Give me the bread and fishes. And the disciples marvelled at his wisdom. </li>
<li>And again he saith, Get thee behind me broccoli. Unto his disciples he saith, Let it alone: it is from the Devil’s garden.</li>
</ol>
<p>These verses mean a lot to me.</p>', N'Brian Koser wrote parody Bible verses in which Jesus denigrates broccoli.', CAST(N'2016-06-11T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Matthew 14:16-19', NULL, 1, NULL, N'<p>Matthew 14:16-19</p>
<ol start="16">
<li>Then saith he unto his disciples, Give unto these provision.</li>
<li>And his disciples saith, Lord, wherewith shall we feed these? We have but five loaves, two fishes, and some broccoli.</li>
<li>The Lord saith, Give me the bread and fishes. And the disciples marvelled at his wisdom. </li>
<li>And again he saith, Get thee behind me broccoli. Unto his disciples he saith, Let it alone: it is from the Devil’s garden.</li>
</ol>
<p>These verses mean a lot to me.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (11, 1, N'Podcasting, Start to Finish: Equipment', N'podcasting-start-to-finish-equipment', N'article/2016/07/23/1/podcasting-start-to-finish-equipment', N'<p>Recently we started a podcast: <a href="http://tto.koser.us">Ten to One</a>, where we make top ten lists about everything (<a href="http://tto.koser.us">check it out!</a>). We try for the highest quality possible; for content, of course, but also for the audio quality and editing. In case you want to start a podcast, or just do some intermediate audio recording and editing, I’m going to write a series of articles detailing how we do it. Let’s start with the equipment.</p>  <p>You can record audio on your smart phone or laptop, but high-quality audio requires better equipment. If you’re just recording one person you should get:</p>  <h2 id="microphone">Microphone</h2>  <p>We use the <a href="https://www.amazon.com/gp/product/B004QJOZS4">Audio-Technica ATR2100-USB</a>, a cheap but good quality mic.</p>  <h2 id="microphone-stand">Microphone stand</h2>  <p>The ATR2100 does come with a small stand, but we wanted something sturdier that wouldn’t pick up every table bump. The <a href="https://www.amazon.com/gp/product/B000978D58">On Stage Tripod Boom Microphone Stand (MS7701B)</a> is a floor-standing tripod that works with our mic, although it requires a:</p>  <h2 id="microphone-clip">Microphone clip</h2>  <p>The <a href="https://www.amazon.com/gp/product/B0002ZO60I">On Stage Microphone Clip (MY325)</a> attaches to the stand and actually holds the mic.</p>  <h2 id="pop-filter">Pop filter</h2>  <p>To prevent plosives (“P” and “B” sounds, which are made with a burst of air from the mouth) from making a popping sound when they hit the mic. The <a href="https://www.amazon.com/gp/product/B008AOH1O6">Dragonpad USA Pop filter</a> is big and cheap and works.</p>  <h2 id="headphones">Headphones</h2>  <p>Not a necessity, but it does help you know exactly what your mic is picking up. You can plug them directly into the ATR2100.</p>  <hr class="hr-placeholder">  <p>The nice thing about the one-person setup is how easy it is to plug everything together:</p>  <figure>  <img src="http://cdn.koser.us/img/journal/2016-07-23-podcasting-equipment-one-mic-diagram.png" alt="Diagram showing how to connect one microphone to a computer">  </figure>    <p>Just plug the mic into the computer and you’re off to the races.</p>  <p>However, with two people it’s a little awkward recording into one mic. The downside to adding a mic is that you can’t just plug it in to a second USB port. It’s important that the audio from both mics goes in simultaneously, but USB does not transfer at consistent speeds. You’ll need to plug the mics into a mixer which will combine the audio and send it to the computer. Our new setup includes the existing equipment plus:</p>  <h2 id="an-additional-mic-stand-clip-and-pop-filter">An additional mic, stand, clip, and pop filter</h2>  <p>Same models.</p>  <h2 id="mixer">Mixer</h2>  <p>We use the <a href="http://www.sweetwater.com/store/detail/Q802USB">Behringer Xenyx Q802USB</a>. The mixer will take the audio from both mics and pipe it into your computer through USB.</p>  <h2 id="1-4-to-1-8-cable">1/4″ to 1/8″ cable</h2>  <p>Like the <a href="https://www.amazon.com/gp/product/B000068O3C">Hosa 1/8″ TRS to Two Mono 1/4″ Cable</a>. We use this to connect audio from our laptop to the mixing board. This allows us to record Skype conversations or other audio played from the computer.</p>  <h2 id="headphone-adapter">Headphone adapter</h2>  <p>The <a href="https://www.amazon.com/gp/product/B00005T3GH">RCA AH216 Stereo headphone adapter</a> allows you to plug your headphones into the mixer.</p>  <p>The new setup looks like this:</p>  <figure>  <img src="http://cdn.koser.us/img/journal/2016-07-23-podcasting-equipment-two-mic-diagram.png" alt="Diagram showing how to connect two microphones to a mixer and computer">  </figure>  <p>I’ve never used a mixer, so I’ll have to go figure it out before I write part two. 😎</p>', N'The equipment Brian and Melissa Koser use to record their podcast, Ten to One, and other audio projects.', CAST(N'2016-07-23T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Re­cently we started a pod­cast: <a href="http://tto.koser.us">Ten to One</a>, where we make top ten lists about every­thing (<a href="http://tto.koser.us">check it out!</a>).', NULL, 1, NULL, N'<p>Recently we started a podcast: <a href="http://tto.koser.us">Ten to One</a>, where we make top ten lists about everything (<a href="http://tto.koser.us">check it out!</a>). We try for the highest quality possible; for content, of course, but also for the audio quality and editing. In case you want to start a podcast, or just do some intermediate audio recording and editing, I’m going to write a series of articles detailing how we do it. Let’s start with the equipment.</p>
<p>You can record audio on your smart phone or laptop, but high-quality audio requires better equipment. If you’re just recording one person you should get:</p>
<h2 id="microphone">Microphone</h2>
<p>We use the <a href="https://www.amazon.com/gp/product/B004QJOZS4">Audio-Technica ATR2100-USB</a>, a cheap but good quality mic.</p>
<h2 id="microphone-stand">Microphone stand</h2>
<p>The ATR2100 does come with a small stand, but we wanted something sturdier that wouldn’t pick up every table bump. The <a href="https://www.amazon.com/gp/product/B000978D58">On Stage Tripod Boom Microphone Stand (MS7701B)</a> is a floor-standing tripod that works with our mic, although it requires a:</p>
<h2 id="microphone-clip">Microphone clip</h2>
<p>The <a href="https://www.amazon.com/gp/product/B0002ZO60I">On Stage Microphone Clip (MY325)</a> attaches to the stand and actually holds the mic.</p>
<h2 id="pop-filter">Pop filter</h2>
<p>To prevent plosives (“P” and “B” sounds, which are made with a burst of air from the mouth) from making a popping sound when they hit the mic. The <a href="https://www.amazon.com/gp/product/B008AOH1O6">Dragonpad USA Pop filter</a> is big and cheap and works.</p>
<h2 id="headphones">Headphones</h2>
<p>Not a necessity, but it does help you know exactly what your mic is picking up. You can plug them directly into the ATR2100.</p>
<hr class="fleuron">
<p>The nice thing about the one-person setup is how easy it is to plug everything together:</p>
<figure>
<img src="http://cdn.koser.us/img/journal/2016-07-23-podcasting-equipment-one-mic-diagram.png" alt="Diagram showing how to connect one microphone to a computer">
</figure>  
<p>Just plug the mic into the computer and you’re off to the races.</p>
<p>However, with two people it’s a little awkward recording into one mic. The downside to adding a mic is that you can’t just plug it in to a second USB port. It’s important that the audio from both mics goes in simultaneously, but USB does not transfer at consistent speeds. You’ll need to plug the mics into a mixer which will combine the audio and send it to the computer. Our new setup includes the existing equipment plus:</p>
<h2 id="an-additional-mic-stand-clip-and-pop-filter">An additional mic, stand, clip, and pop filter</h2>
<p>Same models.</p>
<h2 id="mixer">Mixer</h2>
<p>We use the <a href="http://www.sweetwater.com/store/detail/Q802USB">Behringer Xenyx Q802USB</a>. The mixer will take the audio from both mics and pipe it into your computer through USB.</p>
<h2 id="1-4-to-1-8-cable">1/4″ to 1/8″ cable</h2>
<p>Like the <a href="https://www.amazon.com/gp/product/B000068O3C">Hosa 1/8″ TRS to Two Mono 1/4″ Cable</a>. We use this to connect audio from our laptop to the mixing board. This allows us to record Skype conversations or other audio played from the computer.</p>
<h2 id="headphone-adapter">Headphone adapter</h2>
<p>The <a href="https://www.amazon.com/gp/product/B00005T3GH">RCA AH216 Stereo headphone adapter</a> allows you to plug your headphones into the mixer.</p>
<p>The new setup looks like this:</p>
<figure>
<img src="http://cdn.koser.us/img/journal/2016-07-23-podcasting-equipment-two-mic-diagram.png" alt="Diagram showing how to connect two microphones to a mixer and computer">
</figure>
<p>I’ve never used a mixer, so I’ll have to go figure it out before I write part two. 😎</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (12, 1, N'Support Creators: Dan Carlin', N'support-creators-dan-carlin', N'article/2016/07/29/1/support-creators-dan-carlin', N'<p>I like books, blogs, podcasts, and software. <a href="http://tto.koser.us">I’ve</a> <a href="https://github.com/briankoser">created</a> <a href="http://briankoser.com/">some</a> <a href="http://koser.us">myself</a> (no books, probably never a book). And I like to support people who create things that I like. Free services are great, but if you made a useful and well-designed app, I’m happy to pay a few dollars for it. We also have a budget item called “Creators”. It’s not a huge amount, but I make sure every month to give back to a creator who’s given me either practical value or just enjoyment. In addition I’m going to start writing about these folks each month as a further “Thank you”.</p>    <hr class="hr-placeholder">      <h2 id="dan-carlin">Dan Carlin</h2>    <p>Dan Carlin is one of the most successful professional podcasters. Both of his podcasts, Hardcore History and Common Sense, are quite popular (in the millions of listeners), and deservedly so.</p>    <p>Hardcore History is basically a series of audiobooks on topics such as the fall of the Roman Republic, World War I, and the Persian Empire. Dan is an excellent story teller with a great radio voice. He’s a self-proclaimed amateur historian, but he does a ton of research and presents a balanced view of history.</p>    <p>Common Sense is his political, current events podcast. The topics vary but civil liberties, terrorism, and government corruption are some of his favorites. We don’t agree on everything (who does?) but it’s always thought-provoking and, quite often, really just common sense.</p>    <p>Dan is able to make a living podcasting through donations. You can listen to his shows for free, so check them out. If you enjoy them as much as I do, you might even donate $1/?show to help him continue.</p>', N'Brian Koser argues for supporting creators. Dan Carlin is his first example.', CAST(N'2016-07-29T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I like books, blogs, pod­casts, and soft­ware. I’ve cre­ated some my­self (no books, prob­a­bly never a book). And I like to sup­port peo­ple who cre­ate things that I like. ', NULL, 1, NULL, N'<p>I like books, blogs, podcasts, and software. <a href="http://tto.koser.us">I’ve</a> <a href="https://github.com/briankoser">created</a> <a href="http://briankoser.com/">some</a> <a href="http://koser.us">myself</a> (no books, probably never a book). And I like to support people who create things that I like. Free services are great, but if you made a useful and well-designed app, I’m happy to pay a few dollars for it. We also have a budget item called “Creators”. It’s not a huge amount, but I make sure every month to give back to a creator who’s given me either practical value or just enjoyment. In addition I’m going to start writing about these folks each month as a further “Thank you”.</p>  
<hr class="fleuron">    
<h2 id="dan-carlin">Dan Carlin</h2>  
<p>Dan Carlin is one of the most successful professional podcasters. Both of his podcasts, Hardcore History and Common Sense, are quite popular (in the millions of listeners), and deservedly so.</p>  
<p>Hardcore History is basically a series of audiobooks on topics such as the fall of the Roman Republic, World War I, and the Persian Empire. Dan is an excellent story teller with a great radio voice. He’s a self-proclaimed amateur historian, but he does a ton of research and presents a balanced view of history.</p>  
<p>Common Sense is his political, current events podcast. The topics vary but civil liberties, terrorism, and government corruption are some of his favorites. We don’t agree on everything (who does?) but it’s always thought-provoking and, quite often, really just common sense.</p>  
<p>Dan is able to make a living podcasting through donations. You can listen to his shows for free, so check them out. If you enjoy them as much as I do, you might even donate $1/?show to help him continue.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (13, 1, N'S3Stat is ridiculously easy download tracking for Amazon S3', N's3stat', N'article/2016/07/30/1/s3stat', N'<p>After recently starting our podcast (<a href="http://tto.koser.us">Ten to One</a>, where we make top ten lists about everything), one of our first questions was: is anyone listening? Now, we’re just podcasting for fun, so we’re not concerned with getting a bunch of people to listen. But we’re still curious. Since the podcast files are hosted on Amazon’s S3, I started looking into ways of tracking downloads.</p>
<p>Let me save you some time: there’s no easy, accurate way to do it yourself.</p>
<figure>
<img src="http://cdn.koser.us/img/journal/2016-07-30-oldbookillustrations-rudder-fatum.jpg" alt="Tracking Amazon S3 downloads">
<figcaption>Me, calculating Amazon S3 downloads</figcaption>
</figure>
<p>Thankfully, you don’t have to do it yourself: <a href="https://www.s3stat.com/">S3Stat</a> will do it for you! After a fifteen-minute setup, all I had to do was wait for the data to come in.</p>
<p>S3Stat collects the data and gives you some wonderful tables and graphs. You know I love graphs.</p>
<p><img src="http://cdn.koser.us/img/journal/2016-07-30-s3stat-graph.png" alt="Graph of Amazon S3 downloads"></p>
<p>For a hobby podcast like ours, I can’t justify paying $10/month for tracking download stats when we pay only pennies a month for website hosting and file storage. However, S3Stat has offered to give a free license to anyone who blogs about their product. Very generous!</p>
<p>To conclude: tracking S3 downloads yourself is ridiculously hard; S3Stat makes it ridiculously easy. For both businesses and hobby users using S3, their service is a no-brainer.</p>', N'Brian Koser details how he uses S3Stat to track file downloads from Amazon S3.', CAST(N'2016-07-30T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Af­ter re­cently start­ing our pod­cast (Ten to One, where we make top ten lists about every­thing), one of our first ques­tions was: is any­one lis­ten­ing? Now, we’re just pod­cast­ing for fun, so we’re not con­cerned with get­ting a bunch of peo­ple to ', NULL, 1, NULL, N'<p>After recently starting our podcast (<a href="http://tto.koser.us">Ten to One</a>, where we make top ten lists about everything), one of our first questions was: is anyone listening? Now, we’re just podcasting for fun, so we’re not concerned with getting a bunch of people to listen. But we’re still curious. Since the podcast files are hosted on Amazon’s S3, I started looking into ways of tracking downloads.</p>
<p>Let me save you some time: there’s no easy, accurate way to do it yourself.</p>
<figure>
<img src="http://cdn.koser.us/img/journal/2016-07-30-oldbookillustrations-rudder-fatum.jpg" alt="Tracking Amazon S3 downloads">
<figcaption>Me, calculating Amazon S3 downloads</figcaption>
</figure>
<p>Thankfully, you don’t have to do it yourself: <a href="https://www.s3stat.com/">S3Stat</a> will do it for you! After a fifteen-minute setup, all I had to do was wait for the data to come in.</p>
<p>S3Stat collects the data and gives you some wonderful tables and graphs. You know I love graphs.</p>
<p><img src="http://cdn.koser.us/img/journal/2016-07-30-s3stat-graph.png" alt="Graph of Amazon S3 downloads"></p>
<p>For a hobby podcast like ours, I can’t justify paying $10/month for tracking download stats when we pay only pennies a month for website hosting and file storage. However, S3Stat has offered to give a free license to anyone who blogs about their product. Very generous!</p>
<p>To conclude: tracking S3 downloads yourself is ridiculously hard; S3Stat makes it ridiculously easy. For both businesses and hobby users using S3, their service is a no-brainer.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (14, 1, N'Support Creators: KeePass', N'support-creators-keepass', N'article/2016/08/14/1/support-creators-keepass', N'<p>You should never reuse a password. That means a different password for every computer and website account you have. If you’re like me, that means over 100 different passwords to keep track of. There are two solutions to this problem:</p>
<ol>
<li>Use the same password everywhere.</li>
<li>Use a password manager.</li>
</ol>
<p>Option 1 is bad bad bad. A chain is only as strong as it’s weakest link: if you use the same password everywhere, then a hacker only has to break into one site (the least secure) and they now have access to your email, bank, and credit cards.</p>
<p>Using a password manager is much more secure. I use <a href="http://keepass.info/download.html">KeePass</a>. All of my passwords are stored in KeePass, which requires a master password to access. Now I just have to remember one password. To keep it backed up and to use it on all my devices, I store my KeePass database in Dropbox.</p>
<p>To make it easier to enter passwords into websites, I use <a href="https://chrome.google.com/webstore/detail/chromeipass/ompiailgknfdndiefoaoiligalphfdae?hl=en">chromeIPass</a>, which automatically fills the username and password fields when you open a web page.</p>
<p>To make the mobile experience easier, I use <a href="https://play.google.com/store/apps/details?id=keepass2android.keepass2android">KeePass2Android</a>. This works similarly to chromeIPass: you share the URL with KeePass2Android, which then pops up a notification which allows you to easily copy and paste the username and password into the website.</p>
<p>KeePass is a solid open-source project that is providing free security to tens of thousands of people. That’s why KeePass was my July creator donation, and KeePass2Android was my May creator donation.</p>', N'Brian Koser supports KeePass and KeePass2Android', CAST(N'2016-08-14T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'You should never reuse a pass­word. That means a dif­fer­ent pass­word for every com­puter and web­site ac­count you have. If you’re like me, that means over 100 dif­fer­ent pass­words to keep track of. There are two so­lu­tions to this prob­lem:', NULL, 1, NULL, N'<p>You should never reuse a password. That means a different password for every computer and website account you have. If you’re like me, that means over 100 different passwords to keep track of. There are two solutions to this problem:</p>
<ol>
<li>Use the same password everywhere.</li>
<li>Use a password manager.</li>
</ol>
<p>Option 1 is bad bad bad. A chain is only as strong as it’s weakest link: if you use the same password everywhere, then a hacker only has to break into one site (the least secure) and they now have access to your email, bank, and credit cards.</p>
<p>Using a password manager is much more secure. I use <a href="http://keepass.info/download.html">KeePass</a>. All of my passwords are stored in KeePass, which requires a master password to access. Now I just have to remember one password. To keep it backed up and to use it on all my devices, I store my KeePass database in Dropbox.</p>
<p>To make it easier to enter passwords into websites, I use <a href="https://chrome.google.com/webstore/detail/chromeipass/ompiailgknfdndiefoaoiligalphfdae?hl=en">chromeIPass</a>, which automatically fills the username and password fields when you open a web page.</p>
<p>To make the mobile experience easier, I use <a href="https://play.google.com/store/apps/details?id=keepass2android.keepass2android">KeePass2Android</a>. This works similarly to chromeIPass: you share the URL with KeePass2Android, which then pops up a notification which allows you to easily copy and paste the username and password into the website.</p>
<p>KeePass is a solid open-source project that is providing free security to tens of thousands of people. That’s why KeePass was my July creator donation, and KeePass2Android was my May creator donation.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (15, 1, N'Pinterest-perfect!', N'pinterest-perfect', N'article/2016/08/15/1/pinterest-perfect', N'<p>She smiled as the sounds of girlish giggles and laughter filtered through the house. Her daughters were having friends over for a sleepover and were thoroughly enjoying themselves. She was glad everything was going so beautifully. First, they’d had a princess tea party, complete with costumes, china cups and petit fours. Then they’d watched a movie playing off a bedsheet in the backyard, and shrieked in mock terror at the tires in the yard set to look like alligators (last month’s project). Now they were leaning out of the teepees she had arranged in their bedroom, gazing at the stars on the ceiling and discussing which boy they thought was cutest.</p>  
<p>Yes, it had been a full and busy day, but much had been accomplished. The finishing touches had been added to the stairs, so that they now looked like book spines rather than just plain stairs. Her son’s room still needed some work done on it, but she had added the bookshelf decorated like a green pipe from the Mario-verse. Tomorrow she would start painting the tunnels through the Bowser’s Castle play area.</p>  
<p>The last rays of the setting sun winked off the marbles she had set in the garden fence, and she smiled a good-night at the golf ball ladybugs she had placed to add some charm—</p>  
<p>“It’s late. Let’s go to bed.” Her husband’s voice cut through her bliss, and with a sigh she headed toward the bedroom. As she trudged down the barren hallway in their apartment, she reflected on how quickly the evening had gone by. But she’d get through tomorrow’s chores of housework like she always did, and soon the evening would come and her child would go to sleep. Then she could again relax as she scoured Pinterest for tips and tricks, ideas and projects. And then off to bed again, to dream of all that she would never do.</p>', N'A short story by Melissa Koser', CAST(N'2016-08-15T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'She smiled as the sounds of girl­ish gig­gles and laugh­ter fil­tered through the house. Her daugh­ters were hav­ing friends over for a sleep­over and were thor­oughly en­joy­ing them­selves. She was glad every­thing was go­ing so beau­ti­fully. First, the', NULL, 1, NULL, N'<p>She smiled as the sounds of girlish giggles and laughter filtered through the house. Her daughters were having friends over for a sleepover and were thoroughly enjoying themselves. She was glad everything was going so beautifully. First, they’d had a princess tea party, complete with costumes, china cups and petit fours. Then they’d watched a movie playing off a bedsheet in the backyard, and shrieked in mock terror at the tires in the yard set to look like alligators (last month’s project). Now they were leaning out of the teepees she had arranged in their bedroom, gazing at the stars on the ceiling and discussing which boy they thought was cutest.</p>  
<p>Yes, it had been a full and busy day, but much had been accomplished. The finishing touches had been added to the stairs, so that they now looked like book spines rather than just plain stairs. Her son’s room still needed some work done on it, but she had added the bookshelf decorated like a green pipe from the Mario-verse. Tomorrow she would start painting the tunnels through the Bowser’s Castle play area.</p>  
<p>The last rays of the setting sun winked off the marbles she had set in the garden fence, and she smiled a good-night at the golf ball ladybugs she had placed to add some charm—</p>  
<p>“It’s late. Let’s go to bed.” Her husband’s voice cut through her bliss, and with a sigh she headed toward the bedroom. As she trudged down the barren hallway in their apartment, she reflected on how quickly the evening had gone by. But she’d get through tomorrow’s chores of housework like she always did, and soon the evening would come and her child would go to sleep. Then she could again relax as she scoured Pinterest for tips and tricks, ideas and projects. And then off to bed again, to dream of all that she would never do.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (16, 1, N'Podcasting, Start to Finish: How to use a mixer', N'podcasting-start-to-finish-mixer', N'article/2016/08/16/1/podcasting-start-to-finish-mixer', N'<p>A mixer (also called a “mixing console” or “mixing board”) is necessary if you record with more than one input, like two microphones or a microphone and an instrument. It can be intimidating to start, so let’s just look at the basics.</p>  
<h2 id="xlr">XLR</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-xlr.jpg" alt="XLR inputs on mixer"></figure>  
<p>The XLR inputs are where you plug in your microphones.</p>  
<h2 id="gain">Gain</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-gain.jpg" alt="Gain knobs on mixer"></figure>  
<p>If you’re interested in a slightly technical discussion, <a href="http://www.offbeatband.com/2009/08/the-difference-between-gain-volume-level-and-loudness/">this is a great article</a> about the difference between gain, volume, and loudness. The oversimplified explanation is: gain is the volume of your audio coming in to the mixer. Adjust it so that the audio signal is loud enough, but stays in the green (20, 0) and doesn’t go into the yellow or red (6, CLIP).</p>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-signal.png" alt="Signal LED indicator on mixer"></figure>  
<p>With this board and the mics listed in the <a href="/podcasting-start-to-finish-equipment">last article</a>, I put the gain almost all the way to maximum.</p>  
<h2 id="phones">Phones</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-phones.jpg" alt="Phones knob on mixer"></figure>  
<p>This knob controls the volume coming into the headphones without changing the volume of the audio going into the computer.</p>  
<h2 id="the-rest">The rest</h2>  
<p>You can read about and experiment with the other settings, but to start you can leave everything else at the default:</p>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-defaults.jpg" alt="Mixer"></figure>  
<ul>  
<li>COMP at 0 (left)</li>  
<li>EQ at 0 (center)</li>  
<li>FX at -8 (left)</li>  
<li>PAN in middle</li>  
<li>LEVEL at 0 (center)</li>  
<li>AUX RETURN at -8 (left)</li>  
<li>TO PHONES/?CTRL ROOM button depressed (up)</li>  
<li>TO MAIN MIX button depressed (up)</li>  
<li>Phantom power (red button) depressed (up)</li>  
<li>MAIN MIX at 0 (center)</li>  
</ul>  
<h2 id="that-s-all">That’s all</h2>  
<p>Sorry if you wanted more in-depth explanations of the settings, but I’ve only experimented a little and have ended up sticking with defaults. My main point of confusion was not realizing how high the gain had to be (almost to maximum with my setup). Hopefully I saved you a few minutes of confusion.</p>', N'How Brian and Melissa Koser use a mixer for their podcast, Ten to One, and other audio projects', CAST(N'2016-08-16T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'A mixer (also called a “mix­ing con­sole” or “mix­ing board”) is nec­es­sary if you record with more than one in­put, like two mi­cro­phones or a mi­cro­phone and an in­stru­ment. It can be in­tim­i­dat­ing to start, so let’s just look at the ba­sics.', N'http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer.jpg', 1, NULL, N'<p>A mixer (also called a “mixing console” or “mixing board”) is necessary if you record with more than one input, like two microphones or a microphone and an instrument. It can be intimidating to start, so let’s just look at the basics.</p>  
<h2 id="xlr">XLR</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-xlr.jpg" alt="XLR inputs on mixer"></figure>  
<p>The XLR inputs are where you plug in your microphones.</p>  
<h2 id="gain">Gain</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-gain.jpg" alt="Gain knobs on mixer"></figure>  
<p>If you’re interested in a slightly technical discussion, <a href="http://www.offbeatband.com/2009/08/the-difference-between-gain-volume-level-and-loudness/">this is a great article</a> about the difference between gain, volume, and loudness. The oversimplified explanation is: gain is the volume of your audio coming in to the mixer. Adjust it so that the audio signal is loud enough, but stays in the green (20, 0) and doesn’t go into the yellow or red (6, CLIP).</p>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-signal.png" alt="Signal LED indicator on mixer"></figure>  
<p>With this board and the mics listed in the <a href="/podcasting-start-to-finish-equipment">last article</a>, I put the gain almost all the way to maximum.</p>  
<h2 id="phones">Phones</h2>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-phones.jpg" alt="Phones knob on mixer"></figure>  
<p>This knob controls the volume coming into the headphones without changing the volume of the audio going into the computer.</p>  
<h2 id="the-rest">The rest</h2>  
<p>You can read about and experiment with the other settings, but to start you can leave everything else at the default:</p>  
<figure><img src="http://cdn.koser.us/img/journal/2016-08-16-xenyx-q802-usb-mixer-defaults.jpg" alt="Mixer"></figure>  
<ul>  
<li>COMP at 0 (left)</li>  
<li>EQ at 0 (center)</li>  
<li>FX at -8 (left)</li>  
<li>PAN in middle</li>  
<li>LEVEL at 0 (center)</li>  
<li>AUX RETURN at -8 (left)</li>  
<li>TO PHONES/?CTRL ROOM button depressed (up)</li>  
<li>TO MAIN MIX button depressed (up)</li>  
<li>Phantom power (red button) depressed (up)</li>  
<li>MAIN MIX at 0 (center)</li>  
</ul>  
<h2 id="that-s-all">That’s all</h2>  
<p>Sorry if you wanted more in-depth explanations of the settings, but I’ve only experimented a little and have ended up sticking with defaults. My main point of confusion was not realizing how high the gain had to be (almost to maximum with my setup). Hopefully I saved you a few minutes of confusion.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (17, 1, N'Support Creators: Paint.Net', N'support-creators-paint-net', N'article/2016/09/26/1/support-creators-paint-net', N'<p>You probably don’t need Photoshop. I certainly don’t. For the basic work I do <a href="http://www.getpaint.net/index.html">Paint.NET</a> is more than enough. You can work with layers, adjust colors, and do simple effects like blurs. For basic image manipulation Paint.NET is the best, and that’s why I supported it with my June creators donation.</p>', N'Brian Koser supports Paint.NET', CAST(N'2016-09-26T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'You prob­a­bly don’t need Pho­to­shop. I cer­tainly don’t. For the ba­sic work I do Paint.NET is more than enough. You can work with lay­ers, ad­just col­ors, and do sim­ple ef­fects like blurs.', NULL, 1, NULL, N'<p>You probably don’t need Photoshop. I certainly don’t. For the basic work I do <a href="http://www.getpaint.net/index.html">Paint.NET</a> is more than enough. You can work with layers, adjust colors, and do simple effects like blurs. For basic image manipulation Paint.NET is the best, and that’s why I supported it with my June creators donation.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (18, 1, N'Support Creators: Book Catalog', N'support-creators-book-catalog', N'article/2016/09/28/1/support-creators-book-catalog', N'<p>Hi, my name is Brian Koser, and I have a problem. I can’t resist used book stores, used book sales, flea markets…to be completely honest I even browse through the used books at Goodwill. 😳</p>  
<p>Sadly, Melissa suffers from the same affliction. Happily, we comfort each other by purchasing books. We’re up to 542 now. How do I know the exact number? Let me introduce you, fellow book-lover, to a handy little Android app: the aptly-named <a href="https://play.google.com/store/apps/details?id=com.eleybourn.bookcatalogue">Book Catalog</a>. </p>  
<p>This app lets you create a personal database of books. Books with an ISBN barcode can be scanned in; you can also type the ISBN code or title to enter books. The other killer feature for me is that it synchronizes with <a href="www.goodreads.com">Goodreads</a>, the social network for readers*. With Book Catalog I can avoid coming home with a stack of books, only to realize that we already own half of them. That’s why my August creators donation went to Philip Warner, creator of Book Catalog.</p>', N'Brian Koser supports Philip Warner, creator of the Book Catalog app', CAST(N'2016-09-28T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Hi, my name is Brian Koser, and I have a prob­lem. I can’t re­sist used book stores, used book sales, flea mar­kets…to be com­pletely hon­est I even browse through the used books at Good­will. ??', NULL, 1, NULL, N'<p>Hi, my name is Brian Koser, and I have a problem. I can’t resist used book stores, used book sales, flea markets…to be completely honest I even browse through the used books at Goodwill. 😳</p>  
<p>Sadly, Melissa suffers from the same affliction. Happily, we comfort each other by purchasing books. We’re up to 542 now. How do I know the exact number? Let me introduce you, fellow book-lover, to a handy little Android app: the aptly-named <a href="https://play.google.com/store/apps/details?id=com.eleybourn.bookcatalogue">Book Catalog</a>. </p>  
<p>This app lets you create a personal database of books. Books with an ISBN barcode can be scanned in; you can also type the ISBN code or title to enter books. The other killer feature for me is that it synchronizes with <a href="www.goodreads.com">Goodreads</a>, the social network for readers*. With Book Catalog I can avoid coming home with a stack of books, only to realize that we already own half of them. That’s why my August creators donation went to Philip Warner, creator of Book Catalog.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (19, 1, N'Support Creators: Launchy', N'support-creators-launchy', N'article/2016/10/02/1/support-creators-launchy', N'<p>Did you know on Windows 8 and 10 you can hit the Windows key then start typing to search for apps, settings, and files? I’ve been using <a href="https://www.launchy.net/">Launchy</a> to do just that since Windows XP. In fact, I still use Launchy, for two reasons: first, it’s faster than the Windows search on my five-year-old laptop. Second, it includes directories in its index, and I find myself searching for directories more often than files. For it’s consistent greatness, I made Launchy my September creators donation.</p>', N'Brian Koser supports Launchy', CAST(N'2016-10-02T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Did you know on Win­dows 8 and 10 you can hit the Win­dows key then start typ­ing to search for apps, set­tings, and files? I’ve been us­ing Launchy to do just that since Win­dows XP. In fact, I still use Launchy, for two rea­sons: first, it’s faster than ', NULL, 1, NULL, N'<p>Did you know on Windows 8 and 10 you can hit the Windows key then start typing to search for apps, settings, and files? I’ve been using <a href="https://www.launchy.net/">Launchy</a> to do just that since Windows XP. In fact, I still use Launchy, for two reasons: first, it’s faster than the Windows search on my five-year-old laptop. Second, it includes directories in its index, and I find myself searching for directories more often than files. For it’s consistent greatness, I made Launchy my September creators donation.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (20, 1, N'Support Creators: Inkscape', N'support-creators-inkscape', N'article/2016/10/31/1/support-creators-inkscape', N'<p>Inkscape is vector-drawing software. Vector graphics are different than the more common raster graphics. A raster graphic like a JPG says, “The top left pixel is blue. The next pixel to the right is red. The next pixel…” A vector graphic says, “There’s a blue line from the top left to the right of the image. There’s a red circle whose diameter is half the length of the line.”</p>  
<p>Vector graphics are superior to raster graphics for things like illustrations. You know how when you zoom into a photograph it eventually gets blurry? That’s because you’re just making the pixels bigger. A vector graphic is just a description of how to build an image, so you can zoom forever without getting blurry; the image will just re-draw at the new size.</p>  
<p>Inkscape is really the only game in town for free vector drawing. I’ve used it for things like the logo of our podcast, <a href="http://tto.koser.us">Ten to One</a>. That’s why I donated my October creators donation to Inkscape.</p>', N'Brian Koser supports Inkscape', CAST(N'2016-10-31T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Inkscape is vec­tor-draw­ing soft­ware. Vec­tor graph­ics are dif­fer­ent than the more com­mon raster graph­ics. A raster graphic like a JPG says, “The top left pixel is blue. The next pixel to the right is red. The next pixel…” A vec­tor graphic says, “T', NULL, 1, NULL, N'<p>Inkscape is vector-drawing software. Vector graphics are different than the more common raster graphics. A raster graphic like a JPG says, “The top left pixel is blue. The next pixel to the right is red. The next pixel…” A vector graphic says, “There’s a blue line from the top left to the right of the image. There’s a red circle whose diameter is half the length of the line.”</p>  
<p>Vector graphics are superior to raster graphics for things like illustrations. You know how when you zoom into a photograph it eventually gets blurry? That’s because you’re just making the pixels bigger. A vector graphic is just a description of how to build an image, so you can zoom forever without getting blurry; the image will just re-draw at the new size.</p>  
<p>Inkscape is really the only game in town for free vector drawing. I’ve used it for things like the logo of our podcast, <a href="http://tto.koser.us">Ten to One</a>. That’s why I donated my October creators donation to Inkscape.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (21, 1, N'Support Creators: WinSCP', N'support-creators-winscp', N'article/2016/11/28/1/support-creators-winscp', N'<p><a href="https://winscp.net/eng/index.php">WinSCP</a> is the best Windows FTP client. That is all.</p>', N'Brian Koser supports WinSCP', CAST(N'2016-11-28T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Win­SCP is the best Win­dows FTP client. That’s all.', NULL, 1, NULL, N'<p><a href="https://winscp.net/eng/index.php">WinSCP</a> is the best Windows FTP client. That is all.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (22, 1, N'Personal Website Manifesto', N'personal-website-manifesto', N'article/2016/11/28/2/personal-website-manifesto', N'<p>I’ve had a personal website for years. Back in college I snagged <a href="http://briankoser.com">briankoser.com</a>, put up some short programming articles, and experimented with HTML and CSS.</p>  
<p>In 2015 I picked up <a href="http://koser.us">koser.us</a> as a place to put Melissa’s recipes and our Christmas Letters. I’ve slowly added more and will eventually move all of my online output here.</p>  
<p>People assume it’s because I’m a software developer. If you make web sites for a living, you have to have your own website, right? Well, no. Most software developers, even web developers, don’t have their own site. In 2016, most people just use Facebook (along with Twitter, Medium, and some others).</p>  
<p>I have a Facebook account myself. Why isn’t that good enough?</p>  
<p>Here are all the reasons I have my own website.</p>  
<h1 id="to-own-my-content">To own my content</h1>  
<p><em>Hey Facebook, you can use my lawnmower whenever you want.</em></p>  
<p>Posting on Facebook allows Facebook to use your words for free. Some people have handed Facebook multiple novels-worth of work. You still own the content, but Facebook can use it for whatever they want.</p>  
<p>“Who cares if Facebook uses the status updates about my cat?” you say. I grant that this is more of a philosophical argument. But just because it’s philosophical doesn’t mean it’s not important. This point leads into:</p>  
<h1 id="facebook-isn-t-free-as-in-free-beer-">Facebook isn’t free (as in “free beer”)</h1>  
<p><em>Let me get you some free chips and salsa. I will also increase the cost of your entree by 10%.</em></p>  
<p>One of the first principles of economics is: there’s no such thing as a free lunch. When you use a website, someone is paying for it. koser.us is paid for by me, to provide myself a platform. Facebook’s business model is:</p>  
<ol>  
    <li>You give personal information to Facebook. Facebook gives you a place to find your friends and share your activities.</li>  
    <li>Facebook gives your personal information to advertisers. Advertisers give Facebook lots of money to run the website.</li>
    <li>Advertisers target you with personalized ads based on your information.</li>  
</ol>  
<p>If you’re OK with this system, fine. I think there are people that wouldn’t be OK with that trade, but don’t realize they’re making it.</p>  
<h1 id="facebook-isn-t-free-as-in-free-speech-">Facebook isn’t free (as in “free speech”)</h1>  
<p>You cannot say whatever you want on Facebook or Twitter. As private companies, they have every right to delete your account if you say something they don’t like.</p>  
<p>This is a good thing. Without any moderation, obnoxious users would drive others off the platform.</p>  
<p>However, if you ever disagree with Facebook or Twitter’s standards on what speech is acceptable, you’re out of luck. This is one reason that social media sites are:</p>  
<h1 id="facebook-is-an-unstable-platform">Facebook is an unstable platform</h1>  
<p>Social media sites can delete your account at any time, without explanation. This has happened multiple times on Youtube and Twitter: a user promotes and builds their brand, gains followers, their account gets deleted. Sometimes they violate the Terms of Service; sometimes it’s just a mistake. Either way, people have lost <a href="https://marie-antoinettequeenoffrance.blogspot.com/2015/10/why-twitter-permanently-suspended-my.html">their followers</a>, <a href="http://www.sciencealert.com/google-has-deleted-an-artist-s-blog-with-14-years-of-his-work">their content</a>, and even <a href="https://www.maxlaumeister.com/blog/google-is-deleting-your-favorite-youtube-videos/">their source of income</a>.</p>  
<h1 id="for-an-easily-searchable-archive">For an easily-searchable archive</h1>  
<p>Can you find that casserole recipe you posted on Facebook a few years ago?</p>  
<h1 id="to-own-my-presentation">To own my presentation</h1>  
<p>Websites like <a href="http://www.positivecomputing.org/2014/03/design-for-conflict-resolution-and.html">Facebook</a> and <a href="https://medium.design/crafting-link-underlines-on-medium-7c03a9274f9#.syb8bp65v">Medium</a> put a lot of thought into presentation. They come up with solid defaults that work for what most people want to do. But what if you want to do something unique? I couldn’t do my <a href="http://koser.us/games/">annual board game reports</a> on Facebook. <a href="http://www.nytimes.com/interactive/2016/08/11/magazine/isis-middle-east-arab-spring-fractured-lands.html">This New York Times article</a> couldn’t be done on Facebook. With your own website you can present your content however you want.</p>  
<h1 id="to-avoid-lock-in">To avoid lock-in</h1>  
<p>You buy a service from Company A. Company B starts providing the service better, but you the cost of switching is so high you stay with Company A. This is called <a href="https://en.m.wikipedia.org/wiki/Vendor_lock-in">vendor lock-in</a>.</p>  
<p>If tomorrow someone builds a better Facebook, would you be able to switch? If Twitter changes their Terms of Service to disallow your speech, will you leave? If you do you’ll probably be leaving all your content behind.</p>  
<h1 id="for-a-wider-reach">For a wider reach</h1>  
<p>There are over <strong>1 billion</strong> people on Facebook. That’s a crazy number. But it also means there are six times that many <em>not</em> on Facebook. Do you want to restrict who has access to your content?</p>  
<p>“But my audience is on Facebook, I can’t ask them to move.” A solution is to put your content on your page and link to it from Facebook. This allows you:</p>  
<h1 id="to-create-one-canonical-source">To create one canonical source</h1>  
<p>Where can people find your content online? Facebook? Twitter? Medium? All of the above plus others? Using a personal website is the best way to consolidate your content. To consolidate you will need to:</p>  
<h2 id="posse">POSSE</h2>  
<p><a href="https://indieweb.org/POSSE">POSSE</a> is “Publish (on your) Own Site, Syndicate Elsewhere”. With POSSE, you post your cat picture to your site, then your site automatically creates a Facebook post linking to your cat picture. This way your audience on social media will still see your content.</p>  
<h2 id="consolidate-comments">Consolidate comments</h2>  
<p>What makes social media “social”? Comments. And if someone comments about your content on Facebook, you want that on your site as well. Right now the best way to do that seems to be <a href="https://brid.gy/">Bridgy</a>. I haven’t used it yet but I plan to start in 2017.</p>  
<hr>  
<h1 id="you-ve-convinced-me-but-i-m-not-technical-can-i-have-my-own-site-">You’ve convinced me. But I’m not technical. Can I have my own site?</h1>  
<p>I haven’t used it, but the best non-technical solution right now seems to be <a href="https://withknown.com/">Known</a>. Of course, “build it yourself” will always be the most customizable option, so that’s in the works for koser.us in 2017.</p>', N'Why Brian Koser has a personal website.', CAST(N'2016-11-28T00:00:00.0000000+00:00' AS DateTimeOffset), 2, NULL, N'I’ve had a per­sonal web­site for years. Back in col­lege I snagged bri­ankoser.com, put up some short pro­gram­ming ar­ti­cles, and ex­per­i­mented with HTML and CSS.', NULL, 1, NULL, N'<p>I’ve had a personal website for years. Back in college I snagged <a href="http://briankoser.com">briankoser.com</a>, put up some short programming articles, and experimented with HTML and CSS.</p>  
<p>In 2015 I picked up <a href="http://koser.us">koser.us</a> as a place to put Melissa’s recipes and our Christmas Letters. I’ve slowly added more and will eventually move all of my online output here.</p>  
<p>People assume it’s because I’m a software developer. If you make web sites for a living, you have to have your own website, right? Well, no. Most software developers, even web developers, don’t have their own site. In 2016, most people just use Facebook (along with Twitter, Medium, and some others).</p>  
<p>I have a Facebook account myself. Why isn’t that good enough?</p>  
<p>Here are all the reasons I have my own website.</p>  
<h1 id="to-own-my-content">To own my content</h1>  
<p><em>Hey Facebook, you can use my lawnmower whenever you want.</em></p>  
<p>Posting on Facebook allows Facebook to use your words for free. Some people have handed Facebook multiple novels-worth of work. You still own the content, but Facebook can use it for whatever they want.</p>  
<p>“Who cares if Facebook uses the status updates about my cat?” you say. I grant that this is more of a philosophical argument. But just because it’s philosophical doesn’t mean it’s not important. This point leads into:</p>  
<h1 id="facebook-isn-t-free-as-in-free-beer-">Facebook isn’t free (as in “free beer”)</h1>  
<p><em>Let me get you some free chips and salsa. I will also increase the cost of your entree by 10%.</em></p>  
<p>One of the first principles of economics is: there’s no such thing as a free lunch. When you use a website, someone is paying for it. koser.us is paid for by me, to provide myself a platform. Facebook’s business model is:</p>  
<ol>  
    <li>You give personal information to Facebook. Facebook gives you a place to find your friends and share your activities.</li>  
    <li>Facebook gives your personal information to advertisers. Advertisers give Facebook lots of money to run the website.</li>
    <li>Advertisers target you with personalized ads based on your information.</li>  
</ol>  
<p>If you’re OK with this system, fine. I think there are people that wouldn’t be OK with that trade, but don’t realize they’re making it.</p>  
<h1 id="facebook-isn-t-free-as-in-free-speech-">Facebook isn’t free (as in “free speech”)</h1>  
<p>You cannot say whatever you want on Facebook or Twitter. As private companies, they have every right to delete your account if you say something they don’t like.</p>  
<p>This is a good thing. Without any moderation, obnoxious users would drive others off the platform.</p>  
<p>However, if you ever disagree with Facebook or Twitter’s standards on what speech is acceptable, you’re out of luck. This is one reason that social media sites are:</p>  
<h1 id="facebook-is-an-unstable-platform">Facebook is an unstable platform</h1>  
<p>Social media sites can delete your account at any time, without explanation. This has happened multiple times on Youtube and Twitter: a user promotes and builds their brand, gains followers, their account gets deleted. Sometimes they violate the Terms of Service; sometimes it’s just a mistake. Either way, people have lost <a href="https://marie-antoinettequeenoffrance.blogspot.com/2015/10/why-twitter-permanently-suspended-my.html">their followers</a>, <a href="http://www.sciencealert.com/google-has-deleted-an-artist-s-blog-with-14-years-of-his-work">their content</a>, and even <a href="https://www.maxlaumeister.com/blog/google-is-deleting-your-favorite-youtube-videos/">their source of income</a>.</p>  
<h1 id="for-an-easily-searchable-archive">For an easily-searchable archive</h1>  
<p>Can you find that casserole recipe you posted on Facebook a few years ago?</p>  
<h1 id="to-own-my-presentation">To own my presentation</h1>  
<p>Websites like <a href="http://www.positivecomputing.org/2014/03/design-for-conflict-resolution-and.html">Facebook</a> and <a href="https://medium.design/crafting-link-underlines-on-medium-7c03a9274f9#.syb8bp65v">Medium</a> put a lot of thought into presentation. They come up with solid defaults that work for what most people want to do. But what if you want to do something unique? I couldn’t do my <a href="http://koser.us/games/">annual board game reports</a> on Facebook. <a href="http://www.nytimes.com/interactive/2016/08/11/magazine/isis-middle-east-arab-spring-fractured-lands.html">This New York Times article</a> couldn’t be done on Facebook. With your own website you can present your content however you want.</p>  
<h1 id="to-avoid-lock-in">To avoid lock-in</h1>  
<p>You buy a service from Company A. Company B starts providing the service better, but you the cost of switching is so high you stay with Company A. This is called <a href="https://en.m.wikipedia.org/wiki/Vendor_lock-in">vendor lock-in</a>.</p>  
<p>If tomorrow someone builds a better Facebook, would you be able to switch? If Twitter changes their Terms of Service to disallow your speech, will you leave? If you do you’ll probably be leaving all your content behind.</p>  
<h1 id="for-a-wider-reach">For a wider reach</h1>  
<p>There are over <strong>1 billion</strong> people on Facebook. That’s a crazy number. But it also means there are six times that many <em>not</em> on Facebook. Do you want to restrict who has access to your content?</p>  
<p>“But my audience is on Facebook, I can’t ask them to move.” A solution is to put your content on your page and link to it from Facebook. This allows you:</p>  
<h1 id="to-create-one-canonical-source">To create one canonical source</h1>  
<p>Where can people find your content online? Facebook? Twitter? Medium? All of the above plus others? Using a personal website is the best way to consolidate your content. To consolidate you will need to:</p>  
<h2 id="posse">POSSE</h2>  
<p><a href="https://indieweb.org/POSSE">POSSE</a> is “Publish (on your) Own Site, Syndicate Elsewhere”. With POSSE, you post your cat picture to your site, then your site automatically creates a Facebook post linking to your cat picture. This way your audience on social media will still see your content.</p>  
<h2 id="consolidate-comments">Consolidate comments</h2>  
<p>What makes social media “social”? Comments. And if someone comments about your content on Facebook, you want that on your site as well. Right now the best way to do that seems to be <a href="https://brid.gy/">Bridgy</a>. I haven’t used it yet but I plan to start in 2017.</p>  
<hr>  
<h1 id="you-ve-convinced-me-but-i-m-not-technical-can-i-have-my-own-site-">You’ve convinced me. But I’m not technical. Can I have my own site?</h1>  
<p>I haven’t used it, but the best non-technical solution right now seems to be <a href="https://withknown.com/">Known</a>. Of course, “build it yourself” will always be the most customizable option, so that’s in the works for koser.us in 2017.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (23, 1, N'The Magic Thread', N'magic-thread', N'article/2016/12/17/1/magic-thread', N'<p>Too often, people want what they want (or what they think they want, which is usually "happiness" in one form or another) right now. The irony of their impatience is that only by learning to wait, and by a willingness to accept the bad with the good, do we usually attain those things that are truly worthwhile. "He that can have patience, can have what he will," Benjamin Franklin told us, and this French tale bears him out.</p>    <hr class="hr-placeholder">      <p>Once there was a widow who had a son called Peter. He was a strong, able boy, but he did not enjoy going to school and he was forever daydreaming.</p>  <p>"Peter, what are you dreaming about this time?" his teacher would say to him.</p>  <p>"I’m thinking about what I’ll be when I grow up," Peter replied.</p>  <p>"Be patient. There’s plenty of time for that. Being grown up isn’t all fun, you know," his teacher said.</p>  <p>But Peter found it hard to enjoy whatever he was doing at the moment, and was always hankering after the next thing. In winter he longed for it to be summer again, and in summer he looked forward to the skating, sledging, and warm fires of winter. At school he would long for the day to be over so that he could go home, and on Sunday nights he would sigh, "If only the holidays would come." What he enjoyed most was playing with his friend Liese. She was as good a companion as any boy, and no matter how impatient Peter was, she never took offense. "When I grow up, I shall marry Liese," Peter said to himself.</p>  <p>Often he wandered through the forest, dreaming of the future. Sometimes he lay down on the soft forest floor in the warm sun, his hands behind his head, staring up at the sky through the distant treetops. One hot afternoon as he began to grow sleepy, he heard someone calling his name. He opened his eyes and sat up. Standing before him was an old woman. In her hand she held a silver ball, from which dangled a silken golden thread.</p>  <p>"See what I have got here, Peter," she said, offering the ball to him.</p>  <p>"What is it?" he asked curiously, touching the fine golden thread.</p>  <p>"This is your life thread," the old woman replied. "Do not touch it and time will pass normally. But if you wish time to pass more quickly, you have only to pull the thread a little way and an hour will pass like a second. But I warn you, once the thread has been pulled out, it cannot be pushed back in again. It will disappear like a puff of smoke. The ball is for you. But if you accept my gift you must tell no one, or on that very day you shall die. Now, say, do you want it?"</p>  <p>Peter seized the gift from her joyfully. It was just what he wanted. He examined the silver ball. It was light and solid, made of a single piece. The only flaw in it was the tiny hole from which the bright thread hung. He put the ball in his pocket and ran home. There, making sure that his mother was out, he examined it again. The thread seemed to be creeping very slowly out of the ball, so slowly that it was scarcely noticeable to the naked eye. He longed to give it a quick tug, but dared not do so. Not yet.</p>  <p>The following day at school, Peter sat daydreaming about what he would do with his magic thread. The teacher scolded him for not concentrating on his work. If only, he thought, it was time to go home. Then he felt the silver ball in his pocket. If he pulled out a tiny bit of thread, the day would be over. Very carefully he took hold of it and tugged. Suddenly the teacher was telling everyone to pack up their books and to leave the classroom in an orderly fashion. Peter was overjoyed. He ran all the way home. How easy life would be now! All his troubles were over. From that day forth he began to pull the thread, just a little, every day.</p>  <p>One day, however, it occurred to him that it was stupid to pull the thread just a little each day. If he gave it a harder tug, school would be over altogether. Then he could start learning a trade and marry Liese. So that night he gave the thread a hard tug, and in the morning he awoke to find himself apprenticed to a carpenter in town. He loved his new life, clambering about on roofs and scaffolding, lifting and hammering great beams into place that still smelled of the forest. But sometimes, when payday seemed too far off, he gave the thread a little tug and suddenly the week was drawing to a close and it was Friday night and he had money in his pocket.</p>  <p>Liese had also come to town and was living with her aunt, who taught her housekeeping. Peter began to grow impatient for the day when they would be married. It was hard to live so near and yet so far from her. He asked her when they could be married.</p>  <p>"In another year," she said. "Then I will have learned how to be a capable wife."</p>  <p>Peter fingered the silver ball in his pocket.</p>  <p>"Well, the time will pass quickly enough," he said, knowingly.</p>  <p>That night Peter could not sleep. He tossed and turned restlessly. He took the magic ball from under his pillow. For a moment he hesitated; then his impatience got the better of him, and he tugged at the golden thread. In the morning he awoke to find that the year was over and that Liese had at last agreed to marry him. Now Peter felt truly happy.</p>  <p>But before their wedding could take place, Peter received an official-looking letter. He opened it in trepidation and read that he was expected to report at the army barracks the following week for two years’ military service. He showed the letter to Liese in despair.</p>  <p>"Well," she said, "there is nothing for it, we shall just have to wait. But the time will pass quickly, you’ll see. There are so many things to do in preparation for our life together."</p>  <p>Peter smiled bravely, knowing that two years would seem a lifetime to him.</p>  <p>Once Peter had settled into life at the barracks, however, he began to feel that it wasn’t so bad after all. He quite enjoyed being with all the other young men, and their duties were not very arduous at first. He remembered the old woman’s warning to use the thread wisely and for a while refrained from pulling it. But in time he grew restless again. Army life bored him with its routine duties and harsh discipline. He began pulling the thread to make the week go faster so that it would be Sunday again, or to speed up the time until he was due for leave. And so the two years passed almost as if they had been a dream.</p>  <p>Back home, Peter determined not to pull the thread again until it was absolutely necessary. After all, this was the best time of his life, as everyone told him. He did not want it to be over too quickly. He did, however, give the thread one or two very small tugs, just to speed along the day of his marriage. He longed to tell Liese his secret, but he knew that if he did he would die.</p>  <p>On the day of his wedding, everyone, including Peter, was happy. He could hardly wait to show Liese the house he had built for her. At the wedding feast he glanced over at his mother. He noticed for the first time how gray her hair had grown recently. She seemed to be aging so quickly. Peter felt a pang of guilt that he had pulled the thread so often. Henceforward he would be much more sparing with it and only use it when it was strictly necessary.</p>  <p>A few months later Liese announced that she was going to have a child. Peter was overjoyed and could hardly wait. When the child was born, he felt that he could never want for anything again. But whenever the child was ill or cried through the sleepless night, he gave the thread a little tug, just so that the baby might be well and happy again.</p>  <p>Times were hard. Business was bad and a government had come to power that squeezed the people dry with taxes and would tolerate no opposition. Anyone who became known as a troublemaker was thrown into prison without trial and rumor was enough to condemn a man. Peter had always been known as one who spoke his mind, and very soon he was arrested and cast into jail. Luckily he had his magic ball with him and he tugged very hard at the thread. The prison walls dissolved before him and his enemies were scattered in the huge explosion that burst forth like thunder. It was the war that had been threatening, but it was over as quickly as a summer storm, leaving behind it an exhausted peace. Peter found himself back home with his family. But now he was a middle-aged man.</p>  <p>For a time things went well and Peter lived in relative contentment. One day he looked at his magic ball and saw to his surprise that the thread had turned from gold to silver. He looked in the mirror. His hair was starting to turn gray and his face was lined where before there had not been a wrinkle to be seen. He suddenly felt afraid and determined to use the thread even more carefully than before. Liese bore him more children and he seemed happy as the head of his growing household. His stately manner often made people think of him as some sort of benevolent ruler. He had an air of authority as if he held the fate of others in his hands. He kept his magic ball in a well-hidden place, safe from the curious eyes of his children, knowing that if anyone were to discover it, it would be fatal.</p>  <p>As the number of his children grew, so his house became more overcrowded. He would have to extend it, but for that he needed money. He had other worries too. His mother was looking older and more tired every day. It was of no use to pull the magic thread because that would only hasten her approaching death. All too soon she died, and as Peter stood at her graveside, he wondered how it was that life passed so quickly, even without pulling the magic thread.</p>  <p>One night as he lay in bed, kept awake by his worries, he thought how much easier life would be if all his children were grown up and launched upon their careers in life. He gave the thread a mighty tug, and the following day he awoke to find that his children had all left home for jobs in different parts of the country, and that he and his wife were alone. His hair was almost white now and often his back and limbs ached as he climbed the ladder or lifted a heavy beam into place. Liese too was getting old and she was often ill. He couldn’t bear to see her suffer, so that more and more he resorted to pulling at the magic thread. But as soon as one trouble was solved, another seemed to grow in its place. Perhaps life would be easier if he retired, Peter thought. Then he would no longer have to clamber about on drafty, half-completed buildings and he could look after Liese when she was ill. The trouble was that he didn’t have enough money to live on. He picked up his magic ball and looked at it. To his dismay he saw that the thread was no longer silver but gray and lusterless. He decided to go for a walk in the forest to think things over.</p>  <p>It was a long time since he had been in that part of the forest. The small saplings had all grown into tall fir trees, and it was hard to find the path he had once known. Eventually he came to a bench in a clearing. He sat down to rest and fell into a light doze. He was woken by someone calling his name, "Peter! Peter!"</p>  <p>He looked up and saw the old woman he had met so many years ago when she had given him the magic silver ball with its golden thread. She looked just as she had on that day, not a day older. She smiled at him.</p>  <p>"So, Peter, have you had a good life?" she asked.</p>  <p>"I’m not sure," Peter said. "Your magic ball is a wonderful thing. I have never had to suffer or wait for anything in my life. And yet it has all passed so quickly. I feel that I have had no time to take in what has happened to me, neither the good things nor the bad. Now there is so little time left. I dare not pull the thread again for it will only bring me to my death. I do not think your gift has brought me luck."</p>  <p>"How ungrateful you are!" the old woman said. "In what way would you have wished things to be different?"</p>  <p>"Perhaps if you had given me a different ball, one where I could have pushed the thread back in as well as pulling it out. Then I could have relived the things that went badly."</p>  <p>The old woman laughed. "You ask a great deal! Do you think that God allows us to live our lives twice over? But I can grant you one final wish, you foolish, demanding man."</p>  <p>"What is that?" Peter asked.</p>  <p>"Choose," the old woman said. Peter thought hard.</p>  <p>At length he said, "I should like to live my life again as if for the first time, but without your magic ball. Then I will experience the bad things as well as the good without cutting them short, and at least my life will not pass as swiftly and meaninglessly as a daydream."</p>  <p>"So be it," said the old woman. "Give me back my ball."</p>  <p>She stretched out her hand and Peter placed the silver ball in it. Then he sat back and closed his eyes with exhaustion.</p>  <p>When he awoke he was in his own bed. His youthful mother was bending over him, shaking him gently.</p>  <p>"Wake up, Peter. You will be late for school. You were sleeping like the dead!"</p>  <p>He looked up at her in surprise and relief.</p>  <p>"I’ve had a terrible dream, Mother. I dreamed that I was old and sick and that my life had passed like the blinking of an eye with nothing to show for it. Not even any memories."</p>  <p>His mother laughed and shook her head.</p>  <p>"That will never happen," she said. "Memories are the one thing we all have, even when we are old. Now hurry and get dressed. Liese is waiting for you and you will be late for school."</p>  <p>As Peter walked to school with Liese, he noticed what a bright summer morning it was, the kind of morning when it felt good to be alive. Soon he would see his friends and classmates, and even the prospect of lessons didn’t seem so bad. In fact he could hardly wait.</p>    <hr class="hr-placeholder">      <p>Written by Anonymous</p>    <p>Excerpted from <i class="work-title">The Book of Virtues</i>.</p>', N'The Magic Thread cautions about impatience and discontent.', CAST(N'2016-12-17T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Too of­ten, peo­ple want what they want (or what they think they want, which is usu­ally "hap­pi­ness" in one form or an­other) right now. The irony of their im­pa­tience is that only by learn­ing to wait, and by a will­ing­ness to ac­cept the bad with the', NULL, 1, NULL, N'<p>Too often, people want what they want (or what they think they want, which is usually "happiness" in one form or another) right now. The irony of their impatience is that only by learning to wait, and by a willingness to accept the bad with the good, do we usually attain those things that are truly worthwhile. "He that can have patience, can have what he will," Benjamin Franklin told us, and this French tale bears him out.</p>  
<hr class="fleuron">    
<p>Once there was a widow who had a son called Peter. He was a strong, able boy, but he did not enjoy going to school and he was forever daydreaming.</p>  <p>"Peter, what are you dreaming about this time?" his teacher would say to him.</p>  <p>"I’m thinking about what I’ll be when I grow up," Peter replied.</p>  <p>"Be patient. There’s plenty of time for that. Being grown up isn’t all fun, you know," his teacher said.</p>  <p>But Peter found it hard to enjoy whatever he was doing at the moment, and was always hankering after the next thing. In winter he longed for it to be summer again, and in summer he looked forward to the skating, sledging, and warm fires of winter. At school he would long for the day to be over so that he could go home, and on Sunday nights he would sigh, "If only the holidays would come." What he enjoyed most was playing with his friend Liese. She was as good a companion as any boy, and no matter how impatient Peter was, she never took offense. "When I grow up, I shall marry Liese," Peter said to himself.</p>  <p>Often he wandered through the forest, dreaming of the future. Sometimes he lay down on the soft forest floor in the warm sun, his hands behind his head, staring up at the sky through the distant treetops. One hot afternoon as he began to grow sleepy, he heard someone calling his name. He opened his eyes and sat up. Standing before him was an old woman. In her hand she held a silver ball, from which dangled a silken golden thread.</p>  <p>"See what I have got here, Peter," she said, offering the ball to him.</p>  <p>"What is it?" he asked curiously, touching the fine golden thread.</p>  <p>"This is your life thread," the old woman replied. "Do not touch it and time will pass normally. But if you wish time to pass more quickly, you have only to pull the thread a little way and an hour will pass like a second. But I warn you, once the thread has been pulled out, it cannot be pushed back in again. It will disappear like a puff of smoke. The ball is for you. But if you accept my gift you must tell no one, or on that very day you shall die. Now, say, do you want it?"</p>  <p>Peter seized the gift from her joyfully. It was just what he wanted. He examined the silver ball. It was light and solid, made of a single piece. The only flaw in it was the tiny hole from which the bright thread hung. He put the ball in his pocket and ran home. There, making sure that his mother was out, he examined it again. The thread seemed to be creeping very slowly out of the ball, so slowly that it was scarcely noticeable to the naked eye. He longed to give it a quick tug, but dared not do so. Not yet.</p>  <p>The following day at school, Peter sat daydreaming about what he would do with his magic thread. The teacher scolded him for not concentrating on his work. If only, he thought, it was time to go home. Then he felt the silver ball in his pocket. If he pulled out a tiny bit of thread, the day would be over. Very carefully he took hold of it and tugged. Suddenly the teacher was telling everyone to pack up their books and to leave the classroom in an orderly fashion. Peter was overjoyed. He ran all the way home. How easy life would be now! All his troubles were over. From that day forth he began to pull the thread, just a little, every day.</p>  <p>One day, however, it occurred to him that it was stupid to pull the thread just a little each day. If he gave it a harder tug, school would be over altogether. Then he could start learning a trade and marry Liese. So that night he gave the thread a hard tug, and in the morning he awoke to find himself apprenticed to a carpenter in town. He loved his new life, clambering about on roofs and scaffolding, lifting and hammering great beams into place that still smelled of the forest. But sometimes, when payday seemed too far off, he gave the thread a little tug and suddenly the week was drawing to a close and it was Friday night and he had money in his pocket.</p>  <p>Liese had also come to town and was living with her aunt, who taught her housekeeping. Peter began to grow impatient for the day when they would be married. It was hard to live so near and yet so far from her. He asked her when they could be married.</p>  <p>"In another year," she said. "Then I will have learned how to be a capable wife."</p>  <p>Peter fingered the silver ball in his pocket.</p>  <p>"Well, the time will pass quickly enough," he said, knowingly.</p>  <p>That night Peter could not sleep. He tossed and turned restlessly. He took the magic ball from under his pillow. For a moment he hesitated; then his impatience got the better of him, and he tugged at the golden thread. In the morning he awoke to find that the year was over and that Liese had at last agreed to marry him. Now Peter felt truly happy.</p>  <p>But before their wedding could take place, Peter received an official-looking letter. He opened it in trepidation and read that he was expected to report at the army barracks the following week for two years’ military service. He showed the letter to Liese in despair.</p>  <p>"Well," she said, "there is nothing for it, we shall just have to wait. But the time will pass quickly, you’ll see. There are so many things to do in preparation for our life together."</p>  <p>Peter smiled bravely, knowing that two years would seem a lifetime to him.</p>  <p>Once Peter had settled into life at the barracks, however, he began to feel that it wasn’t so bad after all. He quite enjoyed being with all the other young men, and their duties were not very arduous at first. He remembered the old woman’s warning to use the thread wisely and for a while refrained from pulling it. But in time he grew restless again. Army life bored him with its routine duties and harsh discipline. He began pulling the thread to make the week go faster so that it would be Sunday again, or to speed up the time until he was due for leave. And so the two years passed almost as if they had been a dream.</p>  <p>Back home, Peter determined not to pull the thread again until it was absolutely necessary. After all, this was the best time of his life, as everyone told him. He did not want it to be over too quickly. He did, however, give the thread one or two very small tugs, just to speed along the day of his marriage. He longed to tell Liese his secret, but he knew that if he did he would die.</p>  <p>On the day of his wedding, everyone, including Peter, was happy. He could hardly wait to show Liese the house he had built for her. At the wedding feast he glanced over at his mother. He noticed for the first time how gray her hair had grown recently. She seemed to be aging so quickly. Peter felt a pang of guilt that he had pulled the thread so often. Henceforward he would be much more sparing with it and only use it when it was strictly necessary.</p>  <p>A few months later Liese announced that she was going to have a child. Peter was overjoyed and could hardly wait. When the child was born, he felt that he could never want for anything again. But whenever the child was ill or cried through the sleepless night, he gave the thread a little tug, just so that the baby might be well and happy again.</p>  <p>Times were hard. Business was bad and a government had come to power that squeezed the people dry with taxes and would tolerate no opposition. Anyone who became known as a troublemaker was thrown into prison without trial and rumor was enough to condemn a man. Peter had always been known as one who spoke his mind, and very soon he was arrested and cast into jail. Luckily he had his magic ball with him and he tugged very hard at the thread. The prison walls dissolved before him and his enemies were scattered in the huge explosion that burst forth like thunder. It was the war that had been threatening, but it was over as quickly as a summer storm, leaving behind it an exhausted peace. Peter found himself back home with his family. But now he was a middle-aged man.</p>  <p>For a time things went well and Peter lived in relative contentment. One day he looked at his magic ball and saw to his surprise that the thread had turned from gold to silver. He looked in the mirror. His hair was starting to turn gray and his face was lined where before there had not been a wrinkle to be seen. He suddenly felt afraid and determined to use the thread even more carefully than before. Liese bore him more children and he seemed happy as the head of his growing household. His stately manner often made people think of him as some sort of benevolent ruler. He had an air of authority as if he held the fate of others in his hands. He kept his magic ball in a well-hidden place, safe from the curious eyes of his children, knowing that if anyone were to discover it, it would be fatal.</p>  <p>As the number of his children grew, so his house became more overcrowded. He would have to extend it, but for that he needed money. He had other worries too. His mother was looking older and more tired every day. It was of no use to pull the magic thread because that would only hasten her approaching death. All too soon she died, and as Peter stood at her graveside, he wondered how it was that life passed so quickly, even without pulling the magic thread.</p>  <p>One night as he lay in bed, kept awake by his worries, he thought how much easier life would be if all his children were grown up and launched upon their careers in life. He gave the thread a mighty tug, and the following day he awoke to find that his children had all left home for jobs in different parts of the country, and that he and his wife were alone. His hair was almost white now and often his back and limbs ached as he climbed the ladder or lifted a heavy beam into place. Liese too was getting old and she was often ill. He couldn’t bear to see her suffer, so that more and more he resorted to pulling at the magic thread. But as soon as one trouble was solved, another seemed to grow in its place. Perhaps life would be easier if he retired, Peter thought. Then he would no longer have to clamber about on drafty, half-completed buildings and he could look after Liese when she was ill. The trouble was that he didn’t have enough money to live on. He picked up his magic ball and looked at it. To his dismay he saw that the thread was no longer silver but gray and lusterless. He decided to go for a walk in the forest to think things over.</p>  <p>It was a long time since he had been in that part of the forest. The small saplings had all grown into tall fir trees, and it was hard to find the path he had once known. Eventually he came to a bench in a clearing. He sat down to rest and fell into a light doze. He was woken by someone calling his name, "Peter! Peter!"</p>  <p>He looked up and saw the old woman he had met so many years ago when she had given him the magic silver ball with its golden thread. She looked just as she had on that day, not a day older. She smiled at him.</p>  <p>"So, Peter, have you had a good life?" she asked.</p>  <p>"I’m not sure," Peter said. "Your magic ball is a wonderful thing. I have never had to suffer or wait for anything in my life. And yet it has all passed so quickly. I feel that I have had no time to take in what has happened to me, neither the good things nor the bad. Now there is so little time left. I dare not pull the thread again for it will only bring me to my death. I do not think your gift has brought me luck."</p>  <p>"How ungrateful you are!" the old woman said. "In what way would you have wished things to be different?"</p>  <p>"Perhaps if you had given me a different ball, one where I could have pushed the thread back in as well as pulling it out. Then I could have relived the things that went badly."</p>  <p>The old woman laughed. "You ask a great deal! Do you think that God allows us to live our lives twice over? But I can grant you one final wish, you foolish, demanding man."</p>  <p>"What is that?" Peter asked.</p>  <p>"Choose," the old woman said. Peter thought hard.</p>  <p>At length he said, "I should like to live my life again as if for the first time, but without your magic ball. Then I will experience the bad things as well as the good without cutting them short, and at least my life will not pass as swiftly and meaninglessly as a daydream."</p>  <p>"So be it," said the old woman. "Give me back my ball."</p>  <p>She stretched out her hand and Peter placed the silver ball in it. Then he sat back and closed his eyes with exhaustion.</p>  <p>When he awoke he was in his own bed. His youthful mother was bending over him, shaking him gently.</p>  <p>"Wake up, Peter. You will be late for school. You were sleeping like the dead!"</p>  <p>He looked up at her in surprise and relief.</p>  <p>"I’ve had a terrible dream, Mother. I dreamed that I was old and sick and that my life had passed like the blinking of an eye with nothing to show for it. Not even any memories."</p>  <p>His mother laughed and shook her head.</p>  <p>"That will never happen," she said. "Memories are the one thing we all have, even when we are old. Now hurry and get dressed. Liese is waiting for you and you will be late for school."</p>  <p>As Peter walked to school with Liese, he noticed what a bright summer morning it was, the kind of morning when it felt good to be alive. Soon he would see his friends and classmates, and even the prospect of lessons didn’t seem so bad. In fact he could hardly wait.</p>  
<hr class="fleuron">    
<p>Written by Anonymous</p>  
<p>Excerpted from <i class="work-title">The Book of Virtues</i>.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (24, 1, N'Christmas Letter 2016', N'christmas-letter-2016', N'article/2016/12/25/1/christmas-letter-2016', N'<p>Merry Christmas 2016!</p>  
<p>Greetings to all of our friends and family! We are all well at the time of this writing, and we hope you are too. It has been another good, full year for our little family.</p>  
<p>We have really enjoyed watching Lydia grow into the walking, talking (a little!), happy 15-month-old apple of our eyes. We are blessed that she is very observant, quick to learn new skills, and rarely sick. Her newest skill is being able to point to different body parts when named. 👶</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-lydia.jpg" alt="Lydia making a funny face">  
</figure>    
<p>Melissa is still enjoying the best job ever—being a stay-at-home mom! Since Lydia is constantly growing and changing, Melissa always has new challenges to encounter and new skills to learn. In between that she is starting to get back into reading books, practicing piano more, and doing a couple of crafts. 📗🎹</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-melissa.jpg" alt="Melissa holding Lydia">  
</figure>    
<p>Brian has been keeping busy at work, although he still finds time for ping pong on his office’s new ping pong table. 🏓 One of his goals for the year was to get back into reading books; including audio books, he more than doubled his goal by reading 45 books. 📚🏆</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-brian.jpg" alt="Brian in the woods">  
</figure>    
<p>Here are some of our highlights, activities and achievements of the year:</p>  
<p>In March, we did a thrift store date night with some of our church friends. Each couple picked out a $10-$15 outfit from a thrift store for their spouse, and then we all went out to eat together looking ridiculous. It was a blast, and we caused a lot of people to smile (and probably run for their cars!).</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-03-12-thrift-store-date-night.jpg" alt="Brian, Melissa, and their friends dressed in their thrift store purchases">      
    <figcaption>High fashion from the thrift store</figcaption>  
</figure>    
<p>In April, Brian attended a Men’s Advance Conference with the church, and thoroughly enjoyed the fellowship and teaching. We also took a day trip to New Orleans with Micah Bucy, where we tried some local food, got some beignets, and listened to a local jazz band on the street. We also checked out a costume shop. It was interesting to see all the creative ways people were making money, from juggling and magic tricks, to music performances, to being a living statue. It was a very fun day! 🎷</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-04-23-melissa-with-living-statue-in-new-orleans.jpg" alt="Melissa with a living statue in New Orleans">      
    <figcaption>Melissa with a living statue in New Orleans</figcaption>  
</figure>    
<p>Much of May and the month or two preceding was spent hanging out with Micah before he left for California. We miss you, Micah! In memoriam. 👨‍⚕️</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-05-10-micah-graduation.jpg" alt="Brian with Micah at his Medical School Graduation">      
    <figcaption>Micah at his Med School Graduation</figcaption>  
</figure>    
<p>June saw the launching of our podcast, <a href="http://tto.koser.us">Ten to One</a>! We were enjoying making top ten lists of different topics, and decided it would be fun to record and share them with you! We are up to 25 episodes now, and look forward to recording again after our Christmas hiatus. 🎙</p>  
<p>July was a busy month! Our church hosted its annual BBQ, Cake, and Pie competition. Melissa won first place for her delicious Baklava Pie, improving on last year’s third place finish. Even now she is planning which new recipes she will use as she continues to mow down the competition. 🏆</p>  
<p><iframe class="video-embed" width="560" height="315" src="https://www.youtube.com/embed/pNFToAqpqL4" frameborder="0" allowfullscreen=""></iframe></p>  
<p class="video-caption">Crossroads Bake-Off 2016 - News Report on Melissa</p>    
<p>We also celebrated Cow Appreciation day at Chick-Fil-A! This year Melissa convinced Brian to join her in dressing like a cow. 🐄</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-07-12-chik-fil-a-cows.jpg" alt="Brian, Melissa, and Lydia dressed up as cows at Chik-Fil-A">      
    <figcaption>Moo!</figcaption>  
</figure>    
<p>During Vacation Bible School, Brian and Melissa taught the 4th and 5th graders.</p>  
<p>Somebody died in August, and Melissa was a part of it! Masquerading as the erratic world leader Genesee Glasco, she hosted a murder mystery party for our Sunday school class. A fun time was had by all, and we look forward to possibly doing another next year. 🕵</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-08-28-murder-mystery.jpg" alt="Brian and Melissa at the Murder Mystery Party">      
    <figcaption>Genesee Glasco and Alfred Einstein</figcaption>  
</figure>    
<p>September was go, go, go. First we celebrated Lydia’s first birthday. Brian’s family was able to attend along with our church family, and we had a fun day complete with pizza, cupcakes, and a watermelon smash. 🍉</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-09-03-lydias-birthday.jpg" alt="Brian and Lydia at her birthday party">      
    <figcaption>Happy Birthday Lydia!</figcaption>  
</figure>    
<p>Next we took a trip out west for a vacation and a wedding. Our first stops were to visit Melissa’s family, first flying to Colorado to see Melody and her fiancé Nate, then to Los Angeles to visit Michael, Esther, and their children. ✈️ Next we drove up to visit Micah in Northern California, then to Washington, where we visited Dale and Donita. 🚗 Last we got to see Patty and Abe get married. </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-09-24-penner-wedding.jpg" alt="Brian, Melissa, Lydia, and Patty at her wedding">      
    <figcaption>Congratulations Patty and Abe (not pictured, but he was there!)</figcaption>  
</figure>    
<p>One of our best vacations yet, and we were so glad to see everybody. For those asking when we will visit next: it’s your turn to visit us in Alabama. 😀</p>  
<p>At the end of October we traveled back to Colorado to see Nate and Melody get married. So happy for you both!</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-10-29-melody-wedding.jpg" alt="Lydia newly born">      
    <figcaption>Congratulations Melody and Nate! 💒</figcaption>  
</figure>    
<p>November saw us planning and making a full Thanksgiving meal for only the second time of our adult lives, and we started a new tradition: naming the turkey! This year’s esteemed bird was granted the moniker of Micah. 😆</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-11-24-micah-the-turkey.jpg" alt="Micah the Turkey">      
    <figcaption>Micah the Turkey 🦃</figcaption>  
</figure>    
<p>Joining us and Micah were Mom and Dad Binzel and most of Brian’s family. The next day, Melissa partook of her very first Black Friday shopping experience. It actually was not too bad; people were polite and stores were not too crowded.</p>  
<p>December, one of our favorite months! We celebrated our 5th anniversary by purchasing wooden board games, Crokinole and Quoridor. We also enjoyed lunch at Steak ’n Shake, saw some Christmas lights and ate homemade hot wings.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-10-homemade-hot-wings.jpg" alt="Homemade hot wings">      
    <figcaption>Homemade hot wings are delicious 🍗</figcaption>  
</figure>    
<p>Tomorrow we will be driving up to Lousiana to have a Very Koser Christmas. 🎄 All of Brian’s siblings and their spouses, fiancés, and children will be under one roof, along with Grandma Sabol, making a party of seventeen! 🎉</p>  
<p>We are looking forward to making 2017 an even better year than 2016. Thanks for your part in making our year, and hopefully we will see you again in 2017. Merry Christmas! 👨‍👩‍👧</p>', N'The 2016 Christmas Letter for Brian, Melissa, and Lydia Koser', CAST(N'2016-12-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Merry Christ­mas 2016!', N'http://cdn.koser.us/img/journal/2016-12-24-christmas.jpg', 1, NULL, N'<p>Merry Christmas 2016!</p>  
<p>Greetings to all of our friends and family! We are all well at the time of this writing, and we hope you are too. It has been another good, full year for our little family.</p>  
<p>We have really enjoyed watching Lydia grow into the walking, talking (a little!), happy 15-month-old apple of our eyes. We are blessed that she is very observant, quick to learn new skills, and rarely sick. Her newest skill is being able to point to different body parts when named. 👶</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-lydia.jpg" alt="Lydia making a funny face">  
</figure>    
<p>Melissa is still enjoying the best job ever—being a stay-at-home mom! Since Lydia is constantly growing and changing, Melissa always has new challenges to encounter and new skills to learn. In between that she is starting to get back into reading books, practicing piano more, and doing a couple of crafts. 📗🎹</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-melissa.jpg" alt="Melissa holding Lydia">  
</figure>    
<p>Brian has been keeping busy at work, although he still finds time for ping pong on his office’s new ping pong table. 🏓 One of his goals for the year was to get back into reading books; including audio books, he more than doubled his goal by reading 45 books. 📚🏆</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-25-christmas-letter-brian.jpg" alt="Brian in the woods">  
</figure>    
<p>Here are some of our highlights, activities and achievements of the year:</p>  
<p>In March, we did a thrift store date night with some of our church friends. Each couple picked out a $10-$15 outfit from a thrift store for their spouse, and then we all went out to eat together looking ridiculous. It was a blast, and we caused a lot of people to smile (and probably run for their cars!).</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-03-12-thrift-store-date-night.jpg" alt="Brian, Melissa, and their friends dressed in their thrift store purchases">      
    <figcaption>High fashion from the thrift store</figcaption>  
</figure>    
<p>In April, Brian attended a Men’s Advance Conference with the church, and thoroughly enjoyed the fellowship and teaching. We also took a day trip to New Orleans with Micah Bucy, where we tried some local food, got some beignets, and listened to a local jazz band on the street. We also checked out a costume shop. It was interesting to see all the creative ways people were making money, from juggling and magic tricks, to music performances, to being a living statue. It was a very fun day! 🎷</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-04-23-melissa-with-living-statue-in-new-orleans.jpg" alt="Melissa with a living statue in New Orleans">      
    <figcaption>Melissa with a living statue in New Orleans</figcaption>  
</figure>    
<p>Much of May and the month or two preceding was spent hanging out with Micah before he left for California. We miss you, Micah! In memoriam. 👨‍⚕️</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-05-10-micah-graduation.jpg" alt="Brian with Micah at his Medical School Graduation">      
    <figcaption>Micah at his Med School Graduation</figcaption>  
</figure>    
<p>June saw the launching of our podcast, <a href="http://tto.koser.us">Ten to One</a>! We were enjoying making top ten lists of different topics, and decided it would be fun to record and share them with you! We are up to 25 episodes now, and look forward to recording again after our Christmas hiatus. 🎙</p>  
<p>July was a busy month! Our church hosted its annual BBQ, Cake, and Pie competition. Melissa won first place for her delicious Baklava Pie, improving on last year’s third place finish. Even now she is planning which new recipes she will use as she continues to mow down the competition. 🏆</p>  
<p><iframe class="video-embed" width="560" height="315" src="https://www.youtube.com/embed/pNFToAqpqL4" frameborder="0" allowfullscreen=""></iframe></p>  
<p class="video-caption">Crossroads Bake-Off 2016 - News Report on Melissa</p>    
<p>We also celebrated Cow Appreciation day at Chick-Fil-A! This year Melissa convinced Brian to join her in dressing like a cow. 🐄</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-07-12-chik-fil-a-cows.jpg" alt="Brian, Melissa, and Lydia dressed up as cows at Chik-Fil-A">      
    <figcaption>Moo!</figcaption>  
</figure>    
<p>During Vacation Bible School, Brian and Melissa taught the 4th and 5th graders.</p>  
<p>Somebody died in August, and Melissa was a part of it! Masquerading as the erratic world leader Genesee Glasco, she hosted a murder mystery party for our Sunday school class. A fun time was had by all, and we look forward to possibly doing another next year. 🕵</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-08-28-murder-mystery.jpg" alt="Brian and Melissa at the Murder Mystery Party">      
    <figcaption>Genesee Glasco and Alfred Einstein</figcaption>  
</figure>    
<p>September was go, go, go. First we celebrated Lydia’s first birthday. Brian’s family was able to attend along with our church family, and we had a fun day complete with pizza, cupcakes, and a watermelon smash. 🍉</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-09-03-lydias-birthday.jpg" alt="Brian and Lydia at her birthday party">      
    <figcaption>Happy Birthday Lydia!</figcaption>  
</figure>    
<p>Next we took a trip out west for a vacation and a wedding. Our first stops were to visit Melissa’s family, first flying to Colorado to see Melody and her fiancé Nate, then to Los Angeles to visit Michael, Esther, and their children. ✈️ Next we drove up to visit Micah in Northern California, then to Washington, where we visited Dale and Donita. 🚗 Last we got to see Patty and Abe get married. </p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-09-24-penner-wedding.jpg" alt="Brian, Melissa, Lydia, and Patty at her wedding">      
    <figcaption>Congratulations Patty and Abe (not pictured, but he was there!)</figcaption>  
</figure>    
<p>One of our best vacations yet, and we were so glad to see everybody. For those asking when we will visit next: it’s your turn to visit us in Alabama. 😀</p>  
<p>At the end of October we traveled back to Colorado to see Nate and Melody get married. So happy for you both!</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-10-29-melody-wedding.jpg" alt="Lydia newly born">      
    <figcaption>Congratulations Melody and Nate! 💒</figcaption>  
</figure>    
<p>November saw us planning and making a full Thanksgiving meal for only the second time of our adult lives, and we started a new tradition: naming the turkey! This year’s esteemed bird was granted the moniker of Micah. 😆</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-11-24-micah-the-turkey.jpg" alt="Micah the Turkey">      
    <figcaption>Micah the Turkey 🦃</figcaption>  
</figure>    
<p>Joining us and Micah were Mom and Dad Binzel and most of Brian’s family. The next day, Melissa partook of her very first Black Friday shopping experience. It actually was not too bad; people were polite and stores were not too crowded.</p>  
<p>December, one of our favorite months! We celebrated our 5th anniversary by purchasing wooden board games, Crokinole and Quoridor. We also enjoyed lunch at Steak ’n Shake, saw some Christmas lights and ate homemade hot wings.</p>  
<figure>      
    <img src="http://cdn.koser.us/img/journal/2016-12-10-homemade-hot-wings.jpg" alt="Homemade hot wings">      
    <figcaption>Homemade hot wings are delicious 🍗</figcaption>  
</figure>    
<p>Tomorrow we will be driving up to Lousiana to have a Very Koser Christmas. 🎄 All of Brian’s siblings and their spouses, fiancés, and children will be under one roof, along with Grandma Sabol, making a party of seventeen! 🎉</p>  
<p>We are looking forward to making 2017 an even better year than 2016. Thanks for your part in making our year, and hopefully we will see you again in 2017. Merry Christmas! 👨‍👩‍👧</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (25, 1, N'Support Creators: The Dice Tower', N'support-creators-dice-tower', N'article/2017/01/05/1/support-creators-dice-tower', N'<p>Melissa and I have been into modern board games for a few years now. We’re hovering at around 100 games in our collection, keeping about 95% of our purchases. The main reason for this great success rate is <a href="www.dicetower.com">The Dice Tower</a>.</p>  
<figure>
    <img src="http://cdn.koser.us/img/journal/2015-06-25-dice-tower-con.jpg" alt="Brian and Melissa at Dice Tower Convention with Sam and David Healey">      
    <figcaption>Us with Sam Healey, one of the Dice Tower crew</figcaption>  
</figure>    
<p>The Dice Tower is the biggest board game media company (at least in English) and certainly the best. They do a podcast where they talk about all things board games. Another great resource is their video review channel on YouTube. For most games we’re interested in they have a video showing the basics of how the game is played and talking about whether or not they like the game.</p>  
<p>Another fun series is their Top Ten lists: check out the Top Ten Essential Games if you’re new to the hobby.</p>  
<p>For those interested in hearing about new games on a weekly basis, the most efficient way is to watch the Week In Review videos, where the Dice Tower crew gives 15-second overviews of all games reviewed that week.</p>  
<p>For being a great resource of information, as well as some of the kindest and most fun people around, I made The Dice Tower our Creator Donation for January 2017.</p>', N'Brian Koser supports The Dice Tower', CAST(N'2017-01-05T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Melissa and I have been into mod­ern board games for a few years now. We''re hov­er­ing at around 100 games in our col­lec­tion, keep­ing about 95% of our pur­chases. The main rea­son for this great suc­cess rate is The Dice Tower.', NULL, 1, NULL, N'<p>Melissa and I have been into modern board games for a few years now. We’re hovering at around 100 games in our collection, keeping about 95% of our purchases. The main reason for this great success rate is <a href="www.dicetower.com">The Dice Tower</a>.</p>  
<figure>
    <img src="http://cdn.koser.us/img/journal/2015-06-25-dice-tower-con.jpg" alt="Brian and Melissa at Dice Tower Convention with Sam and David Healey">      
    <figcaption>Us with Sam Healey, one of the Dice Tower crew</figcaption>  
</figure>    
<p>The Dice Tower is the biggest board game media company (at least in English) and certainly the best. They do a podcast where they talk about all things board games. Another great resource is their video review channel on YouTube. For most games we’re interested in they have a video showing the basics of how the game is played and talking about whether or not they like the game.</p>  
<p>Another fun series is their Top Ten lists: check out the Top Ten Essential Games if you’re new to the hobby.</p>  
<p>For those interested in hearing about new games on a weekly basis, the most efficient way is to watch the Week In Review videos, where the Dice Tower crew gives 15-second overviews of all games reviewed that week.</p>  
<p>For being a great resource of information, as well as some of the kindest and most fun people around, I made The Dice Tower our Creator Donation for January 2017.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (26, 1, N'Support Creators: My Media Experience', N'support-creators-my-media-experience', N'article/2017/02/15/1/support-creators-my-media-experience', N'<p>I’m in the middle of setting up a Home Theatre PC for my living room. When I’m done, it will back up files from our other devices, record TV from our antennae and remove commercials, play music and Blu-Ray discs, play Steam games, and a few other tricks.</p>  
<p>It’s a little tricky setting up the hardware and software for an HTPC, but I’ve found some good information online.</p>  
<p><a href="http://mymediaexperience.com">My Media Experience</a> has been the most helpful resource. Tuukka provides some pretty in-depth tutorials for free, and to thank him, I’ve made My Media Experience my February creator donation.</p>', N'Brian Koser supports My Media Experience', CAST(N'2017-02-15T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I’m in the mid­dle of set­ting up a Home The­atre PC for my liv­ing room. When I’m done, it will back up files from our other de­vices, record TV from our an­ten­nae and re­move com­mer­cials, play mu­sic and Blu-Ray discs, play Steam games, and a few othe', NULL, 1, NULL, N'<p>I’m in the middle of setting up a Home Theatre PC for my living room. When I’m done, it will back up files from our other devices, record TV from our antennae and remove commercials, play music and Blu-Ray discs, play Steam games, and a few other tricks.</p>  
<p>It’s a little tricky setting up the hardware and software for an HTPC, but I’ve found some good information online.</p>  
<p><a href="http://mymediaexperience.com">My Media Experience</a> has been the most helpful resource. Tuukka provides some pretty in-depth tutorials for free, and to thank him, I’ve made My Media Experience my February creator donation.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (27, 1, N'Christmas Letter 2017', N'christmas-letter-2017', N'article/2017/12/25/1/christmas-letter-2017', N'<p>Merry Christmas 2017!</p>
<p>2017 was a busy year with lots of changes for us.</p>
<p>In March, Brian travelled to Pennsylvania for his first business trip. The best part of the trip was that it took him close enough to visit family.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-grandpa.jpg" alt="Brian with Grandpa Koser">
    <figcaption>Holy cat!</figcaption>
</figure>
<p>We got to see a lot of family this year. The first event that brought a lot of us together was brother Matt’s graduation from Air Force training.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-matt-graduation.jpg" alt="Brian, Melissa and Lydia with Matt Koser at his graduation">
</figure>
<p>We’ve enjoyed continuing to podcast. It has certainly helped us get to know each other better, bringing out things we’re either very united or very divided on. One of our proudest moments was hyping Oreo O’s in our <a href="http://tto.koser.us/episodes/046-breakfast-cereals/">cereal episode</a> and then learning less than a week later that it was returning to stores!</p>
<p>In May we got to use one of Melissa’s Christmas gifts and see Celtic Woman in concert! While we enjoyed every minute of it, our favorite parts were when they sang old favorites such as “Orinoco Flow”.</p>
<p>We’ve stayed busy with different church activities, some of the more memorable being the Mother/?Daughter Luau and a dessert auction. Melissa enjoyed making crab appetizers for the former, and a gorgeous cake for the latter. We also got to participate in our yearly Neighborhood Bible Time, this year helping teach the preschool class. It was both precious and interesting; you just never know what those kids will say or do at any given time.</p>
<p>Another couple big events were Brian’s siblings weddings. Congratulations Matt and Amanda, and Josh and Megan!</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-matts-wedding.jpg" alt="Brian, Melissa, and Lydia with Matt and Amanda">
</figure>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-megans-wedding.jpg" alt="Brian and Melissa with Josh and Megan">
</figure>
<p>Melissa’s brother Tim finished his service with the Navy, staying with us for a few months while also driving across the country to visit family and friends. While he visited we took our summer vacation in Orlando with friends Micah and the Smiths. It was a fun week filled with a Pirate Dinner Adventure, a trip to Disney Springs, a spur-of-the-moment movie theater trip, and lots and lots of games. </p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-orlando.jpg" alt="Brian, Melissa, and Lydia with the pirate captain">
    <figcaption>Arrr!</figcaption>
</figure>
<p>A couple weeks after vacation we moved to a house in preparation for baby #2. The move went smoothly with help from our church friends, and we are now located a 10-minute walk away from Brian’s workplace. We took the opportunity of a fresh start to split our two bookshelves into his and hers, drafting all our books to determine where they’d be stored. Nerdy, but it’s how we get our thrills.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-book-draft.jpg" alt="Our books piled on the floor">
    <figcaption>Books stacked by author and genre</figcaption>
</figure>
<p>A few other highlights of the year were our birthday celebrations. For Brian’s, we got a babysitter, ate at a fancy restaurant overlooking the city, and stayed overnight at a local bed and breakfast. The next day we toured downtown Mobile, then headed back to the apartment for a surprise birthday party! For Melissa’s, we ate escargot (first time) and schnitzel at a local European restaurant. For Lydia’s, we had friends over for a Sesame Street party.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-sesame-street-birthday.jpg" alt="Sesame Street-themed snacks">
</figure>
<p>In October, Hurricane Nate cleared the way to the hospital so we could welcome our new addition, Amber London Koser! We were blessed to have Tim, Mom and Dad Binzel, and Mom Koser helping us the first few days after she was born.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-lydia-and-amber.jpg" alt="Lydia and Amber on the bed">
</figure>
<p>Two weeks later, our church held its annual pie and cake competition. Melissa was still recovering from childbirth, but at Brian’s encouragement she sent a blueberry cream pie with him and entered it in the competition. It won! This is her second year in a row winning first place in the pie division.</p>
<p>Hope your 2017 was as memorable as ours, and we hope to see many of you in 2018!</p>', N'The 2017 Christmas Letter for Brian, Melissa, Lydia, and Amber Koser', CAST(N'2017-12-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Merry Christ­mas 2017!', N'http://cdn.koser.us/img/journal/2017-12-24-christmas.jpg', 1, NULL, N'<p>Merry Christmas 2017!</p>
<p>2017 was a busy year with lots of changes for us.</p>
<p>In March, Brian travelled to Pennsylvania for his first business trip. The best part of the trip was that it took him close enough to visit family.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-grandpa.jpg" alt="Brian with Grandpa Koser">
    <figcaption>Holy cat!</figcaption>
</figure>
<p>We got to see a lot of family this year. The first event that brought a lot of us together was brother Matt’s graduation from Air Force training.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-matt-graduation.jpg" alt="Brian, Melissa and Lydia with Matt Koser at his graduation">
</figure>
<p>We’ve enjoyed continuing to podcast. It has certainly helped us get to know each other better, bringing out things we’re either very united or very divided on. One of our proudest moments was hyping Oreo O’s in our <a href="http://tto.koser.us/episodes/046-breakfast-cereals/">cereal episode</a> and then learning less than a week later that it was returning to stores!</p>
<p>In May we got to use one of Melissa’s Christmas gifts and see Celtic Woman in concert! While we enjoyed every minute of it, our favorite parts were when they sang old favorites such as “Orinoco Flow”.</p>
<p>We’ve stayed busy with different church activities, some of the more memorable being the Mother/?Daughter Luau and a dessert auction. Melissa enjoyed making crab appetizers for the former, and a gorgeous cake for the latter. We also got to participate in our yearly Neighborhood Bible Time, this year helping teach the preschool class. It was both precious and interesting; you just never know what those kids will say or do at any given time.</p>
<p>Another couple big events were Brian’s siblings weddings. Congratulations Matt and Amanda, and Josh and Megan!</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-matts-wedding.jpg" alt="Brian, Melissa, and Lydia with Matt and Amanda">
</figure>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-megans-wedding.jpg" alt="Brian and Melissa with Josh and Megan">
</figure>
<p>Melissa’s brother Tim finished his service with the Navy, staying with us for a few months while also driving across the country to visit family and friends. While he visited we took our summer vacation in Orlando with friends Micah and the Smiths. It was a fun week filled with a Pirate Dinner Adventure, a trip to Disney Springs, a spur-of-the-moment movie theater trip, and lots and lots of games. </p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-orlando.jpg" alt="Brian, Melissa, and Lydia with the pirate captain">
    <figcaption>Arrr!</figcaption>
</figure>
<p>A couple weeks after vacation we moved to a house in preparation for baby #2. The move went smoothly with help from our church friends, and we are now located a 10-minute walk away from Brian’s workplace. We took the opportunity of a fresh start to split our two bookshelves into his and hers, drafting all our books to determine where they’d be stored. Nerdy, but it’s how we get our thrills.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-book-draft.jpg" alt="Our books piled on the floor">
    <figcaption>Books stacked by author and genre</figcaption>
</figure>
<p>A few other highlights of the year were our birthday celebrations. For Brian’s, we got a babysitter, ate at a fancy restaurant overlooking the city, and stayed overnight at a local bed and breakfast. The next day we toured downtown Mobile, then headed back to the apartment for a surprise birthday party! For Melissa’s, we ate escargot (first time) and schnitzel at a local European restaurant. For Lydia’s, we had friends over for a Sesame Street party.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-sesame-street-birthday.jpg" alt="Sesame Street-themed snacks">
</figure>
<p>In October, Hurricane Nate cleared the way to the hospital so we could welcome our new addition, Amber London Koser! We were blessed to have Tim, Mom and Dad Binzel, and Mom Koser helping us the first few days after she was born.</p>
<figure>
    <img src="http://cdn.koser.us/img/journal/2017-12-25-christmas-letter-lydia-and-amber.jpg" alt="Lydia and Amber on the bed">
</figure>
<p>Two weeks later, our church held its annual pie and cake competition. Melissa was still recovering from childbirth, but at Brian’s encouragement she sent a blueberry cream pie with him and entered it in the competition. It won! This is her second year in a row winning first place in the pie division.</p>
<p>Hope your 2017 was as memorable as ours, and we hope to see many of you in 2018!</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (28, 1, N'Loop through Gridview data keys', N'loop-through-gridview-data-keys', N'article/2012/08/23/1/loop-through-gridview-data-keys', N'<p>Today I was adding an “Export to Excel” option to a Gridview. I wanted to mark each exported record in the database, but it wasn’t immediately apparent how I would do so. After far more searching than I expected, I came up with the following solution:</p>

<script src="https://gist.github.com/8260040.js"> </script>

<p>I was thinking I would need LINQ and casting and such…and it turns out you can just loop through a Gridview’s data keys.</p>', NULL, CAST(N'2012-08-23T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Today I was adding an “Export to Excel” option to a Gridview. I wanted to mark each exported record in the database, but it wasn’t immediately apparent how I would do so.', NULL, 1, NULL, N'<p>Today I was adding an “Export to Excel” option to a Gridview. I wanted to mark each exported record in the database, but it wasn’t immediately apparent how I would do so. After far more searching than I expected, I came up with the following solution:</p>

<script src="https://gist.github.com/8260040.js"> </script>

<p>I was thinking I would need LINQ and casting and such…and it turns out you can just loop through a Gridview’s data keys.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (29, 1, N'Ruby on Rails, I Choose You!', N'ruby-on-rails-i-choose-you', N'article/2013/03/09/1/ruby-on-rails-i-choose-you', N'<p>I don’t know about you, but the beginning of a programming project is one of my favorite times. And one of my favorite parts of the beginning is choosing the tools. The possibilities are limitless, and you can easily spend days (or weeks!) browsing Github repositories, reading blogs, trawling through Stack Overflow questions, etc.</p>

<p>I recently started a personal project, and, after the prerequisite soul-searching, decided to use Ruby on Rails. Now, professionally, I’m a Windows stack guy. Intellisense. C#. Oh yeah. But for this project, I wanted to try something different. Leave the minivan in the garage, and take the convertible out for a spin, so to speak. So I went with the polar opposite of .NET WebForms: Ruby on Rails.</p>

<p>It also helped that Rails is FOSS. (<a href="http://www.sublimetext.com/">Sublime Text</a> isn’t free, but it’s worth it.) I’m not a drum-beating, <a href="https://en.wikipedia.org/wiki/Richard_Stallman">Stallmanesque</a>, “Rah rah Open Source!” person, but neither am I a spendthrift. Since its just a personal project, I wanted to go with a low cost solution.</p>

<p>Also, Ruby on Rails seemed to be a good fit for this project. It’s basically going to be a CRUD app for now; maybe it will be more later, maybe not. But I don’t think I’ll be needing cool kid <a href="http://nodejs.org/">node.js</a> and his new-fangled ways. If I do end up adding more dynamic functionality (and what website doesn’t these days?) I’m planning to use <a href="http://emberjs.com/">Ember</a>.</p>

<p>And, I’ll admit it, I chose Rails because Rails is cool. Maybe it’s not so cool here in 2013 as it was a few years ago; in fact I went through the <a href="https://en.wikipedia.org/wiki/Hype_cycle">Gartner hype cycle</a> myself while I was researching options:</p>

<ol>
    <li>Hey look, Ruby on Rails. Ruby is cool.</li>
    <li>No, it’s <em>really</em> cool. Rails is the One True Path!</li>
    <li>Wait, a guy on a blog says it’s not cool.</li>
    <li>Another guy would rather write PHP than Rails (this is the lowest point of the disillusionment trough). I don’t like Rails.</li>
    <li>Wait, Rails isn’t that bad. These people are throwing out the baby with the bathwater. (And really, who throws out their bathwater these days? Let it run down the drain, sure, but actually throw it out?)</li>
    <li>OK, Rails is pretty good. Not perfect, but good.</li>
</ol>

<p>Anyway, a week or so after I settled for sure on Ruby/Rails/Ember, <a href="http://www.discourse.org/">Discourse</a> launched. And what do you know, Jeff Atwood et al. chose the same tech I had. That’s good enough confirmation for me. Yes, Ruby on Rails is not a panacea; in our lucid moments, I think we all know that nothing is. But it’s a solid framework, it will work for me, I’m going to learn a lot, and—most importantly—it’s going to be fun.</p>', NULL, CAST(N'2013-03-09T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I don’t know about you, but the beginning of a programming project is one of my favorite times. And one of my favorite parts of the beginning is choosing the tools.', NULL, 1, NULL, N'<p>I don’t know about you, but the beginning of a programming project is one of my favorite times. And one of my favorite parts of the beginning is choosing the tools. The possibilities are limitless, and you can easily spend days (or weeks!) browsing Github repositories, reading blogs, trawling through Stack Overflow questions, etc.</p>

<p>I recently started a personal project, and, after the prerequisite soul-searching, decided to use Ruby on Rails. Now, professionally, I’m a Windows stack guy. Intellisense. C#. Oh yeah. But for this project, I wanted to try something different. Leave the minivan in the garage, and take the convertible out for a spin, so to speak. So I went with the polar opposite of .NET WebForms: Ruby on Rails.</p>

<p>It also helped that Rails is FOSS. (<a href="http://www.sublimetext.com/">Sublime Text</a> isn’t free, but it’s worth it.) I’m not a drum-beating, <a href="https://en.wikipedia.org/wiki/Richard_Stallman">Stallmanesque</a>, “Rah rah Open Source!” person, but neither am I a spendthrift. Since its just a personal project, I wanted to go with a low cost solution.</p>

<p>Also, Ruby on Rails seemed to be a good fit for this project. It’s basically going to be a CRUD app for now; maybe it will be more later, maybe not. But I don’t think I’ll be needing cool kid <a href="http://nodejs.org/">node.js</a> and his new-fangled ways. If I do end up adding more dynamic functionality (and what website doesn’t these days?) I’m planning to use <a href="http://emberjs.com/">Ember</a>.</p>

<p>And, I’ll admit it, I chose Rails because Rails is cool. Maybe it’s not so cool here in 2013 as it was a few years ago; in fact I went through the <a href="https://en.wikipedia.org/wiki/Hype_cycle">Gartner hype cycle</a> myself while I was researching options:</p>

<ol>
    <li>Hey look, Ruby on Rails. Ruby is cool.</li>
    <li>No, it’s <em>really</em> cool. Rails is the One True Path!</li>
    <li>Wait, a guy on a blog says it’s not cool.</li>
    <li>Another guy would rather write PHP than Rails (this is the lowest point of the disillusionment trough). I don’t like Rails.</li>
    <li>Wait, Rails isn’t that bad. These people are throwing out the baby with the bathwater. (And really, who throws out their bathwater these days? Let it run down the drain, sure, but actually throw it out?)</li>
    <li>OK, Rails is pretty good. Not perfect, but good.</li>
</ol>

<p>Anyway, a week or so after I settled for sure on Ruby/Rails/Ember, <a href="http://www.discourse.org/">Discourse</a> launched. And what do you know, Jeff Atwood et al. chose the same tech I had. That’s good enough confirmation for me. Yes, Ruby on Rails is not a panacea; in our lucid moments, I think we all know that nothing is. But it’s a solid framework, it will work for me, I’m going to learn a lot, and—most importantly—it’s going to be fun.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (30, 1, N'MVC (My Viewpoint Changes)', N'mvc-my-viewpoint-changes', N'article/2013/06/25/1/mvc-my-viewpoint-changes', N'<p>Last time I wrote about how much I like the beginning of a project. Opening up all the cans of tech and getting a big whiff of that new technology smell…<i>sniff</i> Aaaah. Well, I liked choosing the technologies for my new project so much, that I decided to do it again!</p>

<p>Ruby on Rails seems like a great framework. I had fun messing around with it, reading blogs, doing the tutorials. Great fun. But it’s June. Almost July. Four months later, and I’m still working through tutorials.</p>

<p>This isn’t really a Ruby on Rails issue so much as a technology-that-I-don’t-know issue and a I-don’t-have-copious-amounts-of-free-time-to-learn-this-technology issue. I do have a life beyond programming, and at this point, I just want to start building this website. So, new requirements:</p>

<ol>
    <li>Something I already know, or at least close, so I can actually get the project done</li>
    <li>Something new (to me at least)</li>
</ol>

<p>And, most importantly,</p>

<ol start="3">
    <li>Something the cool kids are using</li>
</ol>

<p>Yes, 1 and 2 are contradictory, thank you for pointing that out. Before you get too smug, let me say that I found what I was looking for.</p>

<figure>
    <img src="http://cdn.koser.us/img/journal/2013-06-25-mvc4.jpg" alt="ASP.NET MVC" />
</figure>

<p>Behold, ASP.NET MVC. Careful, don’t let the sheer power of all those capital letters overwhelm you. For me, ASP.NET MVC is sort of a compromise between learning something completely new, like Rails, and using something I already know, like ASP.NET Webforms.</p>

<p>So I’ll be using ASP.NET MVC with Azure. I’ll still probably use Ember as well. We’ll see how far I get this time before deciding to switch to node.js or meteor or…</p>', NULL, CAST(N'2013-06-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Last time I wrote about how much I like the beginning of a project. Opening up all the cans of tech and getting a big whiff of that new technology smell…sniff Aaaah. Well, I liked choosing the technologies for my new project so much, that I decided to do i', NULL, 1, NULL, N'<p>Last time I wrote about how much I like the beginning of a project. Opening up all the cans of tech and getting a big whiff of that new technology smell…<i>sniff</i> Aaaah. Well, I liked choosing the technologies for my new project so much, that I decided to do it again!</p>

<p>Ruby on Rails seems like a great framework. I had fun messing around with it, reading blogs, doing the tutorials. Great fun. But it’s June. Almost July. Four months later, and I’m still working through tutorials.</p>

<p>This isn’t really a Ruby on Rails issue so much as a technology-that-I-don’t-know issue and a I-don’t-have-copious-amounts-of-free-time-to-learn-this-technology issue. I do have a life beyond programming, and at this point, I just want to start building this website. So, new requirements:</p>

<ol>
    <li>Something I already know, or at least close, so I can actually get the project done</li>
    <li>Something new (to me at least)</li>
</ol>

<p>And, most importantly,</p>

<ol start="3">
    <li>Something the cool kids are using</li>
</ol>

<p>Yes, 1 and 2 are contradictory, thank you for pointing that out. Before you get too smug, let me say that I found what I was looking for.</p>

<figure>
    <img src="http://cdn.koser.us/img/journal/2013-06-25-mvc4.jpg" alt="ASP.NET MVC" />
</figure>

<p>Behold, ASP.NET MVC. Careful, don’t let the sheer power of all those capital letters overwhelm you. For me, ASP.NET MVC is sort of a compromise between learning something completely new, like Rails, and using something I already know, like ASP.NET Webforms.</p>

<p>So I’ll be using ASP.NET MVC with Azure. I’ll still probably use Ember as well. We’ll see how far I get this time before deciding to switch to node.js or meteor or…</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (31, 1, N'Oracle Parameter Precision', N'oracle-parameter-precision', N'article/2013/08/22/1/oracle-parameter-precision', N'<p>When I first started writing Oracle PL/SQL, I tried to define function and procedure parameters in the same way I defined SQL table columns:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration1.sql"> </script>

<p>Of course, you get a compile-time error if you try to specify precision for parameters. Instead you have to do:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration2.sql"> </script>

<p>Ah, but you can also define parameter types in terms of tables:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration3.sql"> </script>

<p>And I assumed this enforced the precision of the table’s columns, if it had any.</p>

<p>Never assume.</p>

<p>The parameters will not enforce the precision of the columns they are based on.</p>

<p>Why doesn’t Oracle allow you to specify precision for your parameters? I assume (ha ha) that there’s an actual reason, but I don’t know enough to guess what that reason might be.</p>', NULL, CAST(N'2013-08-22T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'When I first started writing Oracle PL/SQL, I tried to define function and procedure parameters in the same way I defined SQL table columns:', NULL, 1, NULL, N'<p>When I first started writing Oracle PL/SQL, I tried to define function and procedure parameters in the same way I defined SQL table columns:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration1.sql"> </script>

<p>Of course, you get a compile-time error if you try to specify precision for parameters. Instead you have to do:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration2.sql"> </script>

<p>Ah, but you can also define parameter types in terms of tables:</p>

<script src="https://gist.github.com/8260111.js?file=PLSQLDeclaration3.sql"> </script>

<p>And I assumed this enforced the precision of the table’s columns, if it had any.</p>

<p>Never assume.</p>

<p>The parameters will not enforce the precision of the columns they are based on.</p>

<p>Why doesn’t Oracle allow you to specify precision for your parameters? I assume (ha ha) that there’s an actual reason, but I don’t know enough to guess what that reason might be.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (32, 1, N'Preventing Duplicate Selections with C# and jQuery Validation', N'preventing-duplicate-selections-with-c-and-jquery-validation', N'article/2013/09/05/1/preventing-duplicate-selections-with-c-and-jquery-validation', N'<p>A few days ago, while working on a web page, I got to write my favorite type of code: validation.</p>

<figure>
    <img src="http://cdn.koser.us/img/journal/2013-09-05-validation.png" alt="jQuery validation" />
</figure>

<p>Ha ha. Actually I’d rather floss with a brick than write validation.</p>

<p>Anyway, I was writing validation for an ASP.NET/C# registration page. The page has three dropdown lists, each with the same list of courses. Students can register for up to three courses by choosing a course in each dropdown list. The validation I was writing needed to prevent a student from registering for a course multiple times. It seemed like there should be a simple solution, but it wasn’t jumping out at me, so I started to pseudocode a naive solution.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates1.txt"> </script>

<p>Okay, not very elegant. And not easily scalable <del>if</del> when I’m asked to add a fourth dropdown.  I started coding it out a little more in the hopes of seeing a pattern.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates2.txt"> </script>

<p>Then I had a “eureka” moment: I could put the values in an array, get the count of unique items, and check if the number of values is equal to the number of unique values.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates1.cs"> </script>

<p>This works because I don’t care how many duplicates there are, or which values are duplicated. I just want to know if duplicates exist.</p>

<p>However, it’s not quite complete. If a student registers for only one course, say “History 101”, dropdown list 1 will have the value “HI 101” and dropdowns 2 and 3 will be empty strings. Since <code>"" == ""</code>, I’ll need to allow multiple empty strings.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates2.cs"> </script>

<p>Boom. And in jQuery:</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates.js"> </script>

<p>I still don’t like writing validation, but…it has its interesting moments.</p>', NULL, CAST(N'2013-09-05T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'A few days ago, while working on a web page, I got to write my favorite type of code: validation. Ha ha. Actually I’d rather floss with a brick than write validation.', NULL, 1, NULL, N'<p>A few days ago, while working on a web page, I got to write my favorite type of code: validation.</p>

<figure>
    <img src="http://cdn.koser.us/img/journal/2013-09-05-validation.png" alt="jQuery validation" />
</figure>

<p>Ha ha. Actually I’d rather floss with a brick than write validation.</p>

<p>Anyway, I was writing validation for an ASP.NET/C# registration page. The page has three dropdown lists, each with the same list of courses. Students can register for up to three courses by choosing a course in each dropdown list. The validation I was writing needed to prevent a student from registering for a course multiple times. It seemed like there should be a simple solution, but it wasn’t jumping out at me, so I started to pseudocode a naive solution.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates1.txt"> </script>

<p>Okay, not very elegant. And not easily scalable <del>if</del> when I’m asked to add a fourth dropdown.  I started coding it out a little more in the hopes of seeing a pattern.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates2.txt"> </script>

<p>Then I had a “eureka” moment: I could put the values in an array, get the count of unique items, and check if the number of values is equal to the number of unique values.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates1.cs"> </script>

<p>This works because I don’t care how many duplicates there are, or which values are duplicated. I just want to know if duplicates exist.</p>

<p>However, it’s not quite complete. If a student registers for only one course, say “History 101”, dropdown list 1 will have the value “HI 101” and dropdowns 2 and 3 will be empty strings. Since <code>"" == ""</code>, I’ll need to allow multiple empty strings.</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates2.cs"> </script>

<p>Boom. And in jQuery:</p>

<script src="https://gist.github.com/8260138.js?file=PreventingDuplicates.js"> </script>

<p>I still don’t like writing validation, but…it has its interesting moments.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (33, 1, N'Oracle Numbers to English', N'oracle-numbers-to-english', N'article/2013/10/16/1/oracle-numbers-to-english', N'<p>Oracle has built-in methods for a lot of things. Converting from Arabic to Roman numerals? <a href="http://docs.oracle.com/cd/E16655_01/server.121/e17209/sql_elements004.htm#r15c1-t61">Check</a>. Generating a byte string containing all valid 1-byte encodings between two given bytes? <a href="http://docs.oracle.com/cd/E16655_01/appdev.121/e17602/u_raw.htm#ARPLS71430">Sure</a>. Generating ASCII-art llamas from the statistics gathered on crossedition triggers? Well, maybe in 13c.</p>

<p>You can also spell numbers out in English, although I’m not sure if that was an intended use of the functions we’ll be using today. Nevertheless.</p>

<p>The magic that makes it all happen is the <a href="http://en.wikipedia.org/wiki/Julian_calendar">Julian date</a>.</p>

<script src="https://gist.github.com/8260183.js?file=JulianDate.sql"> </script>

<p>This code converts the number to a Julian date (format specifier “J”) then to a string representing the Julian date, which is the number again.</p>

<p>Why convert the number to a date before converting to a string? Well, <code>to_char(string, format)</code> doesn’t accept the format specifiers we’ll need to use; the date version, <code>to_char(date, format)</code>, does accept those specifiers, so we first convert to a date before converting to string. And in this case Julian dates are easier to work with because they are stored as a number of days since January 1, 4712 <abbr>BC</abbr>. This allows us to easily go from number to date to string, as you saw above.</p>

<p>Caveat: for a number to be converted to a Julian date it will need to be between 1 and 5,373,484 (the highest valid number will have increased by the time you read this). The highest valid number is the number of days since January 1, 4712 <abbr>BC</abbr>. If you need to handle 0, negatives, decimals, or numbers larger than about 5 million, you’ll need to write additional code.</p>

<p>Once we have our date, we’ll convert it to the string we want:</p>

<h2 id="spelled-out">Spelled Out</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToSpelled.sql"> </script>
<p>The format specifier, “Jsp”, can be broken down into two parts:</p>
<ul>
    <li>“J” gives us a Julian date</li>
    <li>“sp” (short for “spelling”) converts the number to English</li>
</ul>
<p>You can also use “JSP” (gives you the string in all caps) and “jsp” (gives you the string in all lower case).</p>

<h2 id="ordinal">Ordinal</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToOrdinal.sql"> </script>
<ul>
    <li>“fm” removes leading zeroes</li>
    <li>“J” gives us a Julian date</li>
    <li>
        “th” adds the ordinal suffix, so we can get 1st, 2nd, 8th, etc.
        <ul>
            <li>I assume that “th” is used because most ordinals end in “th”.</li>
        </ul>
    </li>
</ul>

<h2 id="spelled-out-ordinals">Spelled-Out Ordinals</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToSpelledOrdinal.sql"> </script>
<p>And if we combine the two, we get spelled-out ordinals.</p>
<p>So get out there and spell some numbers. I’m sure you’re excited to take advantage of your new-found knowledge; if you can’t think of a use for this code, why not add the below to a report?</p>

<script src="https://gist.github.com/8260183.js?file=AprilFools.sql"> </script>', NULL, CAST(N'2013-10-16T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Oracle has built-in methods for a lot of things. Converting from Arabic to Roman numerals? Check. Generating a byte string containing all valid 1-byte encodings between two given bytes? Sure. Generating ASCII-art llamas from the statistics gathered on cros', NULL, 1, NULL, N'<p>Oracle has built-in methods for a lot of things. Converting from Arabic to Roman numerals? <a href="http://docs.oracle.com/cd/E16655_01/server.121/e17209/sql_elements004.htm#r15c1-t61">Check</a>. Generating a byte string containing all valid 1-byte encodings between two given bytes? <a href="http://docs.oracle.com/cd/E16655_01/appdev.121/e17602/u_raw.htm#ARPLS71430">Sure</a>. Generating ASCII-art llamas from the statistics gathered on crossedition triggers? Well, maybe in 13c.</p>

<p>You can also spell numbers out in English, although I’m not sure if that was an intended use of the functions we’ll be using today. Nevertheless.</p>

<p>The magic that makes it all happen is the <a href="http://en.wikipedia.org/wiki/Julian_calendar">Julian date</a>.</p>

<script src="https://gist.github.com/8260183.js?file=JulianDate.sql"> </script>

<p>This code converts the number to a Julian date (format specifier “J”) then to a string representing the Julian date, which is the number again.</p>

<p>Why convert the number to a date before converting to a string? Well, <code>to_char(string, format)</code> doesn’t accept the format specifiers we’ll need to use; the date version, <code>to_char(date, format)</code>, does accept those specifiers, so we first convert to a date before converting to string. And in this case Julian dates are easier to work with because they are stored as a number of days since January 1, 4712 <abbr>BC</abbr>. This allows us to easily go from number to date to string, as you saw above.</p>

<p>Caveat: for a number to be converted to a Julian date it will need to be between 1 and 5,373,484 (the highest valid number will have increased by the time you read this). The highest valid number is the number of days since January 1, 4712 <abbr>BC</abbr>. If you need to handle 0, negatives, decimals, or numbers larger than about 5 million, you’ll need to write additional code.</p>

<p>Once we have our date, we’ll convert it to the string we want:</p>

<h2 id="spelled-out">Spelled Out</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToSpelled.sql"> </script>
<p>The format specifier, “Jsp”, can be broken down into two parts:</p>
<ul>
    <li>“J” gives us a Julian date</li>
    <li>“sp” (short for “spelling”) converts the number to English</li>
</ul>
<p>You can also use “JSP” (gives you the string in all caps) and “jsp” (gives you the string in all lower case).</p>

<h2 id="ordinal">Ordinal</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToOrdinal.sql"> </script>
<ul>
    <li>“fm” removes leading zeroes</li>
    <li>“J” gives us a Julian date</li>
    <li>
        “th” adds the ordinal suffix, so we can get 1st, 2nd, 8th, etc.
        <ul>
            <li>I assume that “th” is used because most ordinals end in “th”.</li>
        </ul>
    </li>
</ul>

<h2 id="spelled-out-ordinals">Spelled-Out Ordinals</h2>
<script src="https://gist.github.com/8260183.js?file=NumberToSpelledOrdinal.sql"> </script>
<p>And if we combine the two, we get spelled-out ordinals.</p>
<p>So get out there and spell some numbers. I’m sure you’re excited to take advantage of your new-found knowledge; if you can’t think of a use for this code, why not add the below to a report?</p>

<script src="https://gist.github.com/8260183.js?file=AprilFools.sql"> </script>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (34, 1, N'12 Reasons I Hate SQL Developer', N'12-reasons-i-hate-sql-developer', N'article/2014/01/02/1/12-reasons-i-hate-sql-developer', N'<p><ins datetime="2015-07-25">I haven’t worked in Oracle for a year now, and I know many of these problems were fixed in later versions. <a href="http://www.thatjeffsmith.com/about/">Jeff Smith</a> sent me a very nice email and offered to help me work through any remaining issues; if I still worked in Oracle I would have taken him up on it.</ins></p>

<p>I don’t like Oracle’s SQL Developer. It’s hard to like a <abbr>GUI</abbr> with so many usability problems. The first version was released in 2006, but the interface feels much older. It’s certainly not bug-free, let alone polished. </p>

<p>I’m told that it’s better than our office’s previous Oracle <abbr>GUI</abbr> (possibly Oracle Enterprise Manager?), and apparently Toad has it’s own problems. And hey, it’s free! At such times I imagine someone saying, “I know you don’t like getting punched in the gut, but it’s a lot better than back in the day when we got punched in the face. And hey, it’s a free punch in the gut!” </p>

<p>OK, so I’m using hyperbole. A better analogy would be death by a thousand tiny cuts. Here is my personal list of the most annoying of the cuts, in no particular order.</p>

<h2 id="tabs">Tabs</h2>
<p>Attention makers of programs with tabs: all I want to do with tabs is move them left and right. I don’t want to pull them out and snap them inside the program window à la Windows 8. I don’t want them to float in front of the program window. And I certainly don’t want to only be able to move my tabs to the far right of the tab well, Oracle.</p>

<h2 id="copypaste">Copy/paste</h2>
<p>Normally you can copy/paste a field from a table without problems. However, sometimes, for no apparent reason, instead of copying the contents of the field, the field will go into edit mode without placing the contents onto the clipboard.</p>
<h2 id="collapsing-procedures">Collapsing procedures</h2>
<p>One of my favorite Visual Studio keyboard shortcuts  is <kbd>Ctrl</kbd> + <kbd>M</kbd>, <kbd>O</kbd>, which collapses methods so you can browse method definitions. SQL Developer kind of supports this; there’s no keyboard shortcut but you can right-click the gutter and select “Collapse procedure declarations/bodies”. Unfortunately, collapsed procedures will not stay collapsed for long; they’ll expand if you copy/paste into the package. Or if you expand other procedures nearby. Or sometimes if you just hit the return key. Or if it’s raining on a Tuesday.</p>

<h2 id="search">Search</h2>
<p>When I’m searching in a package header, I often want to search for the same thing in the package body. The search bar should do a global search, not just the current file.</p>

<h2 id="undo-function">Undo function</h2>
<p>When you compile a package header, your undo history is deleted. Why does SQL Developer assume I would never want to undo code that I’ve just compiled?  Also, the undo history is very limited; I estimate the last 50 changes.</p>

<h2 id="kbdctrlkbd--click"><kbd>Ctrl</kbd> + click</h2>
<p>If you hold <kbd>Ctrl</kbd> and click on a function name in a package header, it will take you to the function body in the package body. Except when it doesn’t. There are some packages it just never works for. Sometimes it “works”; it takes me to the package body, but nowhere near the body of the function I clicked on. Even when working correctly, the navigated-to function is at the very bottom of the screen. Why can’t it be in the middle of the page, like when I search for the function name?</p>

<h2 id="table-scrolling-abbrguiabbr">Table scrolling <abbr>GUI</abbr></h2>  <p>If you scroll through the contents of a table, switch tabs, then come back, you will be at the top of the results instead of where you had scrolled to.</p>

<h2 id="error-log-window">Error log window</h2>
<p>When you double-click on a package compilation error in the error log window, often it will bring up the line of code at the bottom of the worksheet…underneath the error log window. This is unavoidable if the code is on the last line of the package, but I’ve also noticed it for functions right in the middle of the file.</p>

<h2 id="font-choice">Font Choice</h2>
<p>I like to be able to customize the font for programs, and in SQL Developer you can change the font used for the <abbr>SQL</abbr> editor and table data. I like to use a monospace font for code editing (<a href="https://github.com/adobe/source-code-pro">Source Code Pro</a> is my current favorite.). However, when you edit data with the table <abbr>GUI</abbr>, SQL Developer always uses a proportional font. This is the opposite of font best practices: <a href="http://www.joelonsoftware.com/uibook/chapters/fog0000000063.html">editing text in a monospace font is much easier</a>. Proportional fonts are easier to read, so you would expect to find these used for display text, not for editing text.</p>

<h2 id="table-filter-autocomplete">Table filter autocomplete</h2>
<p>If you start typing a column name into the table filter box and then accept the autocomplete, the column name will be put in place of what you have typed. Good. However, if you <em>finish</em> typing the name of the column and you accept the autocomplete (which still pops up even after you’ve typed a valid column), what you have typed will remain and the autocomplete will be tacked on to the end. Not good. For example, if I type “tableid = ” and the autocomplete offers “tableid = 123”, when I accept the autocomplete I end up with “tableid = tableid = 123”.</p>

<h2 id="code-templates">Code templates</h2>
<p>Code templates are SQL Developer’s brand of text expansion. My main annoyance with them is that they don’t work in stored <abbr>PL/SQL</abbr> windows, only in worksheets. Since most of my time is spent in packages, I was never able to rely on this feature. However, this doesn’t really bother me anymore, because I now use <a href="http://www.16software.com/breevy/">Breevy</a>, which works everywhere. Highly recommended.</p>

<h2 id="lack-of-column-mode">Lack of column mode</h2>
<p>Nowadays I consider this a must-have text editor feature. Visual Studio and Notepad++ have a basic support of the feature, although neither compares to Sublime Text’s superb column mode. Even Geany has a column mode. Why doesn’t SQL Developer have column mode?</p>

<p>In the end, SQL Developer does the job, and perhaps these points are all quibbles. I still think that there’s no reason that a seven-year old program (albeit a free program) should have so many usability problems.</p>', NULL, CAST(N'2014-01-02T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I don’t like Oracle’s SQL Developer. It’s hard to like a GUI with so many usability problems.', NULL, 1, NULL, N'<p><ins datetime="2015-07-25">I haven’t worked in Oracle for a year now, and I know many of these problems were fixed in later versions. <a href="http://www.thatjeffsmith.com/about/">Jeff Smith</a> sent me a very nice email and offered to help me work through any remaining issues; if I still worked in Oracle I would have taken him up on it.</ins></p>

<p>I don’t like Oracle’s SQL Developer. It’s hard to like a <abbr>GUI</abbr> with so many usability problems. The first version was released in 2006, but the interface feels much older. It’s certainly not bug-free, let alone polished. </p>

<p>I’m told that it’s better than our office’s previous Oracle <abbr>GUI</abbr> (possibly Oracle Enterprise Manager?), and apparently Toad has it’s own problems. And hey, it’s free! At such times I imagine someone saying, “I know you don’t like getting punched in the gut, but it’s a lot better than back in the day when we got punched in the face. And hey, it’s a free punch in the gut!” </p>

<p>OK, so I’m using hyperbole. A better analogy would be death by a thousand tiny cuts. Here is my personal list of the most annoying of the cuts, in no particular order.</p>

<h2 id="tabs">Tabs</h2>
<p>Attention makers of programs with tabs: all I want to do with tabs is move them left and right. I don’t want to pull them out and snap them inside the program window à la Windows 8. I don’t want them to float in front of the program window. And I certainly don’t want to only be able to move my tabs to the far right of the tab well, Oracle.</p>

<h2 id="copypaste">Copy/paste</h2>
<p>Normally you can copy/paste a field from a table without problems. However, sometimes, for no apparent reason, instead of copying the contents of the field, the field will go into edit mode without placing the contents onto the clipboard.</p>
<h2 id="collapsing-procedures">Collapsing procedures</h2>
<p>One of my favorite Visual Studio keyboard shortcuts  is <kbd>Ctrl</kbd> + <kbd>M</kbd>, <kbd>O</kbd>, which collapses methods so you can browse method definitions. SQL Developer kind of supports this; there’s no keyboard shortcut but you can right-click the gutter and select “Collapse procedure declarations/bodies”. Unfortunately, collapsed procedures will not stay collapsed for long; they’ll expand if you copy/paste into the package. Or if you expand other procedures nearby. Or sometimes if you just hit the return key. Or if it’s raining on a Tuesday.</p>

<h2 id="search">Search</h2>
<p>When I’m searching in a package header, I often want to search for the same thing in the package body. The search bar should do a global search, not just the current file.</p>

<h2 id="undo-function">Undo function</h2>
<p>When you compile a package header, your undo history is deleted. Why does SQL Developer assume I would never want to undo code that I’ve just compiled?  Also, the undo history is very limited; I estimate the last 50 changes.</p>

<h2 id="kbdctrlkbd--click"><kbd>Ctrl</kbd> + click</h2>
<p>If you hold <kbd>Ctrl</kbd> and click on a function name in a package header, it will take you to the function body in the package body. Except when it doesn’t. There are some packages it just never works for. Sometimes it “works”; it takes me to the package body, but nowhere near the body of the function I clicked on. Even when working correctly, the navigated-to function is at the very bottom of the screen. Why can’t it be in the middle of the page, like when I search for the function name?</p>

<h2 id="table-scrolling-abbrguiabbr">Table scrolling <abbr>GUI</abbr></h2>  <p>If you scroll through the contents of a table, switch tabs, then come back, you will be at the top of the results instead of where you had scrolled to.</p>

<h2 id="error-log-window">Error log window</h2>
<p>When you double-click on a package compilation error in the error log window, often it will bring up the line of code at the bottom of the worksheet…underneath the error log window. This is unavoidable if the code is on the last line of the package, but I’ve also noticed it for functions right in the middle of the file.</p>

<h2 id="font-choice">Font Choice</h2>
<p>I like to be able to customize the font for programs, and in SQL Developer you can change the font used for the <abbr>SQL</abbr> editor and table data. I like to use a monospace font for code editing (<a href="https://github.com/adobe/source-code-pro">Source Code Pro</a> is my current favorite.). However, when you edit data with the table <abbr>GUI</abbr>, SQL Developer always uses a proportional font. This is the opposite of font best practices: <a href="http://www.joelonsoftware.com/uibook/chapters/fog0000000063.html">editing text in a monospace font is much easier</a>. Proportional fonts are easier to read, so you would expect to find these used for display text, not for editing text.</p>

<h2 id="table-filter-autocomplete">Table filter autocomplete</h2>
<p>If you start typing a column name into the table filter box and then accept the autocomplete, the column name will be put in place of what you have typed. Good. However, if you <em>finish</em> typing the name of the column and you accept the autocomplete (which still pops up even after you’ve typed a valid column), what you have typed will remain and the autocomplete will be tacked on to the end. Not good. For example, if I type “tableid = ” and the autocomplete offers “tableid = 123”, when I accept the autocomplete I end up with “tableid = tableid = 123”.</p>

<h2 id="code-templates">Code templates</h2>
<p>Code templates are SQL Developer’s brand of text expansion. My main annoyance with them is that they don’t work in stored <abbr>PL/SQL</abbr> windows, only in worksheets. Since most of my time is spent in packages, I was never able to rely on this feature. However, this doesn’t really bother me anymore, because I now use <a href="http://www.16software.com/breevy/">Breevy</a>, which works everywhere. Highly recommended.</p>

<h2 id="lack-of-column-mode">Lack of column mode</h2>
<p>Nowadays I consider this a must-have text editor feature. Visual Studio and Notepad++ have a basic support of the feature, although neither compares to Sublime Text’s superb column mode. Even Geany has a column mode. Why doesn’t SQL Developer have column mode?</p>

<p>In the end, SQL Developer does the job, and perhaps these points are all quibbles. I still think that there’s no reason that a seven-year old program (albeit a free program) should have so many usability problems.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (35, 1, N'A Complex Query', N'a-complex-query', N'article/2014/07/17/1/a-complex-query', N'<p>I’ve written a lot of SQL, but most of it tends to be pretty simple. Even most of the large queries that I’ve written aren’t complex, they just have a lot of tables and columns to deal with. Probably the most complicated and interesting query I’ve written calculates dates based on a hierarchy of date offsets.</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=Query-Blog.sql"> </script>

<p>Recursion, a cross join, a full outer join…there’s a lot of interesting pieces here. Let’s break it down:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid,
       EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
  FROM eventdateoffsets
 CROSS 
  JOIN table(integers(3))
 WHERE parentoffsetid IS NULL
</code></pre>

<p><code>integers</code> is an alias for a simple function that returns a pipelined array of numbers from 1 up to the parameter provided:</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=integers.sql"> </script>

<p>So <code>integers(3)</code> returns an array containing 1, 2, 3. <code>table</code> is an alias for a function that converts the array to an Oracle table, which allows us to join to it. A cross join (aka Cartesian join) matches every row in table A with every row in table B, so no join conditions are necessary.</p>

<p><code>eventdateoffsets</code> is the table holding all the event information:</p>

<table>
    <thead>
        <tr>
            <th>eventdateoffsets</th>
            <th> </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>offsetid</td>
            <td>Number (PK)</td>
        </tr>
        <tr>
            <td>eventname</td>
            <td>Varchar2</td>
        </tr>
        <tr>
            <td>parentoffsetid</td>
            <td>Number</td>
        </tr>
        <tr>
            <td>eventoffset</td>
            <td>Interval</td>
        </tr>
    </tbody>
</table>

<p>The parentoffsetid is the offsetid of the date that this date is based on. The eventoffset is how much before or after the parent date that the event takes place. This allows us to set up relations from our business rules like “registration always takes place two days after Labor Day” or “students can cancel courses until one week after classes begin”. The data looks something like this:</p>

<table>
    <thead>
        <tr>
            <th>offsetid</th>
            <th>eventname</th>
            <th>parentoffsetid</th>
            <th>eventoffset</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Labor Day</td>
            <td>null</td>
            <td>null</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Registration Begins</td>
            <td>1</td>
            <td>+ 00 08:00</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Registration Ends</td>
            <td>2</td>
            <td>+ 03 14:00</td>
        </tr>
    </tbody>
</table>

<p>Here registration begins at 8 <abbr>am</abbr> on Labor Day and ends three days later at 10 <abbr>pm</abbr>. Notice that Labor Day doesn’t have a parent; that will be important later.</p>

<p>Back to the query:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid,
       EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
  FROM eventdateoffsets
 CROSS 
  JOIN table(integers(3))
 WHERE parentoffsetid IS NULL
</code></pre>

<p><code>EXTRACT(YEAR FROM SYSDATE) + column_value - 2</code> gets the current year (as of this writing, 2014) and adds the value from the integers table (1, 2, 3) and subtracts 2. In effect, this adds -1, 0, and 1 to the current year, giving us last year, this year, and next year (as of this writing 2013, 2014, and 2015).</p>

<p><code>WHERE parentoffsetid IS NULL</code>: remember in our example how Labor Day didn’t have a parent? This query is getting all the dates without a parent; I call them “source dates”. These are our foundation. Some are holidays like Labor Day and Thanksgiving. Others are dates determined by Business Rules which haven’t been integrated into this system. This part of the query gets all the source dates with an <code>eventyear</code> of last year, this year, and next year. Let’s go one level higher:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid, eventyear, 
     (SELECT api.GetSourceDate(eventname, eventyear) FROM dual) AS eventdate, 
     (SELECT api.GetSourceAcademicYear(eventname, eventyear) FROM dual) AS academicyear
FROM (SELECT eventname, displayname, offsetid, parentoffsetid,
             EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
        FROM eventdateoffsets
       CROSS 
        JOIN table(integers(3))
       WHERE parentoffsetid IS NULL
     )
</code></pre>

<p><code>api.GetSourceDate()</code> calculates the date for a source date for a given year. It basically is a giant <code>CASE</code> that looks something like:</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=GetSourceDate.sql"> </script>

<p><code>api.GetSourceAcademicYear()</code> calculates the academic year (which starts in September when the fall semester begins) for the event.</p>

<p>Now that the parent dates are set, we can determine the child dates. Since child dates can be parents for further dates, we need to calculate the hierarchy recursively:</p>


<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid, eventyear, 
     (SELECT api.GetSourceDate(eventname, eventyear) FROM dual) AS eventdate
FROM (SELECT eventname, displayname, offsetid, parentoffsetid,
             EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
        FROM eventdateoffsets
       CROSS 
        JOIN table(integers(3))
       WHERE parentoffsetid IS NULL
     )
UNION ALL
SELECT childdates.eventname, childdates.displayname, childdates.offsetid, 
     childdates.parentoffsetid, eventyear, 
     (SELECT api.GetEventDate(eventdatesrecursive.eventdate, childdates.offsetid, childdates.eventoffset, eventyear) FROM dual) AS eventdate
FROM eventdateoffsets childdates
JOIN eventdatesrecursive
  ON childdates.parentoffsetid = eventdatesrecursive.offsetid
</code></pre>

<p>This the the <abbr>ANSI</abbr>-standard way of doing recursion. You have a query to calculate your starting data, which is then <code>UNION</code>ed to your dependent data.</p>

<p>The <code>GetEventDate</code> function basically adds the child date’s offset interval to the parent date’s date to get the child date’s date. It also takes Leap Year into account for dates that are set up to be run on a certain day every year (e.g. Independence Day is always July 4).</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=GetEventDate.sql"> </script>

<p>With the recursion tucked out of the way in a <code>WITH</code>, the rest of the query is easy.</p>

<pre><code class="language-sql">SELECT nvl(overrides.eventname, offsets.eventname) AS eventname, offsets.displayname, 
       nvl(overrides.eventdate, offsets.eventdate) AS eventdate
  FROM eventdatesrecursive offsets
  FULL OUTER
  JOIN eventdateoverrides overrides
    ON offsets.eventname = overrides.eventname
   AND offsets.academicyear = overrides.academicyear;
</code></pre>

<p>There is an overrides table which allows any calculated date to be overwritten by entering a row into the table. I’m doing a <code>FULL OUTER JOIN</code> so that the override will create an event even if it isn’t set up in <code>evetntoffsets</code>.</p>

<p>Phwew! And this is actually a simplified version of the query because there were some business rules I didn’t want to get into, just because I wanted to focus more on the <abbr>SQL</abbr>. Really though, when you break it down, there aren’t any concepts that are too advanced. The difficulty comes in understanding the query as a whole.</p>', NULL, CAST(N'2014-07-17T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I’ve written a lot of SQL, but most of it tends to be pretty simple. Even most of the large queries that I’ve written aren’t complex, they just have a lot of tables and columns to deal with. Probably the most complicated and interesting query I’ve written ', NULL, 1, NULL, N'<p>I’ve written a lot of SQL, but most of it tends to be pretty simple. Even most of the large queries that I’ve written aren’t complex, they just have a lot of tables and columns to deal with. Probably the most complicated and interesting query I’ve written calculates dates based on a hierarchy of date offsets.</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=Query-Blog.sql"> </script>

<p>Recursion, a cross join, a full outer join…there’s a lot of interesting pieces here. Let’s break it down:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid,
       EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
  FROM eventdateoffsets
 CROSS 
  JOIN table(integers(3))
 WHERE parentoffsetid IS NULL
</code></pre>

<p><code>integers</code> is an alias for a simple function that returns a pipelined array of numbers from 1 up to the parameter provided:</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=integers.sql"> </script>

<p>So <code>integers(3)</code> returns an array containing 1, 2, 3. <code>table</code> is an alias for a function that converts the array to an Oracle table, which allows us to join to it. A cross join (aka Cartesian join) matches every row in table A with every row in table B, so no join conditions are necessary.</p>

<p><code>eventdateoffsets</code> is the table holding all the event information:</p>

<table>
    <thead>
        <tr>
            <th>eventdateoffsets</th>
            <th> </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>offsetid</td>
            <td>Number (PK)</td>
        </tr>
        <tr>
            <td>eventname</td>
            <td>Varchar2</td>
        </tr>
        <tr>
            <td>parentoffsetid</td>
            <td>Number</td>
        </tr>
        <tr>
            <td>eventoffset</td>
            <td>Interval</td>
        </tr>
    </tbody>
</table>

<p>The parentoffsetid is the offsetid of the date that this date is based on. The eventoffset is how much before or after the parent date that the event takes place. This allows us to set up relations from our business rules like “registration always takes place two days after Labor Day” or “students can cancel courses until one week after classes begin”. The data looks something like this:</p>

<table>
    <thead>
        <tr>
            <th>offsetid</th>
            <th>eventname</th>
            <th>parentoffsetid</th>
            <th>eventoffset</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Labor Day</td>
            <td>null</td>
            <td>null</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Registration Begins</td>
            <td>1</td>
            <td>+ 00 08:00</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Registration Ends</td>
            <td>2</td>
            <td>+ 03 14:00</td>
        </tr>
    </tbody>
</table>

<p>Here registration begins at 8 <abbr>am</abbr> on Labor Day and ends three days later at 10 <abbr>pm</abbr>. Notice that Labor Day doesn’t have a parent; that will be important later.</p>

<p>Back to the query:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid,
       EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
  FROM eventdateoffsets
 CROSS 
  JOIN table(integers(3))
 WHERE parentoffsetid IS NULL
</code></pre>

<p><code>EXTRACT(YEAR FROM SYSDATE) + column_value - 2</code> gets the current year (as of this writing, 2014) and adds the value from the integers table (1, 2, 3) and subtracts 2. In effect, this adds -1, 0, and 1 to the current year, giving us last year, this year, and next year (as of this writing 2013, 2014, and 2015).</p>

<p><code>WHERE parentoffsetid IS NULL</code>: remember in our example how Labor Day didn’t have a parent? This query is getting all the dates without a parent; I call them “source dates”. These are our foundation. Some are holidays like Labor Day and Thanksgiving. Others are dates determined by Business Rules which haven’t been integrated into this system. This part of the query gets all the source dates with an <code>eventyear</code> of last year, this year, and next year. Let’s go one level higher:</p>

<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid, eventyear, 
     (SELECT api.GetSourceDate(eventname, eventyear) FROM dual) AS eventdate, 
     (SELECT api.GetSourceAcademicYear(eventname, eventyear) FROM dual) AS academicyear
FROM (SELECT eventname, displayname, offsetid, parentoffsetid,
             EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
        FROM eventdateoffsets
       CROSS 
        JOIN table(integers(3))
       WHERE parentoffsetid IS NULL
     )
</code></pre>

<p><code>api.GetSourceDate()</code> calculates the date for a source date for a given year. It basically is a giant <code>CASE</code> that looks something like:</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=GetSourceDate.sql"> </script>

<p><code>api.GetSourceAcademicYear()</code> calculates the academic year (which starts in September when the fall semester begins) for the event.</p>

<p>Now that the parent dates are set, we can determine the child dates. Since child dates can be parents for further dates, we need to calculate the hierarchy recursively:</p>


<pre><code class="language-sql">SELECT eventname, displayname, offsetid, parentoffsetid, eventyear, 
     (SELECT api.GetSourceDate(eventname, eventyear) FROM dual) AS eventdate
FROM (SELECT eventname, displayname, offsetid, parentoffsetid,
             EXTRACT(YEAR FROM SYSDATE) + column_value - 2 /*Gets last, this, and next year*/AS eventyear
        FROM eventdateoffsets
       CROSS 
        JOIN table(integers(3))
       WHERE parentoffsetid IS NULL
     )
UNION ALL
SELECT childdates.eventname, childdates.displayname, childdates.offsetid, 
     childdates.parentoffsetid, eventyear, 
     (SELECT api.GetEventDate(eventdatesrecursive.eventdate, childdates.offsetid, childdates.eventoffset, eventyear) FROM dual) AS eventdate
FROM eventdateoffsets childdates
JOIN eventdatesrecursive
  ON childdates.parentoffsetid = eventdatesrecursive.offsetid
</code></pre>

<p>This the the <abbr>ANSI</abbr>-standard way of doing recursion. You have a query to calculate your starting data, which is then <code>UNION</code>ed to your dependent data.</p>

<p>The <code>GetEventDate</code> function basically adds the child date’s offset interval to the parent date’s date to get the child date’s date. It also takes Leap Year into account for dates that are set up to be run on a certain day every year (e.g. Independence Day is always July 4).</p>

<script src="https://gist.github.com/ca097b7775b95f130a40.js?file=GetEventDate.sql"> </script>

<p>With the recursion tucked out of the way in a <code>WITH</code>, the rest of the query is easy.</p>

<pre><code class="language-sql">SELECT nvl(overrides.eventname, offsets.eventname) AS eventname, offsets.displayname, 
       nvl(overrides.eventdate, offsets.eventdate) AS eventdate
  FROM eventdatesrecursive offsets
  FULL OUTER
  JOIN eventdateoverrides overrides
    ON offsets.eventname = overrides.eventname
   AND offsets.academicyear = overrides.academicyear;
</code></pre>

<p>There is an overrides table which allows any calculated date to be overwritten by entering a row into the table. I’m doing a <code>FULL OUTER JOIN</code> so that the override will create an event even if it isn’t set up in <code>evetntoffsets</code>.</p>

<p>Phwew! And this is actually a simplified version of the query because there were some business rules I didn’t want to get into, just because I wanted to focus more on the <abbr>SQL</abbr>. Really though, when you break it down, there aren’t any concepts that are too advanced. The difficulty comes in understanding the query as a whole.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (36, 1, N'Antonio, a Board Game Geek trading tool', N'antonio-a-board-game-geek-trading-tool', N'article/2015/05/30/1/antonio-a-board-game-geek-trading-tool', N'<p><ins datetime="2016-08-06">I’ve decommissioned Antonio; it was really only used briefly. You can still access the repository at <a href="http://github.com/briankoser/antonio">Github</a>.</ins></p>    
<p>If you’re into designer board games (you should be!) and you’re online (…you are!), then you’re probably aware of <a href="http://boardgamegeek.com">BoardGameGeek</a>, which is <em>the</em> board game website, where aficionados discuss, trade, and celebrate all things board gaming.</p>    
<p>Recently, a fellow named Scott Jaworski <a href="http://boardgamegeek.com/thread/1369255/there-some-way-see-what-someone-who-wants-what-i-h">asked</a> if there’s a way to find a list of board games he could get in a trade if he traded one of his away. <abbr>BGG</abbr> doesn’t support this functionality, and it sounded like an interesting and easy project, so I went ahead and did it. Meet <a href="http://koser.us/antonio">Antonio</a>. Here’s how he was formed:</p>    
<p>Most of the necessary data is availalbe from the <abbr>BGG</abbr> <abbr>API</abbr>. Rather than using the official <a href="http://boardgamegeek.com/wiki/page/BGG_XML_API2"><abbr>BGG</abbr> <abbr>XML</abbr> <abbr>API</abbr></a> directly, I decided to use <a href="http://boardgamegeek.com/thread/1139853/ajax-ready-bgg-api-any-web-programmers-out-there">E. Strathmeyer’s JSON API</a>, which is built upon the former. I considered <a href="http://bgg-json.azurewebsites.net/">a different JSON API</a>, but it was down when I started coding. Maybe next time.</p>    
<p>One item not provided is the list of users that want to trade for a game. So, I wrote my own <abbr>API</abbr>. Having never written a web <abbr>API</abbr> service, I started researching technologies. The best option looked to be an <a href="http://www.asp.net/web-api"><abbr>ASP.NET</abbr> Web <abbr>API</abbr></a>, so I read some of the Microsoft tutorials and got started. The <abbr>API</abbr> itself was surprisingly easy to set up, as was deploying to Azure. I used <a href="http://htmlagilitypack.codeplex.com/">HTMLAgilityPack</a> and <a href="https://code.google.com/p/fizzler/">Fizzler</a>, which made screen scraping easier than expected. In fact, while I expected this to be the most difficult piece of the puzzle, it turned out to be one of the easiest.</p>    
<p>I did get tripped up by <abbr>CORS</abbr>, cross-origin resource sharing. This had to be enabled so I could call my <abbr>API</abbr> from a web page. Once I identified the problem it was <a href="http://www.asp.net/web-api/overview/security/enabling-cross-origin-requests-in-web-api">not difficult to fix</a>.</p>    
<p>Next I set up a simple web page, grabbed jQuery, and started writing the client-side portion of Antonio. This portion took the most time, and had some challenges of it’s own, a couple of which were solved by new-to-me features: the <a href="http://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply">apply</a> function and <a href="http://api.jquery.com/deferred.done/">promises</a>.</p>    
<p>One disappointment was that, while you can get the games a user wants to trade from <abbr>BGG</abbr>’s <abbr>API</abbr>, you can’t get it on demand. The data has to be generated, which in my experience takes up to 24 hours. My solution was to display a list of users whose data is being generated, but it’s annoying that a user could type a game into Antonio and then have to wait until the next day, come back to the page and search for the game again. Oh well.</p>    
<p><a href="http://koser.us/antonio">Antonio</a> was a fun project to write, and I learned a good bit about <abbr>.NET</abbr> and JavaScript to boot. Check it out, and let me know if you have any questions about anything. You can see all the code at <a href="http://github.com/briankoser/antonio">Github</a>. If you experience problems, you can <a href="http://briankoser.com/contact/">contact me</a>, <a href="http://github.com/briankoser/antonio/issues/new">open an issue</a> on the Github project, or reply to <a href="http://boardgamegeek.com/article/19376164">my post about Antonio on <abbr>BGG</abbr></a>.</p>', NULL, CAST(N'2015-05-30T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'If you’re into designer board games (you should be!) and you’re online (…you are!), then you’re probably aware of BoardGameGeek, which is the board game website, where aficionados discuss, trade, and celebrate all things board gaming.', NULL, 1, NULL, N'<p><ins datetime="2016-08-06">I’ve decommissioned Antonio; it was really only used briefly. You can still access the repository at <a href="http://github.com/briankoser/antonio">Github</a>.</ins></p>    
<p>If you’re into designer board games (you should be!) and you’re online (…you are!), then you’re probably aware of <a href="http://boardgamegeek.com">BoardGameGeek</a>, which is <em>the</em> board game website, where aficionados discuss, trade, and celebrate all things board gaming.</p>    
<p>Recently, a fellow named Scott Jaworski <a href="http://boardgamegeek.com/thread/1369255/there-some-way-see-what-someone-who-wants-what-i-h">asked</a> if there’s a way to find a list of board games he could get in a trade if he traded one of his away. <abbr>BGG</abbr> doesn’t support this functionality, and it sounded like an interesting and easy project, so I went ahead and did it. Meet <a href="http://koser.us/antonio">Antonio</a>. Here’s how he was formed:</p>    
<p>Most of the necessary data is availalbe from the <abbr>BGG</abbr> <abbr>API</abbr>. Rather than using the official <a href="http://boardgamegeek.com/wiki/page/BGG_XML_API2"><abbr>BGG</abbr> <abbr>XML</abbr> <abbr>API</abbr></a> directly, I decided to use <a href="http://boardgamegeek.com/thread/1139853/ajax-ready-bgg-api-any-web-programmers-out-there">E. Strathmeyer’s JSON API</a>, which is built upon the former. I considered <a href="http://bgg-json.azurewebsites.net/">a different JSON API</a>, but it was down when I started coding. Maybe next time.</p>    
<p>One item not provided is the list of users that want to trade for a game. So, I wrote my own <abbr>API</abbr>. Having never written a web <abbr>API</abbr> service, I started researching technologies. The best option looked to be an <a href="http://www.asp.net/web-api"><abbr>ASP.NET</abbr> Web <abbr>API</abbr></a>, so I read some of the Microsoft tutorials and got started. The <abbr>API</abbr> itself was surprisingly easy to set up, as was deploying to Azure. I used <a href="http://htmlagilitypack.codeplex.com/">HTMLAgilityPack</a> and <a href="https://code.google.com/p/fizzler/">Fizzler</a>, which made screen scraping easier than expected. In fact, while I expected this to be the most difficult piece of the puzzle, it turned out to be one of the easiest.</p>    
<p>I did get tripped up by <abbr>CORS</abbr>, cross-origin resource sharing. This had to be enabled so I could call my <abbr>API</abbr> from a web page. Once I identified the problem it was <a href="http://www.asp.net/web-api/overview/security/enabling-cross-origin-requests-in-web-api">not difficult to fix</a>.</p>    
<p>Next I set up a simple web page, grabbed jQuery, and started writing the client-side portion of Antonio. This portion took the most time, and had some challenges of it’s own, a couple of which were solved by new-to-me features: the <a href="http://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply">apply</a> function and <a href="http://api.jquery.com/deferred.done/">promises</a>.</p>    
<p>One disappointment was that, while you can get the games a user wants to trade from <abbr>BGG</abbr>’s <abbr>API</abbr>, you can’t get it on demand. The data has to be generated, which in my experience takes up to 24 hours. My solution was to display a list of users whose data is being generated, but it’s annoying that a user could type a game into Antonio and then have to wait until the next day, come back to the page and search for the game again. Oh well.</p>    
<p><a href="http://koser.us/antonio">Antonio</a> was a fun project to write, and I learned a good bit about <abbr>.NET</abbr> and JavaScript to boot. Check it out, and let me know if you have any questions about anything. You can see all the code at <a href="http://github.com/briankoser/antonio">Github</a>. If you experience problems, you can <a href="http://briankoser.com/contact/">contact me</a>, <a href="http://github.com/briankoser/antonio/issues/new">open an issue</a> on the Github project, or reply to <a href="http://boardgamegeek.com/article/19376164">my post about Antonio on <abbr>BGG</abbr></a>.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (37, 1, N'Jon Skeet Strikes Again!', N'jon-skeet-strikes-again', N'article/2015/07/25/1/jon-skeet-strikes-again', N'<p>Quick background on <a href="http://stackoverflow.com/">Stack Overflow</a> and <a href="http://stackoverflow.com/users/22656/jon-skeet">Jon Skeet</a>: Stack Overflow is a website where you can ask and answer computer programming-related questions. Everyone votes on the questions and answers, and you get points when someone votes for you. Jon Skeet has the most Stack Overflow points, which means he asks and answers a lot of questions, and he does it well. He’s become a celebrity on the site; you can think of him as the computer programmer’s Chuck Norris:</p>
<blockquote>Jon Skeet can recite pi. Backwards.</blockquote>
<p>So I was on Stack Overflow looking up information on C# verbatim string literals when I came across <a href="http://stackoverflow.com/questions/556133/whats-the-in-front-of-a-string-in-c">these answers</a>:</p>
<figure>
    <img alt="Stack Overflow question with two answers, the first by Richard Everett and the second by Jon Skeet" src="http://cdn.koser.us/img/journal/2015-07-25-skeet.png" />
    <figcaption>Stack Overflow question and answers</figcaption>
</figure>
<p>I thought, <em>that’s rare to see Jon Skeet as the number two answer on a question, kudos to Richard Everett</em>. And then I clicked the link in Richard’s answer, and realized it linked to a book. An actual printed book. Authored by Jon Skeet.</p>', NULL, CAST(N'2015-07-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Quick background on Stack Overflow and Jon Skeet: Stack Overflow is a website where you can ask and answer computer programming-related questions. Everyone votes on the questions and answers, and you get points when someone votes for you. Jon Skeet has the', NULL, 1, NULL, N'<p>Quick background on <a href="http://stackoverflow.com/">Stack Overflow</a> and <a href="http://stackoverflow.com/users/22656/jon-skeet">Jon Skeet</a>: Stack Overflow is a website where you can ask and answer computer programming-related questions. Everyone votes on the questions and answers, and you get points when someone votes for you. Jon Skeet has the most Stack Overflow points, which means he asks and answers a lot of questions, and he does it well. He’s become a celebrity on the site; you can think of him as the computer programmer’s Chuck Norris:</p>
<blockquote>Jon Skeet can recite pi. Backwards.</blockquote>
<p>So I was on Stack Overflow looking up information on C# verbatim string literals when I came across <a href="http://stackoverflow.com/questions/556133/whats-the-in-front-of-a-string-in-c">these answers</a>:</p>
<figure>
    <img alt="Stack Overflow question with two answers, the first by Richard Everett and the second by Jon Skeet" src="http://cdn.koser.us/img/journal/2015-07-25-skeet.png" />
    <figcaption>Stack Overflow question and answers</figcaption>
</figure>
<p>I thought, <em>that’s rare to see Jon Skeet as the number two answer on a question, kudos to Richard Everett</em>. And then I clicked the link in Richard’s answer, and realized it linked to a book. An actual printed book. Authored by Jon Skeet.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (38, 1, N'Browser Wars: A New Hope', N'browser-wars-a-new-hope', N'article/2015/08/24/1/browser-wars-a-new-hope', N'<p>Firefox 1.5 is the first browser I specifically remember using (discounting AOL, which was a little more than a browser). Back then Firefox users were hip, the cutting edge. We’ve got tabs, man, so you can visit <em>multiple web pages in one window!</em> Eventually Firefox got bloated, taking up too much memory, and my brand loyalty only lasted until about six months after the release of Google Chrome.</p>
<figure>
    <img alt="A chubby prairie dog" src="http://cdn.koser.us/img/journal/2015-08-24-bloated.jpg" />
    <figcaption>The definition of bloated</figcaption>
</figure>
<p>Now Google Chrome is bloated. And ever since Google Reader was dropped, I’ve wondered if it’s wise to have all my eggs in one Google basket.</p>
<p>So I’m open to using another browser, but I do have some prerequisites for switching:</p>
<h2>Evergreen</h2>
<p>This should really go without saying, and all major browsers do fall into this category. Evergreen browsers update frequently &amp; incrementally, instead waiting years in-between releases, and then needing to uninstall the old version and install the new version from scratch. Barbaric.</p>
<figure>
    <img alt="An old photograph of two men talking" src="http://cdn.koser.us/img/journal/2015-08-24-versailles.jpg" />
    <figcaption>“I installed the latest version of Netscape Navigator last fortnight!”</figcaption>
</figure>
<p>With as quickly as things move in web land, we need browsers that stay up to date.</p>
<h2>Sync</h2>
<p>I want to use the same browser at home and at work. I want to bookmark an article at work and read it at home. I want to search my entire browsing history, not just my history in that location. And I don’t want to install extensions separately on each different computer I use (although if I disable an addon I don’t want that synced; I don’t need my Chromecast extension at work for example). This leads right into…</p>
<h2>Mobile</h2>
<p>It makes sense to use the same browser on desktop and mobile, but I don’t have to, as long as I can still sync bookmarks between desktop and mobile. Right now I’m on Android, so it has to work well there.</p>
<h2>Dev tools</h2>
<p>On desktop I need web developer tools. Partly for work. Partly for developing personal sites, like this one. Partly for when I come across an interesting feature or font and want to look under the hood.</p>
<h2>Ad blocker</h2>
<p>I disable ad blocking for sites that I like, and that ask nicely. But for sites I don’t know, or don’t trust, or don’t like, or that don’t ask, ads are gonna be blocked.</p>
<h2>KeePass</h2>
<p>My one essential extension. <a href="http://keepass.info/">KeePass</a> is a password storage app that I love. However, I love it less each time I have to open the application, log in, search for the website, copy the username, paste it into the browser, copy the password, then paste <em>it</em> into the browser. Much nicer to have it automatically fill in credentials (<a href="http://keepass.info/plugins.html#chromeipass">chromeIPass</a>). On mobile, it would be nice to remove as many of the above steps as possible (<a href="https://play.google.com/store/apps/details?id=keepass2android.keepass2android&amp;hl=en">KeePass2Android</a> + Google Chrome Mobile is currently the best solution on Android).</p>
<h2>Site search from the address bar</h2>
<p>I can’t remember the last time I had to use the old Google trick of prepending "site:" to a search to get results from a specific website. I love being able to search sites from the address bar.</p>
<figure>
    <img alt="Searching Amazon.com for Richard Scarry" src="http://cdn.koser.us/img/journal/2015-08-24-amazon-search.png" />
    <figcaption>It’s a busy world</figcaption>
</figure>
<p>I don’t think these are unreasonable requests. I’m willing to give everyone a shot, and see who meets all seven requirements. Except Safari for Windows. Not gonna do it.</p>', NULL, CAST(N'2015-08-24T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Firefox 1.5 is the first browser I specifically remember using (discounting AOL, which was a little more than a browser). Back then Firefox users were hip, the cutting edge. We’ve got tabs, man, so you can visit multiple web pages in one window!', NULL, 1, NULL, N'<p>Firefox 1.5 is the first browser I specifically remember using (discounting AOL, which was a little more than a browser). Back then Firefox users were hip, the cutting edge. We’ve got tabs, man, so you can visit <em>multiple web pages in one window!</em> Eventually Firefox got bloated, taking up too much memory, and my brand loyalty only lasted until about six months after the release of Google Chrome.</p>
<figure>
    <img alt="A chubby prairie dog" src="http://cdn.koser.us/img/journal/2015-08-24-bloated.jpg" />
    <figcaption>The definition of bloated</figcaption>
</figure>
<p>Now Google Chrome is bloated. And ever since Google Reader was dropped, I’ve wondered if it’s wise to have all my eggs in one Google basket.</p>
<p>So I’m open to using another browser, but I do have some prerequisites for switching:</p>
<h2>Evergreen</h2>
<p>This should really go without saying, and all major browsers do fall into this category. Evergreen browsers update frequently &amp; incrementally, instead waiting years in-between releases, and then needing to uninstall the old version and install the new version from scratch. Barbaric.</p>
<figure>
    <img alt="An old photograph of two men talking" src="http://cdn.koser.us/img/journal/2015-08-24-versailles.jpg" />
    <figcaption>“I installed the latest version of Netscape Navigator last fortnight!”</figcaption>
</figure>
<p>With as quickly as things move in web land, we need browsers that stay up to date.</p>
<h2>Sync</h2>
<p>I want to use the same browser at home and at work. I want to bookmark an article at work and read it at home. I want to search my entire browsing history, not just my history in that location. And I don’t want to install extensions separately on each different computer I use (although if I disable an addon I don’t want that synced; I don’t need my Chromecast extension at work for example). This leads right into…</p>
<h2>Mobile</h2>
<p>It makes sense to use the same browser on desktop and mobile, but I don’t have to, as long as I can still sync bookmarks between desktop and mobile. Right now I’m on Android, so it has to work well there.</p>
<h2>Dev tools</h2>
<p>On desktop I need web developer tools. Partly for work. Partly for developing personal sites, like this one. Partly for when I come across an interesting feature or font and want to look under the hood.</p>
<h2>Ad blocker</h2>
<p>I disable ad blocking for sites that I like, and that ask nicely. But for sites I don’t know, or don’t trust, or don’t like, or that don’t ask, ads are gonna be blocked.</p>
<h2>KeePass</h2>
<p>My one essential extension. <a href="http://keepass.info/">KeePass</a> is a password storage app that I love. However, I love it less each time I have to open the application, log in, search for the website, copy the username, paste it into the browser, copy the password, then paste <em>it</em> into the browser. Much nicer to have it automatically fill in credentials (<a href="http://keepass.info/plugins.html#chromeipass">chromeIPass</a>). On mobile, it would be nice to remove as many of the above steps as possible (<a href="https://play.google.com/store/apps/details?id=keepass2android.keepass2android&amp;hl=en">KeePass2Android</a> + Google Chrome Mobile is currently the best solution on Android).</p>
<h2>Site search from the address bar</h2>
<p>I can’t remember the last time I had to use the old Google trick of prepending "site:" to a search to get results from a specific website. I love being able to search sites from the address bar.</p>
<figure>
    <img alt="Searching Amazon.com for Richard Scarry" src="http://cdn.koser.us/img/journal/2015-08-24-amazon-search.png" />
    <figcaption>It’s a busy world</figcaption>
</figure>
<p>I don’t think these are unreasonable requests. I’m willing to give everyone a shot, and see who meets all seven requirements. Except Safari for Windows. Not gonna do it.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (39, 1, N'Link Digest — September 2015', N'september-2015-link-digest', N'article/2015/09/30/1/link-digest-september-2015', N'<p>Here are all the interesting links that I found in September 2015 that I deem worthy of being preserved for the future.</p>
<ul>
    <li>
        <a href="https://medium.com/@stewart/we-dont-sell-saddles-here-4c59524d650d">We Don’t Sell Saddles Here</a>
        <br>
        A Slack internal memo that from 2013 detailing the strategy of “selling horseback riding instead of saddles”.
    </li>
    <li>
        <a href="http://www.broken-links.com/2015/09/14/innovation-in-mobile-browsers-and-the-iphone/">Innovation in Mobile Browsers, and the iPhone</a>
        <br>
        I read this and immediately uninstalled the Facebook app from my Android. Now that the website supports push notifications, I’m perfectly happy to use the website.
    </li>
    <li>
        <a href="http://nypost.com/2015/09/19/how-ahmeds-clock-became-a-false-convenient-tale-of-racism/">How Ahmed’s clock became a false, convenient tale of racism</a>
    </li>
    <li>
        <a href="http://www.nerdfitness.com/blog/2009/12/09/beginner-body-weight-workout-burn-fat-build-muscle/">Beginner Body Weight Workout</a>
    </li>
    <li>
        <a href="https://github.com/blog/2019-how-to-undo-almost-anything-with-git">How to undo (almost) anything with Git</a>
    </li>
    <li>
        <a href="http://www.troyhunt.com/2011/12/free-ebook-owasp-top-10-for-net.html">Free eBook: OWASP Top 10 for .NET developers</a>
        <br>
        Good primer on web security for ASP.NET devs.
    </li>
    <li>
        <a href="https://scifi.stackexchange.com/questions/103487/why-arent-there-any-sieges-in-lord-of-the-rings">Why aren’t there any sieges in Lord of The Rings?</a>
    </li>
    <li>
        <a href="https://stackoverflow.com/questions/4176520/what-is-the-difference-between-strategy-pattern-and-dependency-injection">What is the difference between Strategy pattern and Dependency Injection?</a>
        <br>
        Still trying to get my head wrapped around DI.
    </li>
    <li>
        <a href="http://degradingdisgracefully.com/messy-uis/">Messy UIs</a>
        <br>
        “A developer had to make a design decision.” 😀
    </li>
    <li>
        <a href="http://www.troyhunt.com/2012/06/our-password-hashing-has-no-clothes.html">Our password hashing has no clothes</a>
        <br>
        Am I the only one that didn’t know that SHA hashing wasn’t good enough any more? ☹
    </li>
</ul>', NULL, CAST(N'2015-09-30T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Here are all the interesting links that I found in September 2015 that I deem worthy of being preserved for the future.', NULL, 1, NULL, N'<p>Here are all the interesting links that I found in September 2015 that I deem worthy of being preserved for the future.</p>
<ul>
    <li>
        <a href="https://medium.com/@stewart/we-dont-sell-saddles-here-4c59524d650d">We Don’t Sell Saddles Here</a>
        <br>
        A Slack internal memo that from 2013 detailing the strategy of “selling horseback riding instead of saddles”.
    </li>
    <li>
        <a href="http://www.broken-links.com/2015/09/14/innovation-in-mobile-browsers-and-the-iphone/">Innovation in Mobile Browsers, and the iPhone</a>
        <br>
        I read this and immediately uninstalled the Facebook app from my Android. Now that the website supports push notifications, I’m perfectly happy to use the website.
    </li>
    <li>
        <a href="http://nypost.com/2015/09/19/how-ahmeds-clock-became-a-false-convenient-tale-of-racism/">How Ahmed’s clock became a false, convenient tale of racism</a>
    </li>
    <li>
        <a href="http://www.nerdfitness.com/blog/2009/12/09/beginner-body-weight-workout-burn-fat-build-muscle/">Beginner Body Weight Workout</a>
    </li>
    <li>
        <a href="https://github.com/blog/2019-how-to-undo-almost-anything-with-git">How to undo (almost) anything with Git</a>
    </li>
    <li>
        <a href="http://www.troyhunt.com/2011/12/free-ebook-owasp-top-10-for-net.html">Free eBook: OWASP Top 10 for .NET developers</a>
        <br>
        Good primer on web security for ASP.NET devs.
    </li>
    <li>
        <a href="https://scifi.stackexchange.com/questions/103487/why-arent-there-any-sieges-in-lord-of-the-rings">Why aren’t there any sieges in Lord of The Rings?</a>
    </li>
    <li>
        <a href="https://stackoverflow.com/questions/4176520/what-is-the-difference-between-strategy-pattern-and-dependency-injection">What is the difference between Strategy pattern and Dependency Injection?</a>
        <br>
        Still trying to get my head wrapped around DI.
    </li>
    <li>
        <a href="http://degradingdisgracefully.com/messy-uis/">Messy UIs</a>
        <br>
        “A developer had to make a design decision.” 😀
    </li>
    <li>
        <a href="http://www.troyhunt.com/2012/06/our-password-hashing-has-no-clothes.html">Our password hashing has no clothes</a>
        <br>
        Am I the only one that didn’t know that SHA hashing wasn’t good enough any more? ☹
    </li>
</ul>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (40, 1, N'IoC', N'ioc', N'article/2015/12/28/1/ioc', N'<p>I just watched an <a href="http://www.pluralsight.com/courses/inversion-of-control">Inversion of Control course</a> on Pluralsight. I get it now, but I’m writing this down to make sure I get it tomorrow.</p>
<ul>
    <li>
        <p><strong>Dependency Inversion Principle</strong> - accessed items should not depend on accessor items</p>
    </li>
    <li>
        <strong>Inversion of Control</strong>
        <ul>
            <li>a pattern to “solve” the Dependency Inversion Principle</li>
            <li>accessor tells accessed how they will interact</li>
            <li><em>Interface inversion</em> - accessor creates interface rather than accessed</li>
            <li><em>Flow inversion</em> - event-driven instead of procedural programming</li>
            <li>
                <em>Creation inversion</em> - object is created outside of the class it is used in
                <ul>
                    <li>factory pattern (<code>Button button = ButtonFactory.CreateButton();</code>)</li>
                    <li>service locator (<code>Button button = ServiceLocator.Create(IButton.class);</code>)</li>
                    <li>dependency injection</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <strong>Dependency Injection</strong>
        <ul>
            <li>dependency is created outside of class that depends on it</li>
            <li>
                <p>differs from creation inversion because it specifies that the dependency is not created by the dependent; in e.g. the factory pattern, the dependent is still responsible for creating the dependent by calling the factory</p>
            </li>
            <li>
                <em>Constructor Injection</em>
                <ul>
                    <li>most common</li>
                    <li>dependency is passed into constructor and stored as field in object</li>
                </ul>
            </li>
            <li>
                <em>Setter Injection</em>
                <ul>
                    <li>dependency is passed into setter and stored as field in object</li>
                </ul>
            </li>
            <li>
                <em>Interface Injection</em>
                <ul>
                    <li>class has interface which requires a setter</li>
                    <li>when calling cast the class as the interface and call the interface’s setter</li>
                    <li>more explicit than just a setter</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <strong>IoC Container</strong>
        <ul>
            <li>framework for doing dependency injection</li>
            <li>resolves the chain of dependencies</li>
        </ul>
    </li>
</ul>
<p>They aren’t difficult concepts. Really, the most difficult part is keeping all the terminology straight.</p>', NULL, CAST(N'2015-12-28T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I just watched an Inversion of Control course on Pluralsight. I get it now, but I’m writing this down to make sure I get it tomorrow.', NULL, 1, NULL, N'<p>I just watched an <a href="http://www.pluralsight.com/courses/inversion-of-control">Inversion of Control course</a> on Pluralsight. I get it now, but I’m writing this down to make sure I get it tomorrow.</p>
<ul>
    <li>
        <p><strong>Dependency Inversion Principle</strong> - accessed items should not depend on accessor items</p>
    </li>
    <li>
        <strong>Inversion of Control</strong>
        <ul>
            <li>a pattern to “solve” the Dependency Inversion Principle</li>
            <li>accessor tells accessed how they will interact</li>
            <li><em>Interface inversion</em> - accessor creates interface rather than accessed</li>
            <li><em>Flow inversion</em> - event-driven instead of procedural programming</li>
            <li>
                <em>Creation inversion</em> - object is created outside of the class it is used in
                <ul>
                    <li>factory pattern (<code>Button button = ButtonFactory.CreateButton();</code>)</li>
                    <li>service locator (<code>Button button = ServiceLocator.Create(IButton.class);</code>)</li>
                    <li>dependency injection</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <strong>Dependency Injection</strong>
        <ul>
            <li>dependency is created outside of class that depends on it</li>
            <li>
                <p>differs from creation inversion because it specifies that the dependency is not created by the dependent; in e.g. the factory pattern, the dependent is still responsible for creating the dependent by calling the factory</p>
            </li>
            <li>
                <em>Constructor Injection</em>
                <ul>
                    <li>most common</li>
                    <li>dependency is passed into constructor and stored as field in object</li>
                </ul>
            </li>
            <li>
                <em>Setter Injection</em>
                <ul>
                    <li>dependency is passed into setter and stored as field in object</li>
                </ul>
            </li>
            <li>
                <em>Interface Injection</em>
                <ul>
                    <li>class has interface which requires a setter</li>
                    <li>when calling cast the class as the interface and call the interface’s setter</li>
                    <li>more explicit than just a setter</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <strong>IoC Container</strong>
        <ul>
            <li>framework for doing dependency injection</li>
            <li>resolves the chain of dependencies</li>
        </ul>
    </li>
</ul>
<p>They aren’t difficult concepts. Really, the most difficult part is keeping all the terminology straight.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (41, 1, N'Programming Punctuation Poem', N'programming-punctuation-poem', N'article/2016/01/02/1/programming-punctuation-poem', N'<p>I’ve been on somewhat of a punctuation kick lately, and I remembered a poem:</p>
<pre>&lt; &gt; ! * '' '' #
^ " ` $ $ -
! * = @ $ _
% * &lt; &gt; ~ # 4
&amp; [ ] . . /
| { , , SYSTEM HALTED</pre>
<p>This doesn’t seem like much of a poem until you realize that programmers have different names for punctuation than English professors. When reading code it’s much easier to say “bang” than to say “exclamation point”, and programmers are nothing if not efficient (which is to say, we’re lazy). Here’s the translation: </p>
<pre>&lt;    &gt;    !    *     ''    ''    #
Waka waka bang splat tick tick hash,
^     "     `         $      $      -
Caret quote back-tick dollar dollar dash,
!    *     =     @  $      _
Bang splat equal at dollar underscore,
%       *     &lt;    &gt;    ~     #      4
Percent splat waka waka tilde number four,
&amp;         [       ]       .   .   /  
Ampersand bracket bracket dot dot slash,
|            {             ,     ,     SYSTEM HALTED  
Vertical-bar curly-bracket comma comma CRASH.</pre>
<p>Kudos to the authors Fred Bremmer and Steve Kroese, who got the poem printed in the May/June 1990 issue of <i>Infocus</i> magazine.</p>', NULL, CAST(N'2016-01-02T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I’ve been on somewhat of a punctuation kick lately, and I remembered a poem:', NULL, 1, NULL, N'<p>I’ve been on somewhat of a punctuation kick lately, and I remembered a poem:</p>
<pre>&lt; &gt; ! * '' '' #
^ " ` $ $ -
! * = @ $ _
% * &lt; &gt; ~ # 4
&amp; [ ] . . /
| { , , SYSTEM HALTED</pre>
<p>This doesn’t seem like much of a poem until you realize that programmers have different names for punctuation than English professors. When reading code it’s much easier to say “bang” than to say “exclamation point”, and programmers are nothing if not efficient (which is to say, we’re lazy). Here’s the translation: </p>
<pre>&lt;    &gt;    !    *     ''    ''    #
Waka waka bang splat tick tick hash,
^     "     `         $      $      -
Caret quote back-tick dollar dollar dash,
!    *     =     @  $      _
Bang splat equal at dollar underscore,
%       *     &lt;    &gt;    ~     #      4
Percent splat waka waka tilde number four,
&amp;         [       ]       .   .   /  
Ampersand bracket bracket dot dot slash,
|            {             ,     ,     SYSTEM HALTED  
Vertical-bar curly-bracket comma comma CRASH.</pre>
<p>Kudos to the authors Fred Bremmer and Steve Kroese, who got the poem printed in the May/June 1990 issue of <i>Infocus</i> magazine.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (42, 1, N'ES6: The Future is Now', N'es6-the-future-is-now', N'article/2016/01/15/2/es6-the-future-is-now', N'<p>Last month I gave a presentation at work about ES6 (<a href="http://slides.com/briankoser/deck">view the slides</a>). Giving yourself two weeks to prepare a talk on a subject you don’t know is a great way to learn. :) But, I learn best when actually building something, so I converted <a href="http://github.com/briankoser/thomas">thomas</a> to ES6. Now I’m missing the new features in my work projects, especially arrow functions and string interpolation. I’m not yet sure I’d want to add a transpilation step to production JS, but I’m definitely using it on as many future personal projects as possible.</p>', NULL, CAST(N'2016-01-15T00:00:00.0000000+00:00' AS DateTimeOffset), 2, NULL, N'Last month I gave a presentation at work about ES6 (view the slides). Giving yourself two weeks to prepare a talk on a subject you don’t know is a great way to learn. :)', NULL, 1, NULL, N'<p>Last month I gave a presentation at work about ES6 (<a href="http://slides.com/briankoser/deck">view the slides</a>). Giving yourself two weeks to prepare a talk on a subject you don’t know is a great way to learn. :) But, I learn best when actually building something, so I converted <a href="http://github.com/briankoser/thomas">thomas</a> to ES6. Now I’m missing the new features in my work projects, especially arrow functions and string interpolation. I’m not yet sure I’d want to add a transpilation step to production JS, but I’m definitely using it on as many future personal projects as possible.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (43, 1, N'Web 2.0(16)', N'web-2016', N'article/2016/02/06/1/web-2016', N'<p>It’s interesting to read Paul Graham’s <a href="http://www.paulgraham.com/web20.html">Web 2.0</a> ten years later. Some thoughts:</p>
<ul>
<li><p>The websites Paul most praises—Google, Wikipedia, Reddit—are stronger than ever in 2016.</p></li>
<li>
    <p>
        <q class="styled-quote">I’ve noticed for a while that the stuff I read on individual people’s sites is as good as or better than the stuff I read in newspapers and magazines. And now I have independent evidence: the top links on Reddit are generally links to individual people’s sites rather than to magazine articles or news stories.</q>
        <br>
        This is no longer the case. ☹ Today’s top stories on Reddit include no individual people’s sites.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">Craigslist has largely destroyed the classified ad sites of the 90s, and OkCupid looks likely to do the same to the previous generation of dating sites.</q>
        <br>
        OkCupid is still one of the most popular.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">I wouldn’t be surprised if ten years from now eBay had been supplanted by an ad-supported freeBay (or, more likely, gBay).</q>
        <br>
        Nope. eBay has fewer and fewer auctions, and more and more people just sell directly, some on eBay and some on competitors like Amazon.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">The ultimate target is Microsoft. What a bang that balloon is going to make when someone pops it by offering a free web-based alternative to MS Office. Who will? Google? They seem to be taking their time. I suspect the pin will be wielded by a couple of 20 year old hackers who are too naïve to be intimidated by the idea. (How hard can it be?)
        </q>
        <br>
        Google, of course, did come out with the free web-based Google Docs, but Microsoft and their web-based Office 365 are doing fine.
    </p>
</li>
</ul>', NULL, CAST(N'2016-02-06T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'It’s interesting to read Paul Graham’s Web 2.0 ten years later.', NULL, 1, NULL, N'<p>It’s interesting to read Paul Graham’s <a href="http://www.paulgraham.com/web20.html">Web 2.0</a> ten years later. Some thoughts:</p>
<ul>
<li><p>The websites Paul most praises—Google, Wikipedia, Reddit—are stronger than ever in 2016.</p></li>
<li>
    <p>
        <q class="styled-quote">I’ve noticed for a while that the stuff I read on individual people’s sites is as good as or better than the stuff I read in newspapers and magazines. And now I have independent evidence: the top links on Reddit are generally links to individual people’s sites rather than to magazine articles or news stories.</q>
        <br>
        This is no longer the case. ☹ Today’s top stories on Reddit include no individual people’s sites.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">Craigslist has largely destroyed the classified ad sites of the 90s, and OkCupid looks likely to do the same to the previous generation of dating sites.</q>
        <br>
        OkCupid is still one of the most popular.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">I wouldn’t be surprised if ten years from now eBay had been supplanted by an ad-supported freeBay (or, more likely, gBay).</q>
        <br>
        Nope. eBay has fewer and fewer auctions, and more and more people just sell directly, some on eBay and some on competitors like Amazon.
    </p>
</li>
<li>
    <p>
        <q class="styled-quote">The ultimate target is Microsoft. What a bang that balloon is going to make when someone pops it by offering a free web-based alternative to MS Office. Who will? Google? They seem to be taking their time. I suspect the pin will be wielded by a couple of 20 year old hackers who are too naïve to be intimidated by the idea. (How hard can it be?)
        </q>
        <br>
        Google, of course, did come out with the free web-based Google Docs, but Microsoft and their web-based Office 365 are doing fine.
    </p>
</li>
</ul>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (44, 1, N'Eternal and Undying Fame', N'eternal-and-undying-fame', N'article/2016/03/15/1/eternal-and-undying-fame', N'<p>In 2005, <a href="http://www.quirksmode.org/about/">Peter-Paul Koch</a> launched a small <a href="http://www.quirksmode.org/blog/archives/2005/09/addevent_recodi.html">JavaScript contest</a>. The contestants re-implemented an <code>addEvent()</code> function originally written in 2001. As a prize, PPK offered “eternal and undying fame” and asserted, “your name could become a household name”. The <a href="http://www.quirksmode.org/blog/archives/2005/10/_and_the_winner_1.html">winner</a>? John Resig, who the following year wrote jQuery (<a href="http://libscore.com/#libs">the world’s most popular JavaScript library</a>) and went on to become the most well-known JavaScript developer in the world.</p>', NULL, CAST(N'2016-03-15T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'In 2005, Peter-Paul Koch launched a small JavaScript contest.', NULL, 1, NULL, N'<p>In 2005, <a href="http://www.quirksmode.org/about/">Peter-Paul Koch</a> launched a small <a href="http://www.quirksmode.org/blog/archives/2005/09/addevent_recodi.html">JavaScript contest</a>. The contestants re-implemented an <code>addEvent()</code> function originally written in 2001. As a prize, PPK offered “eternal and undying fame” and asserted, “your name could become a household name”. The <a href="http://www.quirksmode.org/blog/archives/2005/10/_and_the_winner_1.html">winner</a>? John Resig, who the following year wrote jQuery (<a href="http://libscore.com/#libs">the world’s most popular JavaScript library</a>) and went on to become the most well-known JavaScript developer in the world.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (45, 1, N'Please', N'please', N'article/2016/04/30/1/please', N'<p>This is why I use an ad-blocker:</p>
<figure>
<img alt="A disturbing animated ad of three creepy children and an old man eating some unidentifiable substance" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-oorah.gif" />
<figcaption>The greatest ad I’ve ever seen</figcaption>
</figure>
<p>But if someone asks nicely, I don’t mind turning it off.</p>
<figure>
<img alt="Nicolás Bevacqua asks that you whitelist his ads" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-pony-foo.png" />
<figcaption>PonyFoo asks nicely</figcaption>
</figure>
<p>No problem, Nicolás.</p>
<figure>
<img alt="Louis Lazaris asks that you whitelist his ads" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-impressive-webs.png" />
<figcaption>Impressive Webs asks nicely</figcaption>
</figure>
<p>Sure, Louis. Glad to do it.</p>
<p>Sometimes they give you a choice:</p>
<figure>
<img alt="Wired asks that you either unblock ads or pay $1 per month" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-wired.png" />
<figcaption>Wired makes you choose</figcaption>
</figure>
<p>Whitelist or pay. That’s fair. Nothing is free.</p>
<p>Sometimes they don’t ask:</p>
<figure>
<img alt="Smashing Magazine says they use ad blockers" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-smashing-magazine.png" />
<figcaption>Smashing Magazine makes an observation</figcaption>
</figure>
<p>OK…so you don’t mind if I use an ad-blocker? Cool.</p>
<figure>
<img alt="The Washington Post tells you that your ad-blocker is on" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-washington-post.png" />
<figcaption>The Washington Post makes an observation</figcaption>
</figure>
<p>Why yes. Yes it is on. And it will stay on. Developer tools, inspect, delete element.</p>', NULL, CAST(N'2016-04-30T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'This is why I use an ad-blocker:', NULL, 1, NULL, N'<p>This is why I use an ad-blocker:</p>
<figure>
<img alt="A disturbing animated ad of three creepy children and an old man eating some unidentifiable substance" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-oorah.gif" />
<figcaption>The greatest ad I’ve ever seen</figcaption>
</figure>
<p>But if someone asks nicely, I don’t mind turning it off.</p>
<figure>
<img alt="Nicolás Bevacqua asks that you whitelist his ads" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-pony-foo.png" />
<figcaption>PonyFoo asks nicely</figcaption>
</figure>
<p>No problem, Nicolás.</p>
<figure>
<img alt="Louis Lazaris asks that you whitelist his ads" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-impressive-webs.png" />
<figcaption>Impressive Webs asks nicely</figcaption>
</figure>
<p>Sure, Louis. Glad to do it.</p>
<p>Sometimes they give you a choice:</p>
<figure>
<img alt="Wired asks that you either unblock ads or pay $1 per month" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-wired.png" />
<figcaption>Wired makes you choose</figcaption>
</figure>
<p>Whitelist or pay. That’s fair. Nothing is free.</p>
<p>Sometimes they don’t ask:</p>
<figure>
<img alt="Smashing Magazine says they use ad blockers" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-smashing-magazine.png" />
<figcaption>Smashing Magazine makes an observation</figcaption>
</figure>
<p>OK…so you don’t mind if I use an ad-blocker? Cool.</p>
<figure>
<img alt="The Washington Post tells you that your ad-blocker is on" src="http://cdn.koser.us/img/journal/2016-04-30-blocker-washington-post.png" />
<figcaption>The Washington Post makes an observation</figcaption>
</figure>
<p>Why yes. Yes it is on. And it will stay on. Developer tools, inspect, delete element.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (46, 1, N'Lobotomized Owl', N'lobotomized-owl', N'article/2016/05/22/1/lobotomized-owl', N'<pre><code>* + * {    }</code></pre>    
<p>The “<a href="http://alistapart.com/article/axiomatic-css-and-lobotomized-owls">lobotomized owl selector</a>” is one of those things that seems obvious in hindsight. “Why didn’t I think of that?” It changed how I think about <abbr>CSS</abbr> layout. Check it out.</p>', NULL, CAST(N'2016-05-22T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'* + *', NULL, 1, NULL, N'<pre><code>* + * {    }</code></pre>    
<p>The “<a href="http://alistapart.com/article/axiomatic-css-and-lobotomized-owls">lobotomized owl selector</a>” is one of those things that seems obvious in hindsight. “Why didn’t I think of that?” It changed how I think about <abbr>CSS</abbr> layout. Check it out.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (47, 1, N'Number or String?', N'number-or-string', N'article/2016/06/25/1/number-or-string', N'<p>If a value contains only numeric digits, when should you store it as a number in the database, and when as a string?</p>
<figure>
<img alt="Flowchart for when to store value as number or string in the database." src="http://cdn.koser.us/img/journal/2016-06-25-number-vs-string.png" />
</figure>
<ul>
<li>Phone numbers, US ZIP codes, and credit card numbers can start with a zero: store them as strings.</li>
<li>Product prices can be added (multiple products), subtracted and divided (coupons): store them as numbers.</li>
<li>Store as number any sortable report column values. Otherwise you’ll get “1, 10, 2” instead of “1, 2, 10”.</li>
<li>This one is debatable: if you are storing e.g. a US ZIP code, and you are validating that it only contains numeric digits, should you store it as a number even though you don’t need arithmetic done? I would probably still store it as a string, but I wouldn’t argue if you make it a number.</li>
</ul>', NULL, CAST(N'2016-06-25T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'If a value contains only numeric digits, when should you store it as a number in the database, and when as a string?', NULL, 1, NULL, N'<p>If a value contains only numeric digits, when should you store it as a number in the database, and when as a string?</p>
<figure>
<img alt="Flowchart for when to store value as number or string in the database." src="http://cdn.koser.us/img/journal/2016-06-25-number-vs-string.png" />
</figure>
<ul>
<li>Phone numbers, US ZIP codes, and credit card numbers can start with a zero: store them as strings.</li>
<li>Product prices can be added (multiple products), subtracted and divided (coupons): store them as numbers.</li>
<li>Store as number any sortable report column values. Otherwise you’ll get “1, 10, 2” instead of “1, 2, 10”.</li>
<li>This one is debatable: if you are storing e.g. a US ZIP code, and you are validating that it only contains numeric digits, should you store it as a number even though you don’t need arithmetic done? I would probably still store it as a string, but I wouldn’t argue if you make it a number.</li>
</ul>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (48, 1, N'Practical Typography', N'practical-typography', N'article/2016/07/07/1/practical-typography', N'<p>If you use Microsoft Word or build websites and have never learned the basics of typography, I’d like you to check out Matthew Butterick’s <a href="http://practicaltypography.com/">Practical Typography</a>. You’ll learn about things like margins, punctuation, bold vs. italics, fonts, and get specific recommendations for documents like résumés. Each section is short with practical recommendations and examples. Butterick does present these topics as rules, even when much of the subject matter is opinion. But that’s a good thing for beginners: you’ve got to learn the rules before you can break them. Not interested in typography? At least check out his <a href="http://practicaltypography.com/typography-in-ten-minutes.html">Typography in ten minutes</a> cheat sheet. Consider this an intervention.</p>', NULL, CAST(N'2016-07-07T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'If you use Microsoft Word or build websites and have never learned the basics of typography, I’d like you to check out Matthew Butterick’s Practical Typography.', NULL, 1, NULL, N'<p>If you use Microsoft Word or build websites and have never learned the basics of typography, I’d like you to check out Matthew Butterick’s <a href="http://practicaltypography.com/">Practical Typography</a>. You’ll learn about things like margins, punctuation, bold vs. italics, fonts, and get specific recommendations for documents like résumés. Each section is short with practical recommendations and examples. Butterick does present these topics as rules, even when much of the subject matter is opinion. But that’s a good thing for beginners: you’ve got to learn the rules before you can break them. Not interested in typography? At least check out his <a href="http://practicaltypography.com/typography-in-ten-minutes.html">Typography in ten minutes</a> cheat sheet. Consider this an intervention.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (1045, 1, N'Christmas Letter 2018', N'christmas-letter-2018', N'article/2019/01/01/1/christmas-letter-2018', N'<p>Hello again, friends! It’s been a great year in the Koser house, full of activities that have brought us closer together as a family.</p>  <p>Three birthday parties were among the highlights of the year. In February, we hosted a murder mystery escape room for Melissa’s brother Tim’s birthday. Melissa set up the escape room and enjoyed watching everyone try to solve her riddles and clues.</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-escape-room.jpg" alt="Murder Mystery Escape Room characters">      <figcaption>The Murder Mystery suspects</figcaption>    </figure>  <p>Brian’s birthday in April featured a root beer tasting party! We certainly hadn’t realized there are so many distinct kinds of root beer.</p>  <p>Melissa got a surprise birthday party in August where we played The Last Banquet, a game for up to 25 that we’ve been trying to play for years.</p>  <p>Maybe our most memorable outing was to the National Shrimp Festival. Brian and Melissa went for the food (fresh shrimp, crab cakes, Brian’s first taste of shark, and fried Oreos), while Lydia really enjoyed getting her face painted for the first time!</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-rainbow-kitty.jpg" alt="Lydia with her Rainbow Kitty face paint">      <figcaption>Rainbow Kitty!</figcaption>    </figure>  <p>Some other unique experiences from 2018 were petting a kangaroo at the Gulf Coast Zoo, attending a deluxe movie theater (complete with recliners and waiters who bring you fancy food!), and visiting New Orleans with Brian’s sister Megan and her husband Josh to check out the Audubon Aquarium.</p>  <p>By far some of our best memories came from our summer travels. In late May, we went on our Midwest Road Trip: 14 states, 12 stops, and lots of friends and family crammed into two weeks. The girls handled all of that driving like champs. You can hear all about the trip <a href="http://tto.koser.us/episodes/079-midwest-road-trip-2018/">on our podcast</a>.</p>  <p>One week after we returned home, Melissa was able to fly out to Colorado with baby Amber and surprise her sister Melody.</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-union-station.jpg" alt="Union Station, Kansas City, Missouri">      <figcaption>Union Station in Kansas City</figcaption>    </figure>  <p>September saw us check an item off our bucket list: we attended a standup special featuring Brian Regan, our favorite comedian! That night may have been the hardest we laughed all year.</p>  <p>The last big event we attended was our first NFL game in November. We met up with Brian’s family in New Orleans and watched the Eagles play the Saints. Since half of the family are Eagles fans and half are Saints fans, only half left the game happy. :)</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-eagles-game.jpg" alt="Kosers and Tim at the Eagles-Saints game">      <figcaption>Fly Eagles Fly!</figcaption>    </figure>  <p>Brian also made it to his first NBA game with Tim to see Tim’s Miami Heat beat the New Orleans Pelicans. Tim also finished the year with us, spending the Christmas week playing board games and introducing Brian to some Binzel-favorite Christmas movies.</p>  <p>Amber started walking and knows what cows, pigs, and sheep say.</p>  <p>Lydia was finally potty trained this past February! It has been so nice to only have one diaper to change in this house. She also started doing some preschool classes at a homeschool co-op hosted at our church. At the end of the year she sang her first church special with Melissa.</p>  <figure>      <div class="iframe-container"><iframe src="https://player.vimeo.com/video/309018670" width="640" height="480" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>      <figcaption>Melissa and Lydia singing “God’s Been Good”</figcaption>  </figure>  <p>Melissa accomplished several home projects, including a busyboard for Amber, an apron for Lydia, a dice tray for Brian, and a framed board game for them all.</p>  <p>Brian started being more health-conscious and lost 20 pounds. At work he got a promotion and started a ping pong league. And his major project was <a href="http://sfc.blue">sfc.blue</a>, a listener’s guide for our favorite podcast, The Sci-Fi Christian.</p>  <p>It was a great year, and we’re very excited about all that 2019 has in store for us. Wishing you all a Merry Christmas and a Happy New Year!</p>', N'The 2018 Christmas Letter for Brian, Melissa, Lydia, and Amber Koser', CAST(N'2019-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'Hello again, friends! It’s been a great year in the Koser house, full of activities that have brought us closer together as a family.', N'http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-christmas-photo.jpg', 1, NULL, N'<p>Hello again, friends! It’s been a great year in the Koser house, full of activities that have brought us closer together as a family.</p>  <p>Three birthday parties were among the highlights of the year. In February, we hosted a murder mystery escape room for Melissa’s brother Tim’s birthday. Melissa set up the escape room and enjoyed watching everyone try to solve her riddles and clues.</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-escape-room.jpg" alt="Murder Mystery Escape Room characters">      <figcaption>The Murder Mystery suspects</figcaption>    </figure>  <p>Brian’s birthday in April featured a root beer tasting party! We certainly hadn’t realized there are so many distinct kinds of root beer.</p>  <p>Melissa got a surprise birthday party in August where we played The Last Banquet, a game for up to 25 that we’ve been trying to play for years.</p>  <p>Maybe our most memorable outing was to the National Shrimp Festival. Brian and Melissa went for the food (fresh shrimp, crab cakes, Brian’s first taste of shark, and fried Oreos), while Lydia really enjoyed getting her face painted for the first time!</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-rainbow-kitty.jpg" alt="Lydia with her Rainbow Kitty face paint">      <figcaption>Rainbow Kitty!</figcaption>    </figure>  <p>Some other unique experiences from 2018 were petting a kangaroo at the Gulf Coast Zoo, attending a deluxe movie theater (complete with recliners and waiters who bring you fancy food!), and visiting New Orleans with Brian’s sister Megan and her husband Josh to check out the Audubon Aquarium.</p>  <p>By far some of our best memories came from our summer travels. In late May, we went on our Midwest Road Trip: 14 states, 12 stops, and lots of friends and family crammed into two weeks. The girls handled all of that driving like champs. You can hear all about the trip <a href="http://tto.koser.us/episodes/079-midwest-road-trip-2018/">on our podcast</a>.</p>  <p>One week after we returned home, Melissa was able to fly out to Colorado with baby Amber and surprise her sister Melody.</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-union-station.jpg" alt="Union Station, Kansas City, Missouri">      <figcaption>Union Station in Kansas City</figcaption>    </figure>  <p>September saw us check an item off our bucket list: we attended a standup special featuring Brian Regan, our favorite comedian! That night may have been the hardest we laughed all year.</p>  <p>The last big event we attended was our first NFL game in November. We met up with Brian’s family in New Orleans and watched the Eagles play the Saints. Since half of the family are Eagles fans and half are Saints fans, only half left the game happy. :)</p>  <figure>      <img src="http://cdn.koser.us/img/journal/2019-01-01-christmas-letter-eagles-game.jpg" alt="Kosers and Tim at the Eagles-Saints game">      <figcaption>Fly Eagles Fly!</figcaption>    </figure>  <p>Brian also made it to his first NBA game with Tim to see Tim’s Miami Heat beat the New Orleans Pelicans. Tim also finished the year with us, spending the Christmas week playing board games and introducing Brian to some Binzel-favorite Christmas movies.</p>  <p>Amber started walking and knows what cows, pigs, and sheep say.</p>  <p>Lydia was finally potty trained this past February! It has been so nice to only have one diaper to change in this house. She also started doing some preschool classes at a homeschool co-op hosted at our church. At the end of the year she sang her first church special with Melissa.</p>  <figure>      <div class="iframe-container"><iframe src="https://player.vimeo.com/video/309018670" width="640" height="480" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>      <figcaption>Melissa and Lydia singing “God’s Been Good”</figcaption>  </figure>  <p>Melissa accomplished several home projects, including a busyboard for Amber, an apron for Lydia, a dice tray for Brian, and a framed board game for them all.</p>  <p>Brian started being more health-conscious and lost 20 pounds. At work he got a promotion and started a ping pong league. And his major project was <a href="http://sfc.blue">sfc.blue</a>, a listener’s guide for our favorite podcast, The Sci-Fi Christian.</p>  <p>It was a great year, and we’re very excited about all that 2019 has in store for us. Wishing you all a Merry Christmas and a Happy New Year!</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (1046, 1, N'SILO: Snakes on Sticks', N'silo-snakes-on-sticks', N'article/2016/05/21/1/silo-snakes-on-sticks', N'<p>I’ve started bookmarking the interesting Wikipedia articles I stumble on. You’ll see them pop up here with the prefix “SILO”: “Stuff I Learned Online”. Enjoy the tidbits.</p>  <hr class="hr-placeholder">  <p>What’s the deal with medical organizations and snakes on sticks? Why is it sometime one snake and sometimes two snakes?</p>  <h1 id="-span-class-giga-span-rod-of-asclepius"><span class="giga">⚕</span> Rod of Asclepius</h1>  <p>The <a href="https://en.m.wikipedia.org/wiki/Rod_of_Asclepius">Rod of Asclepius</a> is a wooden rod with a single snake entwined around it. It’s a common symbol for medicine, used by entities such as the World Health Organization. Asclepius was the Greek god of medicine, son of Apollo. Why did he carry a snake on a stick? Some think it was symbolic; for example, the way snakes shed their skin could symbolize rejuvenation.</p>  <p>Possibly related (although there’s no way to know), the Rod of Asclepius resembles the rod with a bronze serpent<sup>1</sup> that God told Moses to erect in the wilderness. Israelites bitten by poisonous snakes could be healed by just looking at the bronze snake. Fifteen-hundred years later, Jesus said that the snake was a picture of himself:</p>  <blockquote class="bible-red-letter">  And as Moses lifted up the serpent in the wilderness, even so must the Son of man be lifted up.   <i class="bible-reference milli">John 3:14</i>  </blockquote>  <blockquote class="bible-red-letter">  And I, if I be lifted up from the earth, will draw all men unto me. <i class="bible-reference milli">John 12:32</i>  </blockquote>  <h1 id="-span-class-giga-span-caduceus"><span class="giga">☤</span> Caduceus</h1>  <p>The <a href="https://en.m.wikipedia.org/wiki/Caduceus">caduceus</a> is a rod with two snakes wrapped around the rod and each other. It was given to Hermes<sup>2</sup>, god of commerce and the messenger of the gods, by Apollo<sup>3</sup>, the father of Asclepius. Why did <em>he</em> carry snakes on a stick? The world is full of mysteries. The caduceus is also used by some modern organizations as a symbol of medicine, although the Rod of Asclepius is more common.</p>  <p>So why is the caduceus used as a medical symbol when it had no connection to medicine originally? Apparently in the late 1800’s the US military confused the two and started using the caduceus as a medical insignia. Oops.</p>  <p>I keep them straight in my mind by remembering that “ca<em>duce</em>us” has a “deuce” in the middle, and it’s the one with two snakes.</p>  <hr>  <ol>      <li>The brass serpent was later called “<a href="https://www.biblegateway.com/passage/?search=2%20Kings+18:4&amp;version=KJV">Nehushtan</a>”.   </li>      <li>Mercury is the Roman god that corresponded to the Greek god Hermes. </li>      <li>The god Apollo was called “Apollo” in both Greek and Roman pantheons.</li>  </ol>', N'Brian Koser explains the difference between the Rod of Asclepius and the caduceus', CAST(N'2016-05-21T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, N'I’ve started book­mark­ing the in­ter­est­ing Wikipedia ar­ti­cles I stum­ble on. You’ll see them pop up here with the pre­fix “SILO”: “Stuff I Learned On­line”. En­joy the tid­bits.', NULL, 1, NULL, N'<p>I’ve started bookmarking the interesting Wikipedia articles I stumble on. You’ll see them pop up here with the prefix “SILO”: “Stuff I Learned Online”. Enjoy the tidbits.</p>
<hr class="fleuron">
<p>What’s the deal with medical organizations and snakes on sticks? Why is it sometime one snake and sometimes two snakes?</p>
<h1 id="-span-class-giga-span-rod-of-asclepius"><span class="giga">⚕</span> Rod of Asclepius</h1>
<p>The <a href="https://en.m.wikipedia.org/wiki/Rod_of_Asclepius">Rod of Asclepius</a> is a wooden rod with a single snake entwined around it. It’s a common symbol for medicine, used by entities such as the World Health Organization. Asclepius was the Greek god of medicine, son of Apollo. Why did he carry a snake on a stick? Some think it was symbolic; for example, the way snakes shed their skin could symbolize rejuvenation.</p>
<p>Possibly related (although there’s no way to know), the Rod of Asclepius resembles the rod with a bronze serpent<sup>1</sup> that God told Moses to erect in the wilderness. Israelites bitten by poisonous snakes could be healed by just looking at the bronze snake. Fifteen-hundred years later, Jesus said that the snake was a picture of himself:</p>
<blockquote class="bible-red-letter">
And as Moses lifted up the serpent in the wilderness, even so must the Son of man be lifted up. 
<i class="bible-reference milli">John 3:14</i>
</blockquote>
<blockquote class="bible-red-letter">
And I, if I be lifted up from the earth, will draw all men unto me. <i class="bible-reference milli">John 12:32</i>
</blockquote>
<h1 id="-span-class-giga-span-caduceus"><span class="giga">☤</span> Caduceus</h1>
<p>The <a href="https://en.m.wikipedia.org/wiki/Caduceus">caduceus</a> is a rod with two snakes wrapped around the rod and each other. It was given to Hermes<sup>2</sup>, god of commerce and the messenger of the gods, by Apollo<sup>3</sup>, the father of Asclepius. Why did <em>he</em> carry snakes on a stick? The world is full of mysteries. The caduceus is also used by some modern organizations as a symbol of medicine, although the Rod of Asclepius is more common.</p>
<p>So why is the caduceus used as a medical symbol when it had no connection to medicine originally? Apparently in the late 1800’s the US military confused the two and started using the caduceus as a medical insignia. Oops.</p>
<p>I keep them straight in my mind by remembering that “ca<em>duce</em>us” has a “deuce” in the middle, and it’s the one with two snakes.</p>
<hr>
<ol>
    <li>The brass serpent was later called “<a href="https://www.biblegateway.com/passage/?search=2%20Kings+18:4&amp;version=KJV">Nehushtan</a>”.   </li>
    <li>Mercury is the Roman god that corresponded to the Greek god Hermes. </li>
    <li>The god Apollo was called “Apollo” in both Greek and Roman pantheons.</li>
</ol>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (1051, 1, N'“Friends” Poem', N'friends-poem', N'article/2019/03/23/1/friends-poem', N'<h2>Rachel</h2>
<p>Vivacious, friendly, and warm,<br>
Creative, helping, and bright.<br>
She does much, without much thanks,<br> 
But when she’s gone, she’s greatly missed.</p>

<h2>Holly</h2>
<p>Mild and cheerful, caring and kind,<br>
She is a friend you can always rely on.<br>
Balanced in mind with a sweet charming humor,<br>
Time spent with her is ever a pleasure.</p>

<h2>Catherine</h2>
<p>Laughing and cheeky to bring out your grin,<br>
Sparkling with fun is this girlfriend to me.<br>
Always a hand she is willing to lend,<br>
Along with her smile that brightens the mood.</p>

<h2>Judy</h2>
<p>Quiet, shy, not craving your notice,<br>
Witty, fair, a pearl among pebbles.<br>
Her thoughts are of others, never herself,<br>
She’s the gentlest and sweetest of any I’ve met.</p>

<h2>Tina</h2>
<p>Often the start of a fun, hearty joke,<br>
She’ll cheerily laugh at her own traits and quirks,<br>
While caring and service are foremost in mind,<br>
To shoulder your burdens and lighten your load.</p>

<h2>Charity</h2>
<p>Sassy yet kind, fervent yet grounded,<br>
Complex in spirit and sincere in soul.<br>
Lovely of face and more lovely of heart,<br>
Her family is ever her aim to uphold.</p>

<h2>Theresa</h2>
<p>Exquisite in looks, such as only is dreamed of,<br>
Yet pride or conceit will not ever portray her.<br>
Strongly intelligent and musically gifted,<br>
Talents and wits are delighting to all.</p>

<h2>Tristan</h2>
<p>Recently met, yet such a dear heart!<br>
Her smile is sunshine in every room.<br>
A mother she is, and the word is high praise,<br>
For she’s gentle and firm, tender and fun.</p>', N'Melissa wrote a poem about some of her friends.', CAST(N'2019-03-23T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, NULL, NULL, 1, NULL, N'<h2>Rachel</h2>
<p>Vivacious, friendly, and warm,<br>
Creative, helping, and bright.<br>
She does much, without much thanks,<br> 
But when she’s gone, she’s greatly missed.</p>

<h2>Holly</h2>
<p>Mild and cheerful, caring and kind,<br>
She is a friend you can always rely on.<br>
Balanced in mind with a sweet charming humor,<br>
Time spent with her is ever a pleasure.</p>

<h2>Catherine</h2>
<p>Laughing and cheeky to bring out your grin,<br>
Sparkling with fun is this girlfriend to me.<br>
Always a hand she is willing to lend,<br>
Along with her smile that brightens the mood.</p>

<h2>Judy</h2>
<p>Quiet, shy, not craving your notice,<br>
Witty, fair, a pearl among pebbles.<br>
Her thoughts are of others, never herself,<br>
She’s the gentlest and sweetest of any I’ve met.</p>

<h2>Tina</h2>
<p>Often the start of a fun, hearty joke,<br>
She’ll cheerily laugh at her own traits and quirks,<br>
While caring and service are foremost in mind,<br>
To shoulder your burdens and lighten your load.</p>

<h2>Charity</h2>
<p>Sassy yet kind, fervent yet grounded,<br>
Complex in spirit and sincere in soul.<br>
Lovely of face and more lovely of heart,<br>
Her family is ever her aim to uphold.</p>

<h2>Theresa</h2>
<p>Exquisite in looks, such as only is dreamed of,<br>
Yet pride or conceit will not ever portray her.<br>
Strongly intelligent and musically gifted,<br>
Talents and wits are delighting to all.</p>

<h2>Tristan</h2>
<p>Recently met, yet such a dear heart!<br>
Her smile is sunshine in every room.<br>
A mother she is, and the word is high praise,<br>
For she’s gentle and firm, tender and fun.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (1053, 1, N'A Celebration of Language', N'a-celebration-of-language', N'article/2019/04/01/1/a-celebration-of-language', N'<p>Alec, mensch solitario, 🍺. Arahkun appears, Alec > tushy. Biiru ^ schnozz.</p>
<p>“Oy! Eres loco?”</p>
<p>“Ich bin es Yosef!”</p>
<p>:-[]</p>
<p>“Je suis acrobatique en uniforme.”</p>', N'Melissa wrote a poem from the prompt: "language".', CAST(N'2019-04-01T00:00:00.0000000+00:00' AS DateTimeOffset), 1, NULL, NULL, NULL, 1, NULL, N'<p>Alec, mensch solitario, 🍺. Arahkun appears, Alec > tushy. Biiru ^ schnozz.</p>
<p>“Oy! Eres loco?”</p>
<p>“Ich bin es Yosef!”</p>
<p>:-[]</p>
<p>“Je suis acrobatique en uniforme.”</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (1054, 1, N'The Glory Days', N'the-glory-days', NULL, N'<p><i>The bold, brave warrior bellowed his challenge as he charged towards the dragon, cloak streaming behind him and sword held high aloft. Unmoved, the great beast roared back its own defiance and swung its mighty tail at the knight, who nimbly rolled under it even as he swung at it with his blade. A great gout of blood gushed forth from the severed stump, and the enraged dragon snarled in pain. As the warrior sprang to his feet, a lash of claws sent him flying backwards, tunic rent and blood spraying. The dragon howled in triumph, while the princess it grasped in its fearsome talons screamed in despair. It lumbered over towards the fallen man and prepared to deliver the death blow. But as its teeth came crashing down, the knight thrust upward with his sword straight into the dragon’s maw. The beast was vanquished, the damsel was saved, and great glory was won!</i></p><p>Shadows fell as the sun went down, and the man wearily stumped through his land, shutting the gates, checking the locks, restocking the defenses. It had been years since any attacks had come, yet every night he methodically went through the routine. Each night it took a little longer, each night it drained more energy; he was getting old. Sometimes, in his deepest fears which he tried to dismiss, he wondered if he would be able to repel an attack should it ever come. As he entered his dwelling, the simple closing of the door became more of a collapsing against it from weariness. He closed his eyes a moment in despondency. Where was the strength of his youth? What of the courage that once had burned so fiercely within him? No more did acts of valor define him, no more did great renown surround him; the foes he fought of late were aching joints and halting movements. He trudged through the halls, thoughts heavy with gloom. An open doorway caught his eye, and he paused to glance inside. Peace and contentment flowed from this room, where slept an ethereal queen and a young boy. The lady’s fair beauty stirred him as always, more lovely now than the day of their wedding. Their son curled trustingly in her arms, doubtless dreaming of grand adventures to come. A smile creased the man’s face as he thought on how the lad watched him, clung to his tales, and mimicked them later with his toys. He gazed once more at his beloved family, who wholly trusted and believed in him.</p><p>The warrior gently closed the door and moved to his own chamber, setting the lamp down beside his bed. Gone were the years, gone the creases, gone the faltering steps. As he climbed into bed, the shadow cast by the lamplight was that of a tall figure, cloak streaming out and blade held high aloft.</p>', N'Melissa wrote a story from the prompt of a picture of a friend.', NULL, 1, NULL, N'The bold, brave warrior bellowed his challenge as he charged towards the dragon, cloak streaming behind him and sword held high aloft.', NULL, 0, N'The bold, brave warrior bellowed his challenge as he charged towards the dragon, cloak streaming behind him and sword held high aloft. Unmoved, the great beast roared back its own defiance and swung its mighty tail at the knight, who nimbly rolled under it even as he swung at it with his blade. A great gout of blood gushed forth from the severed stump, and the enraged dragon snarled in pain. As the warrior sprang to his feet, a lash of claws sent him flying backwards, tunic rent and blood spraying. The dragon howled in triumph, while the princess it grasped in its fearsome talons screamed in despair. It lumbered over towards the fallen man and prepared to deliver the death blow. But as its teeth came crashing down, the knight thrust upward with his sword straight into the dragon’s maw. The beast was vanquished, the damsel was saved, and great glory was won!

Shadows fell as the sun went down, and the man wearily stumped through his land, shutting the gates, checking the locks, restocking the defenses. It had been years since any attacks had come, yet every night he methodically went through the routine. Each night it took a little longer, each night it drained more energy; he was getting old. Sometimes, in his deepest fears which he tried to dismiss, he wondered if he would be able to repel an attack should it ever come. As he entered his dwelling, the simple closing of the door became more of a collapsing against it from weariness. He closed his eyes a moment in despondency. Where was the strength of his youth? What of the courage that once had burned so fiercely within him? No more did acts of valor define him, no more did great renown surround him; the foes he fought of late were aching joints and halting movements. He trudged through the halls, thoughts heavy with gloom. An open doorway caught his eye, and he paused to glance inside. Peace and contentment flowed from this room, where slept an ethereal queen and a young boy. The lady’s fair beauty stirred him as always, more lovely now than the day of their wedding. Their son curled trustingly in her arms, doubtless dreaming of grand adventures to come. A smile creased the man’s face as he thought on how the lad watched him, clung to his tales, and mimicked them later with his toys. He gazed once more at his beloved family, who wholly trusted and believed in him.

The warrior gently closed the door and moved to his own chamber, setting the lamp down beside his bed. Gone were the years, gone the creases, gone the faltering steps. As he climbed into bed, the shadow cast by the lamplight was that of a tall figure, cloak streaming out and blade held high aloft.', N'<p><i>The bold, brave warrior bellowed his challenge as he charged towards the dragon, cloak streaming behind him and sword held high aloft. Unmoved, the great beast roared back its own defiance and swung its mighty tail at the knight, who nimbly rolled under it even as he swung at it with his blade. A great gout of blood gushed forth from the severed stump, and the enraged dragon snarled in pain. As the warrior sprang to his feet, a lash of claws sent him flying backwards, tunic rent and blood spraying. The dragon howled in triumph, while the princess it grasped in its fearsome talons screamed in despair. It lumbered over towards the fallen man and prepared to deliver the death blow. But as its teeth came crashing down, the knight thrust upward with his sword straight into the dragon’s maw. The beast was vanquished, the damsel was saved, and great glory was won!</i></p><p>Shadows fell as the sun went down, and the man wearily stumped through his land, shutting the gates, checking the locks, restocking the defenses. It had been years since any attacks had come, yet every night he methodically went through the routine. Each night it took a little longer, each night it drained more energy; he was getting old. Sometimes, in his deepest fears which he tried to dismiss, he wondered if he would be able to repel an attack should it ever come. As he entered his dwelling, the simple closing of the door became more of a collapsing against it from weariness. He closed his eyes a moment in despondency. Where was the strength of his youth? What of the courage that once had burned so fiercely within him? No more did acts of valor define him, no more did great renown surround him; the foes he fought of late were aching joints and halting movements. He trudged through the halls, thoughts heavy with gloom. An open doorway caught his eye, and he paused to glance inside. Peace and contentment flowed from this room, where slept an ethereal queen and a young boy. The lady’s fair beauty stirred him as always, more lovely now than the day of their wedding. Their son curled trustingly in her arms, doubtless dreaming of grand adventures to come. A smile creased the man’s face as he thought on how the lad watched him, clung to his tales, and mimicked them later with his toys. He gazed once more at his beloved family, who wholly trusted and believed in him.</p><p>The warrior gently closed the door and moved to his own chamber, setting the lamp down beside his bed. Gone were the years, gone the creases, gone the faltering steps. As he climbed into bed, the shadow cast by the lamplight was that of a tall figure, cloak streaming out and blade held high aloft.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (3051, 1, N'Case by Case', N'case-by-case', N'article/2019/06/19/2/case-by-case', N'<ul><li>this is lowercase</li><li>THIS IS UPPERCASE</li><li>This Is Title Case</li><li>tHIS iS rEVERSE cASE</li><li>tHiS iS cRaZy CaSe</li><li>ThisIsPascalCase</li><li>thisIsCamelCase</li><li>this_is_snake_case</li><li>THIS_IS_SCREAMING_SNAKE_CASE</li><li>this-is-kebab-case</li><li>this|is|pipe|case</li><li>this🍩is🍩donut🍩case</li></ul>', N'Brian lists the various ways to use casing.', CAST(N'2019-06-19T21:44:24.8029386-04:00' AS DateTimeOffset), 2, NULL, N'this is lowercase', NULL, 1, N'this is lowercase
THIS IS UPPERCASE
This Is Title Case
tHIS iS rEVERSE cASE
tHiS iS cRaZy CaSe
ThisIsPascalCase
thisIsCamelCase
this_is_snake_case
THIS_IS_SCREAMING_SNAKE_CASE
this-is-kebab-case
this|is|pipe|case
this🍩is🍩donut🍩case', N'<ul><li>this is lowercase</li><li>THIS IS UPPERCASE</li><li>This Is Title Case</li><li>tHIS iS rEVERSE cASE</li><li>tHiS iS cRaZy CaSe</li><li>ThisIsPascalCase</li><li>thisIsCamelCase</li><li>this_is_snake_case</li><li>THIS_IS_SCREAMING_SNAKE_CASE</li><li>this-is-kebab-case</li><li>this|is|pipe|case</li><li>this🍩is🍩donut🍩case</li></ul>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (3052, 1, N'Travel', N'travel', N'article/2019/06/19/1/travel', N'<p>We''ve traveled quite a bit over the seven years of our marriage. We''ve hit 3 of the four corners of the U.S. (and much in between), taken a cruise to Haiti and Jamaica, and flown to Honduras. We travel because we have family and friends widely spread around, or because we''re looking for new job opportunities, or because we like to experience new adventures. But mostly we travel because we itch to. After months, or weeks, or perhaps mere days of the same routine, we desire something fresh to tantalize us. We may travel to see that movie we''ve been anticipating, or finally get over to a local friend''s house that we''ve never visited during our many years of residence, or even just check out a new store whose sole novelty is its newness. Why? Because there''s something so delightful about the unknown, so thrilling about being in a new environment with new sights, sounds, smells, and sensations. Even places we''ve previously been to can be exciting, if they''re not well-known or haven''t been visited in some time: a house you''ve just moved into (but haven''t yet unpacked), a store whose merchandise changes with the seasons, a different street explored on your daily walk. Bored with your life? You needn''t leave town to experience change. Simply...travel.</p>', N'Melissa describes travelling', CAST(N'2019-06-19T20:38:45.7416432-05:00' AS DateTimeOffset), 1, NULL, N'We''ve traveled quite a bit over the seven years of our marriage.', NULL, 1, N'We''ve traveled quite a bit over the seven years of our marriage. We''ve hit 3 of the four corners of the U.S. (and much in between), taken a cruise to Haiti and Jamaica, and flown to Honduras. We travel because we have family and friends widely spread around, or because we''re looking for new job opportunities, or because we like to experience new adventures. But mostly we travel because we itch to. After months, or weeks, or perhaps mere days of the same routine, we desire something fresh to tantalize us. We may travel to see that movie we''ve been anticipating, or finally get over to a local friend''s house that we''ve never visited during our many years of residence, or even just check out a new store whose sole novelty is its newness. Why? Because there''s something so delightful about the unknown, so thrilling about being in a new environment with new sights, sounds, smells, and sensations. Even places we''ve previously been to can be exciting, if they''re not well-known or haven''t been visited in some time: a house you''ve just moved into (but haven''t yet unpacked), a store whose merchandise changes with the seasons, a different street explored on your daily walk. Bored with your life? You needn''t leave town to experience change. Simply...travel.', N'<p>We''ve traveled quite a bit over the seven years of our marriage. We''ve hit 3 of the four corners of the U.S. (and much in between), taken a cruise to Haiti and Jamaica, and flown to Honduras. We travel because we have family and friends widely spread around, or because we''re looking for new job opportunities, or because we like to experience new adventures. But mostly we travel because we itch to. After months, or weeks, or perhaps mere days of the same routine, we desire something fresh to tantalize us. We may travel to see that movie we''ve been anticipating, or finally get over to a local friend''s house that we''ve never visited during our many years of residence, or even just check out a new store whose sole novelty is its newness. Why? Because there''s something so delightful about the unknown, so thrilling about being in a new environment with new sights, sounds, smells, and sensations. Even places we''ve previously been to can be exciting, if they''re not well-known or haven''t been visited in some time: a house you''ve just moved into (but haven''t yet unpacked), a store whose merchandise changes with the seasons, a different street explored on your daily walk. Bored with your life? You needn''t leave town to experience change. Simply...travel.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (3053, 1, N'The 5 Whys', N'the-5-whys', N'article/2019/06/21/1/the-5-whys', N'<p>Have you heard of <a href="https://www.isixsigma.com/tools-templates/cause-effect/determine-root-cause-5-whys/">The 5 Whys</a>? It''s a <a href="https://en.m.wikipedia.org/wiki/Six_Sigma">Six Sigma</a> technique for discovering the root of a problem. Each "why" gets you past surface effects and closer to the cause.</p><p>It sounded good in theory, so I tried it on Lydia the other night when she didn''t want to put her pajamas on.</p><p>Brian: Why don''t you want to wear pajamas?<br>Lydia: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.</p><p>I''m not impressed with the technique.</p>', N'Brian tries The 5 Whys technique on Lydia.', CAST(N'2019-06-21T23:33:28.9284846-04:00' AS DateTimeOffset), 1, NULL, N'Have you heard of The 5 Whys? It''s a Six Sigma technique for discovering the root of a problem.', NULL, 1, N'Have you heard of The 5 Whys? It''s a Six Sigma technique for discovering the root of a problem. Each "why" gets you past surface effects and closer to the cause.

It sounded good in theory, so I tried it on Lydia the other night when she didn''t want to put her pajamas on.

Brian: Why don''t you want to wear pajamas?
Lydia: Because I don''t want to.
B: Why?
L: Because I don''t want to.
B: Why?
L: Because I don''t want to.
B: Why?
L: Because I don''t want to.
B: Why?
L: Because I don''t want to.

I''m not impressed with the technique.', N'<p>Have you heard of <a href="https://www.isixsigma.com/tools-templates/cause-effect/determine-root-cause-5-whys/">The 5 Whys</a>? It''s a <a href="https://en.m.wikipedia.org/wiki/Six_Sigma">Six Sigma</a> technique for discovering the root of a problem. Each "why" gets you past surface effects and closer to the cause.</p><p>It sounded good in theory, so I tried it on Lydia the other night when she didn''t want to put her pajamas on.</p><p>Brian: Why don''t you want to wear pajamas?<br>Lydia: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.<br>B: Why?<br>L: Because I don''t want to.</p><p>I''m not impressed with the technique.</p>', 0)
INSERT [dbo].[post] ([id], [posttypeid], [title], [slug], [url], [body], [description], [datepublished], [datepublishedid], [datelastupdated], [excerpt], [imageurl], [ispublic], [bodytext], [bodyprocessed], [isdeleted]) VALUES (3054, 1, N'Chik-fil-A Hires Atheists Part-Time in Order to Open on Sundays', N'chik-fil-a-hires-atheists-part-time-in-order-to-open-on-sundays', N'article/2019/06/22/2/chik-fil-a-hires-atheists-part-time-in-order-to-open-on-sundays', N'<p>Mobile, Alabama—Chik-fil-A has announced a new pilot study, titled "One More Day", at three Mobile, Alabama locations. The three selected franchises will hire part-time atheist employees to work one day a week, allowing the famously Christian organization to remain open on Sundays.</p><p>"This initiative will allow us to serve all members of our community every day of the week, and still retain our convictions to honor the Lord''s Day," said Cathy Belmont, Chik-fil-A public relations spokesman. "These workers of no faith will allow us to honor our faith."</p><p>Local evangelical pastors have been quick to criticize the move. "I just completed a seven-week sermon series on ''Keeping the Sabbath''", said Reverend Lincoln Hereford. "We had finally committed as a church to only eat canned foods on Sunday, but all of that progress has been erased by Chik-fil-A. How am I supposed to keep the flock away from crispy chicken sandwiches after the morning service?" Reverend Hereford declined to comment when asked if he would be protesting the change with a boycott.</p><p>Chik-fil-A sees no conflict. "The reality is that Christians like to go out for Sunday afternoon lunch," said Cathy Belmont. "Would it be better for them to purchase the burgers of this world, or to worship God together over a plate of waffle fries?"</p><p>Local Chik-fil-A management is also in favor of the move. "I will of course be on call every Sunday," said Angus Kerry, manager at the Airport Boulevard franchise. "It will be a spiritual hardship, but Chik-fil-A has worked with my schedule and remuneration to ensure that I can shoulder the burden."</p><p>The manager does not foresee any conflict between the current and incoming employees. "With cross-training and schedule substitutions, it''s inevitable that there will be some mixing of the employees," said Mr. Kerry. "But all our full-time employees will go through sensitivity training to learn how to interact with the new employees. And we will strongly discourage proselytizing on the job to reduce turnover in the non-faith-practicing portion of our staff."</p><p>Chik-fil-A has also faced renewed criticism from synagogues and Seventh-Day Adventist churches. "We''ve held a few rallies to demand that Chik-fil-A close on Saturday," said Pastor Bill Miller of Gilmore Creek Seventh-day Adventist Church of Mobile. "So this is definitely a setback. But I''m taking it as a sign to redouble our efforts."</p><p>Other Christians see no problem with working on Sundays. Local pastor Moses Jones explained, "Well, the Sabbath was actually on Saturday, and it only applied to the Jews. There''s no reason a Christian couldn''t worship God and work on Sundays."</p><p>Cathy Belmont cautions critics that this is only a pilot program and will not necessarily be continued throughout the country. "We''ll look at the numbers after the trial, and who knows? Maybe we''ll draw some customers that would never darken the door of a church. To me, that would be a success."</p><hr><p>I got the idea for this article back when <a href="https://babylonbee.com/">Babylon Bee</a> took submissions. Unfortunately, they now only publish articles written by their paid contributors.</p>', N'Brian wrote a Babylon Bee-style satire about Chik-fil-A opening on Sundays', CAST(N'2019-06-22T01:16:21.0413244-04:00' AS DateTimeOffset), 2, NULL, N'Chik-fil-A has announced a new pilot study, titled "One More Day", at three Mobile, Alabama locations. The three selected franchises will hire part-time atheist employees to work one day a week, allowing the famously Christian organization to remain open o', NULL, 1, N'Mobile, Alabama—Chik-fil-A has announced a new pilot study, titled "One More Day", at three Mobile, Alabama locations. The three selected franchises will hire part-time atheist employees to work one day a week, allowing the famously Christian organization to remain open on Sundays.    "This initiative will allow us to serve all members of our community every day of the week, and still retain our convictions to honor the Lord''s Day," said Cathy Belmont, Chik-fil-A public relations spokesman. "These workers of no faith will allow us to honor our faith."    Local evangelical pastors have been quick to criticize the move. "I just completed a seven-week sermon series on ''Keeping the Sabbath''", said Reverend Lincoln Hereford. "We had finally committed as a church to only eat canned foods on Sunday, but all of that progress has been erased by Chik-fil-A. How am I supposed to keep the flock away from crispy chicken sandwiches after the morning service?" Reverend Hereford declined to comment when asked if he would be protesting the change with a boycott.    Chik-fil-A sees no conflict. "The reality is that Christians like to go out for Sunday afternoon lunch," said Cathy Belmont. "Would it be better for them to purchase the burgers of this world, or to worship God together over a plate of waffle fries?"    Local Chik-fil-A management is also in favor of the move. "I will of course be on call every Sunday," said Angus Kerry, manager at the Airport Boulevard franchise. "It will be a spiritual hardship, but Chik-fil-A has worked with my schedule and remuneration to ensure that I can shoulder the burden."    The manager does not foresee any conflict between the current and incoming employees. "With cross-training and schedule substitutions, it''s inevitable that there will be some mixing of the employees," said Mr. Kerry. "But all our full-time employees will go through sensitivity training to learn how to interact with the new employees. And we will strongly discourage proselytizing on the job to reduce turnover in the non-faith-practicing portion of our staff."    Chik-fil-A has also faced renewed criticism from synagogues and Seventh-Day Adventist churches. "We''ve held a few rallies to demand that Chik-fil-A close on Saturday," said Pastor Bill Miller of Gilmore Creek Seventh-day Adventist Church of Mobile. "So this is definitely a setback. But I''m taking it as a sign to redouble our efforts."    Other Christians see no problem with working on Sundays. Local pastor Moses Jones explained, "Well, the Sabbath was actually on Saturday, and it only applied to the Jews. There''s no reason a Christian couldn''t worship God and work on Sundays."    Cathy Belmont cautions critics that this is only a pilot program and will not necessarily be continued throughout the country. "We''ll look at the numbers after the trial, and who knows? Maybe we''ll draw some customers that would never darken the door of a church. To me, that would be a success. I got the idea for this article back when Babylon Bee took submissions. Unfortunately, they now only publish articles written by their paid contributors."', N'<p>Mobile, Alabama—Chik-fil-A has announced a new pilot study, titled "One More Day", at three Mobile, Alabama locations. The three selected franchises will hire part-time atheist employees to work one day a week, allowing the famously Christian organization to remain open on Sundays.</p><p>"This initiative will allow us to serve all members of our community every day of the week, and still retain our convictions to honor the Lord''s Day," said Cathy Belmont, Chik-fil-A public relations spokesman. "These workers of no faith will allow us to honor our faith."</p><p>Local evangelical pastors have been quick to criticize the move. "I just completed a seven-week sermon series on ''Keeping the Sabbath''", said Reverend Lincoln Hereford. "We had finally committed as a church to only eat canned foods on Sunday, but all of that progress has been erased by Chik-fil-A. How am I supposed to keep the flock away from crispy chicken sandwiches after the morning service?" Reverend Hereford declined to comment when asked if he would be protesting the change with a boycott.</p><p>Chik-fil-A sees no conflict. "The reality is that Christians like to go out for Sunday afternoon lunch," said Cathy Belmont. "Would it be better for them to purchase the burgers of this world, or to worship God together over a plate of waffle fries?"</p><p>Local Chik-fil-A management is also in favor of the move. "I will of course be on call every Sunday," said Angus Kerry, manager at the Airport Boulevard franchise. "It will be a spiritual hardship, but Chik-fil-A has worked with my schedule and remuneration to ensure that I can shoulder the burden."</p><p>The manager does not foresee any conflict between the current and incoming employees. "With cross-training and schedule substitutions, it''s inevitable that there will be some mixing of the employees," said Mr. Kerry. "But all our full-time employees will go through sensitivity training to learn how to interact with the new employees. And we will strongly discourage proselytizing on the job to reduce turnover in the non-faith-practicing portion of our staff."</p><p>Chik-fil-A has also faced renewed criticism from synagogues and Seventh-Day Adventist churches. "We''ve held a few rallies to demand that Chik-fil-A close on Saturday," said Pastor Bill Miller of Gilmore Creek Seventh-day Adventist Church of Mobile. "So this is definitely a setback. But I''m taking it as a sign to redouble our efforts."</p><p>Other Christians see no problem with working on Sundays. Local pastor Moses Jones explained, "Well, the Sabbath was actually on Saturday, and it only applied to the Jews. There''s no reason a Christian couldn''t worship God and work on Sundays."</p><p>Cathy Belmont cautions critics that this is only a pilot program and will not necessarily be continued throughout the country. "We''ll look at the numbers after the trial, and who knows? Maybe we''ll draw some customers that would never darken the door of a church. To me, that would be a success."</p><hr><p>I got the idea for this article back when <a href="https://babylonbee.com/">Babylon Bee</a> took submissions. Unfortunately, they now only publish articles written by their paid contributors.</p>', 0)
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[post_author] ON 

INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1, 2, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (2, 3, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (4, 3, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (5, 4, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (6, 5, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (7, 5, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (8, 5, 4)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (9, 6, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (10, 7, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (11, 7, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (12, 8, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (13, 8, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (14, 9, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (15, 10, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (16, 11, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (17, 12, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (18, 13, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (19, 14, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (20, 15, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (21, 16, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (22, 17, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (23, 18, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (24, 19, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (25, 20, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (26, 21, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (27, 22, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (28, 23, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (29, 24, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (30, 24, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (31, 24, 4)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (32, 25, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (33, 26, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (34, 27, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (35, 27, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (36, 27, 4)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (37, 27, 5)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (38, 28, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (39, 29, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (40, 30, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (41, 31, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (42, 32, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (43, 33, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (44, 34, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (45, 35, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (46, 36, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (47, 37, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (48, 38, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (49, 39, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (50, 40, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (51, 41, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (52, 42, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (53, 43, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (54, 44, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (55, 45, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (56, 46, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (57, 47, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (58, 48, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1003, 1045, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1004, 1045, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1005, 1045, 4)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1006, 1045, 5)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1007, 1046, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1012, 1051, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1014, 1053, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (1015, 1054, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (3013, 3051, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (3014, 3052, 3)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (3015, 3053, 2)
INSERT [dbo].[post_author] ([id], [postid], [authorid]) VALUES (3016, 3054, 2)
SET IDENTITY_INSERT [dbo].[post_author] OFF

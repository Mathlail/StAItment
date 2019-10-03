//
//  SpeechModel.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 20/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit

struct SpeechModel {
    
    var name: String
    var title: String
    var link: String
    var image: UIImage
    var speechText: SpeechText
}

enum SpeechText {
    case winstonChurchill, mahatmaGandhi, johnFKennedy, ronaldReagan, franklinRoosevelt, jokowi, prabowo
}

func getSpeech(figure: SpeechText) -> String {
    switch figure {
    case .winstonChurchill:
        return """
        We Shall Fight on the Beaches by Winston Churchill
        June 4, 1940
        
        House of Commons
        
        From the moment that the French defenses at Sedan and on the Meuse were broken at the end of the second week of May, only a rapid retreat to Amiens and the south could have saved the British and French Armies who had entered Belgium at the appeal of the Belgian King; but this strategic fact was not immediately realized. The French High Command hoped they would be able to close the gap, and the Armies of the north were under their orders. Moreover, a retirement of this kind would have involved almost certainly the destruction of the fine Belgian Army of over 20 divisions and the abandonment of the whole of Belgium. Therefore, when the force and scope of the German penetration were realized and when a new French Generalissimo, General Weygand, assumed command in place of General Gamelin, an effort was made by the French and British Armies in Belgium to keep on holding the right hand of the Belgians and to give their own right hand to a newly created French Army which was to have advanced across the Somme in great strength to grasp it.
        
        However, the German eruption swept like a sharp scythe around the right and rear of the Armies of the north. Eight or nine armored divisions, each of about four hundred armored vehicles of different kinds, but carefully assorted to be complementary and divisible into small self-contained units, cut off all communications between us and the main French Armies. It severed our own communications for food and ammunition, which ran first to Amiens and afterwards through Abbeville, and it shore its way up the coast to Boulogne and Calais, and almost to Dunkirk. Behind this armored and mechanized onslaught came a number of German divisions in lorries, and behind them again there plodded comparatively slowly the dull brute mass of the ordinary German Army and German people, always so ready to be led to the trampling down in other lands of liberties and comforts which they have never known in their own.
        
        I have said this armored scythe-stroke almost reached Dunkirk-almost but not quite. Boulogne and Calais were the scenes of desperate fighting. The Guards defended Boulogne for a while and were then withdrawn by orders from this country. The Rifle Brigade, the 60th Rifles, and the Queen Victoria’s Rifles, with a battalion of British tanks and 1,000 Frenchmen, in all about four thousand strong, defended Calais to the last. The British Brigadier was given an hour to surrender. He spurned the offer, and four days of intense street fighting passed before silence reigned over Calais, which marked the end of a memorable resistance. Only 30 unwounded survivors were brought off by the Navy, and we do not know the fate of their comrades. Their sacrifice, however, was not in vain. At least two armored divisions, which otherwise would have been turned against the British Expeditionary Force, had to be sent to overcome them. They have added another page to the glories of the light divisions, and the time gained enabled the Graveline water lines to be flooded and to be held by the French troops.
        
        Thus it was that the port of Dunkirk was kept open. When it was found impossible for the Armies of the north to reopen their communications to Amiens with the main French Armies, only one choice remained. It seemed, indeed, forlorn. The Belgian, British and French Armies were almost surrounded. Their sole line of retreat was to a single port and to its neighboring beaches. They were pressed on every side by heavy attacks and far outnumbered in the air.
        
        When, a week ago today, I asked the House to fix this afternoon as the occasion for a statement, I feared it would be my hard lot to announce the greatest military disaster in our long history. I thought-and some good judges agreed with me-that perhaps 20,000 or 30,000 men might be re-embarked. But it certainly seemed that the whole of the French First Army and the whole of the British Expeditionary Force north of the Amiens-Abbeville gap would be broken up in the open field or else would have to capitulate for lack of food and ammunition. These were the hard and heavy tidings for which I called upon the House and the nation to prepare themselves a week ago. The whole root and core and brain of the British Army, on which and around which we were to build, and are to build, the great British Armies in the later years of the war, seemed about to perish upon the field or to be led into an ignominious and starving captivity.
        
        That was the prospect a week ago. But another blow which might well have proved final was yet to fall upon us. The King of the Belgians had called upon us to come to his aid. Had not this Ruler and his Government severed themselves from the Allies, who rescued their country from extinction in the late war, and had they not sought refuge in what was proved to be a fatal neutrality, the French and British Armies might well at the outset have saved not only Belgium but perhaps even Poland. Yet at the last moment, when Belgium was already invaded, King Leopold called upon us to come to his aid, and even at the last moment we came. He and his brave, efficient Army, nearly half a million strong, guarded our left flank and thus kept open our only line of retreat to the sea. Suddenly, without prior consultation, with the least possible notice, without the advice of his Ministers and upon his own personal act, he sent a plenipotentiary to the German Command, surrendered his Army, and exposed our whole flank and means of retreat.
        
        I asked the House a week ago to suspend its judgment because the facts were not clear, but I do not feel that any reason now exists why we should not form our own opinions upon this pitiful episode. The surrender of the Belgian Army compelled the British at the shortest notice to cover a flank to the sea more than 30 miles in length. Otherwise all would have been cut off, and all would have shared the fate to which King Leopold had condemned the finest Army his country had ever formed. So in doing this and in exposing this flank, as anyone who followed the operations on the map will see, contact was lost between the British and two out of the three corps forming the First French Army, who were still farther from the coast than we were, and it seemed impossible that any large number of Allied troops could reach the coast.
        
        The enemy attacked on all sides with great strength and fierceness, and their main power, the power of their far more numerous Air Force, was thrown into the battle or else concentrated upon Dunkirk and the beaches. Pressing in upon the narrow exit, both from the east and from the west, the enemy began to fire with cannon upon the beaches by which alone the shipping could approach or depart. They sowed magnetic mines in the channels and seas; they sent repeated waves of hostile aircraft, sometimes more than a hundred strong in one formation, to cast their bombs upon the single pier that remained, and upon the sand dunes upon which the troops had their eyes for shelter. Their U-boats, one of which was sunk, and their motor launches took their toll of the vast traffic which now began. For four or five days an intense struggle reigned. All their armored divisions-or what Was left of them-together with great masses of infantry and artillery, hurled themselves in vain upon the ever-narrowing, ever-contracting appendix within which the British and French Armies fought.
        
        Meanwhile, the Royal Navy, with the willing help of countless merchant seamen, strained every nerve to embark the British and Allied troops; 220 light warships and 650 other vessels were engaged. They had to operate upon the difficult coast, often in adverse weather, under an almost ceaseless hail of bombs and an increasing concentration of artillery fire. Nor were the seas, as I have said, themselves free from mines and torpedoes. It was in conditions such as these that our men carried on, with little or no rest, for days and nights on end, making trip after trip across the dangerous waters, bringing with them always men whom they had rescued. The numbers they have brought back are the measure of their devotion and their courage. The hospital ships, which brought off many thousands of British and French wounded, being so plainly marked were a special target for Nazi bombs; but the men and women on board them never faltered in their duty.
        
        Meanwhile, the Royal Air Force, which had already been intervening in the battle, so far as its range would allow, from home bases, now used part of its main metropolitan fighter strength, and struck at the German bombers and at the fighters which in large numbers protected them. This struggle was protracted and fierce. Suddenly the scene has cleared, the crash and thunder has for the moment-but only for the moment-died away. A miracle of deliverance, achieved by valor, by perseverance, by perfect discipline, by faultless service, by resource, by skill, by unconquerable fidelity, is manifest to us all. The enemy was hurled back by the retreating British and French troops. He was so roughly handled that he did not hurry their departure seriously. The Royal Air Force engaged the main strength of the German Air Force, and inflicted upon them losses of at least four to one; and the Navy, using nearly 1,000 ships of all kinds, carried over 335,000 men, French and British, out of the jaws of death and shame, to their native land and to the tasks which lie immediately ahead. We must be very careful not to assign to this deliverance the attributes of a victory. Wars are not won by evacuations. But there was a victory inside this deliverance, which should be noted. It was gained by the Air Force. Many of our soldiers coming back have not seen the Air Force at work; they saw only the bombers which escaped its protective attack. They underrate its achievements. I have heard much talk of this; that is why I go out of my way to say this. I will tell you about it.
        
        This was a great trial of strength between the British and German Air Forces. Can you conceive a greater objective for the Germans in the air than to make evacuation from these beaches impossible, and to sink all these ships which were displayed, almost to the extent of thousands? Could there have been an objective of greater military importance and significance for the whole purpose of the war than this? They tried hard, and they were beaten back; they were frustrated in their task. We got the Army away; and they have paid fourfold for any losses which they have inflicted. Very large formations of German aeroplanes-and we know that they are a very brave race-have turned on several occasions from the attack of one-quarter of their number of the Royal Air Force, and have dispersed in different directions. Twelve aeroplanes have been hunted by two. One aeroplane was driven into the water and cast away by the mere charge of a British aeroplane, which had no more ammunition. All of our types-the Hurricane, the Spitfire and the new Defiant-and all our pilots have been vindicated as superior to what they have at present to face.
        
        When we consider how much greater would be our advantage in defending the air above this Island against an overseas attack, I must say that I find in these facts a sure basis upon which practical and reassuring thoughts may rest. I will pay my tribute to these young airmen. The great French Army was very largely, for the time being, cast back and disturbed by the onrush of a few thousands of armored vehicles. May it not also be that the cause of civilization itself will be defended by the skill and devotion of a few thousand airmen? There never has been, I suppose, in all the world, in all the history of war, such an opportunity for youth. The Knights of the Round Table, the Crusaders, all fall back into the past-not only distant but prosaic; these young men, going forth every morn to guard their native land and all that we stand for, holding in their hands these instruments of colossal and shattering power, of whom it may be said that
        
        Every morn brought forth a noble chance
        And every chance brought forth a noble knight,
        
        deserve our gratitude, as do all the brave men who, in so many ways and on so many occasions, are ready, and continue ready to give life and all for their native land.
        
        I return to the Army. In the long series of very fierce battles, now on this front, now on that, fighting on three fronts at once, battles fought by two or three divisions against an equal or somewhat larger number of the enemy, and fought fiercely on some of the old grounds that so many of us knew so well-in these battles our losses in men have exceeded 30,000 killed, wounded and missing. I take occasion to express the sympathy of the House to all who have suffered bereavement or who are still anxious. The President of the Board of Trade [Sir Andrew Duncan] is not here today. His son has been killed, and many in the House have felt the pangs of affliction in the sharpest form. But I will say this about the missing: We have had a large number of wounded come home safely to this country, but I would say about the missing that there may be very many reported missing who will come back home, some day, in one way or another. In the confusion of this fight it is inevitable that many have been left in positions where honor required no further resistance from them.
        
        Against this loss of over 30,000 men, we can set a far heavier loss certainly inflicted upon the enemy. But our losses in material are enormous. We have perhaps lost one-third of the men we lost in the opening days of the battle of 21st March, 1918, but we have lost nearly as many guns — nearly one thousand-and all our transport, all the armored vehicles that were with the Army in the north. This loss will impose a further delay on the expansion of our military strength. That expansion had not been proceeding as far as we had hoped. The best of all we had to give had gone to the British Expeditionary Force, and although they had not the numbers of tanks and some articles of equipment which were desirable, they were a very well and finely equipped Army. They had the first-fruits of all that our industry had to give, and that is gone. And now here is this further delay. How long it will be, how long it will last, depends upon the exertions which we make in this Island. An effort the like of which has never been seen in our records is now being made. Work is proceeding everywhere, night and day, Sundays and week days. Capital and Labor have cast aside their interests, rights, and customs and put them into the common stock. Already the flow of munitions has leaped forward. There is no reason why we should not in a few months overtake the sudden and serious loss that has come upon us, without retarding the development of our general program.
        
        Nevertheless, our thankfulness at the escape of our Army and so many men, whose loved ones have passed through an agonizing week, must not blind us to the fact that what has happened in France and Belgium is a colossal military disaster. The French Army has been weakened, the Belgian Army has been lost, a large part of those fortified lines upon which so much faith had been reposed is gone, many valuable mining districts and factories have passed into the enemy’s possession, the whole of the Channel ports are in his hands, with all the tragic consequences that follow from that, and we must expect another blow to be struck almost immediately at us or at France. We are told that Herr Hitler has a plan for invading the British Isles. This has often been thought of before. When Napoleon lay at Boulogne for a year with his flat-bottomed boats and his Grand Army, he was told by someone. “There are bitter weeds in England.” There are certainly a great many more of them since the British Expeditionary Force returned.
        
        The whole question of home defense against invasion is, of course, powerfully affected by the fact that we have for the time being in this Island incomparably more powerful military forces than we have ever had at any moment in this war or the last. But this will not continue. We shall not be content with a defensive war. We have our duty to our Ally. We have to reconstitute and build up the British Expeditionary Force once again, under its gallant Commander-in-Chief, Lord Gort. All this is in train; but in the interval we must put our defenses in this Island into such a high state of organization that the fewest possible numbers will be required to give effective security and that the largest possible potential of offensive effort may be realized. On this we are now engaged. It will be very convenient, if it be the desire of the House, to enter upon this subject in a secret Session. Not that the government would necessarily be able to reveal in very great detail military secrets, but we like to have our discussions free, without the restraint imposed by the fact that they will be read the next day by the enemy; and the Government would benefit by views freely expressed in all parts of the House by Members with their knowledge of so many different parts of the country. I understand that some request is to be made upon this subject, which will be readily acceded to by His Majesty’s Government.
        
        We have found it necessary to take measures of increasing stringency, not only against enemy aliens and suspicious characters of other nationalities, but also against British subjects who may become a danger or a nuisance should the war be transported to the United Kingdom. I know there are a great many people affected by the orders which we have made who are the passionate enemies of Nazi Germany. I am very sorry for them, but we cannot, at the present time and under the present stress, draw all the distinctions which we should like to do. If parachute landings were attempted and fierce fighting attendant upon them followed, these unfortunate people would be far better out of the way, for their own sakes as well as for ours. There is, however, another class, for which I feel not the slightest sympathy. Parliament has given us the powers to put down Fifth Column activities with a strong hand, and we shall use those powers subject to the supervision and correction of the House, without the slightest hesitation until we are satisfied, and more than satisfied, that this malignancy in our midst has been effectively stamped out.
        
        Turning once again, and this time more generally, to the question of invasion, I would observe that there has never been a period in all these long centuries of which we boast when an absolute guarantee against invasion, still less against serious raids, could have been given to our people. In the days of Napoleon the same wind which would have carried his transports across the Channel might have driven away the blockading fleet. There was always the chance, and it is that chance which has excited and befooled the imaginations of many Continental tyrants. Many are the tales that are told. We are assured that novel methods will be adopted, and when we see the originality of malice, the ingenuity of aggression, which our enemy displays, we may certainly prepare ourselves for every kind of novel stratagem and every kind of brutal and treacherous maneuver. I think that no idea is so outlandish that it should not be considered and viewed with a searching, but at the same time, I hope, with a steady eye. We must never forget the solid assurances of sea power and those which belong to air power if it can be locally exercised.
        
        I have, myself, full confidence that if all do their duty, if nothing is neglected, and if the best arrangements are made, as they are being made, we shall prove ourselves once again able to defend our Island home, to ride out the storm of war, and to outlive the menace of tyranny, if necessary for years, if necessary alone. At any rate, that is what we are going to try to do. That is the resolve of His Majesty’s Government-every man of them. That is the will of Parliament and the nation. The British Empire and the French Republic, linked together in their cause and in their need, will defend to the death their native soil, aiding each other like good comrades to the utmost of their strength. Even though large tracts of Europe and many old and famous States have fallen or may fall into the grip of the Gestapo and all the odious apparatus of Nazi rule, we shall not flag or fail. We shall go on to the end, we shall fight in France, we shall fight on the seas and oceans, we shall fight with growing confidence and growing strength in the air, we shall defend our Island, whatever the cost may be, we shall fight on the beaches, we shall fight on the landing grounds, we shall fight in the fields and in the streets, we shall fight in the hills; we shall never surrender, and even if, which I do not for a moment believe, this Island or a large part of it were subjugated and starving, then our Empire beyond the seas, armed and guarded by the British Fleet, would carry on the struggle, until, in God’s good time, the New World, with all its power and might, steps forth to the rescue and the liberation of the old.
        """
    case .johnFKennedy:
        return """
        Inaugrual Address of John F. Kennedy
        January 20, 1961

        Vice President Johnson, Mr. Speaker, Mr. Chief Justice, President Eisenhower, Vice President Nixon, President Truman, reverend clergy, fellow citizens:

        We observe today not a victory of party, but a celebration of freedom — symbolizing an end, as well as a beginning — signifying renewal, as well as change. For I have sworn before you and Almighty God the same solemn oath our forebears prescribed nearly a century and three-quarters ago.

        The world is very different now. For man holds in his mortal hands the power to abolish all forms of human poverty and all forms of human life. And yet the same revolutionary beliefs for which our forebears fought are still at issue around the globe — the belief that the rights of man come not from the generosity of the state, but from the hand of God.

        We dare not forget today that we are the heirs of that first revolution. Let the word go forth from this time and place, to friend and foe alike, that the torch has been passed to a new generation of Americans — born in this century, tempered by war, disciplined by a hard and bitter peace, proud of our ancient heritage, and unwilling to witness or permit the slow undoing of those human rights to which this nation has always been committed, and to which we are committed today at home and around the world.

        Let every nation know, whether it wishes us well or ill, that we shall pay any price, bear any burden, meet any hardship, support any friend, oppose any foe, to assure the survival and the success of liberty.

        This much we pledge — and more.

        To those old allies whose cultural and spiritual origins we share, we pledge the loyalty of faithful friends. United there is little we cannot do in a host of cooperative ventures. Divided there is little we can do — for we dare not meet a powerful challenge at odds and split asunder.

        To those new states whom we welcome to the ranks of the free, we pledge our word that one form of colonial control shall not have passed away merely to be replaced by a far more iron tyranny. We shall not always expect to find them supporting our view. But we shall always hope to find them strongly supporting their own freedom — and to remember that, in the past, those who foolishly sought power by riding the back of the tiger ended up inside.

        To those people in the huts and villages of half the globe struggling to break the bonds of mass misery, we pledge our best efforts to help them help themselves, for whatever period is required — not because the Communists may be doing it, not because we seek their votes, but because it is right. If a free society cannot help the many who are poor, it cannot save the few who are rich.

        To our sister republics south of our border, we offer a special pledge: to convert our good words into good deeds, in a new alliance for progress, to assist free men and free governments in casting off the chains of poverty. But this peaceful revolution of hope cannot become the prey of hostile powers. Let all our neighbors know that we shall join with them to oppose aggression or subversion anywhere in the Americas. And let every other power know that this hemisphere intends to remain the master of its own house.

        To that world assembly of sovereign states, the United Nations, our last best hope in an age where the instruments of war have far outpaced the instruments of peace, we renew our pledge of support — to prevent it from becoming merely a forum for invective, to strengthen its shield of the new and the weak, and to enlarge the area in which its writ may run.

        Finally, to those nations who would make themselves our adversary, we offer not a pledge but a request: that both sides begin anew the quest for peace, before the dark powers of destruction unleashed by science engulf all humanity in planned or accidental self-destruction.

        We dare not tempt them with weakness. For only when our arms are sufficient beyond doubt can we be certain beyond doubt that they will never be employed.

        But neither can two great and powerful groups of nations take comfort from our present course — both sides overburdened by the cost of modern weapons, both rightly alarmed by the steady spread of the deadly atom, yet both racing to alter that uncertain balance of terror that stays the hand of mankind’s final war.



        So let us begin anew — remembering on both sides that civility is not a sign of weakness, and sincerity is always subject to proof. Let us never negotiate out of fear, but let us never fear to negotiate.

        Let both sides explore what problems unite us instead of belaboring those problems which divide us.

        Let both sides, for the first time, formulate serious and precise proposals for the inspection and control of arms, and bring the absolute power to destroy other nations under the absolute control of all nations.

        Let both sides seek to invoke the wonders of science instead of its terrors. Together let us explore the stars, conquer the deserts, eradicate disease, tap the ocean depths, and encourage the arts and commerce.

        Let both sides unite to heed, in all corners of the earth, the command of Isaiah — to “undo the heavy burdens, and [to] let the oppressed go free.”¹

        And, if a beachhead of cooperation may push back the jungle of suspicion, let both sides join in creating a new endeavor — not a new balance of power, but a new world of law — where the strong are just, and the weak secure, and the peace preserved.

        All this will not be finished in the first one hundred days. Nor will it be finished in the first one thousand days; nor in the life of this Administration; nor even perhaps in our lifetime on this planet. But let us begin.

        In your hands, my fellow citizens, more than mine, will rest the final success or failure of our course. Since this country was founded, each generation of Americans has been summoned to give testimony to its national loyalty. The graves of young Americans who answered the call to service surround the globe.

        Now the trumpet summons us again — not as a call to bear arms, though arms we need — not as a call to battle, though embattled we are — but a call to bear the burden of a long twilight struggle, year in and year out, “rejoicing in hope; patient in tribulation,”² a struggle against the common enemies of man: tyranny, poverty, disease, and war itself.

        Can we forge against these enemies a grand and global alliance, North and South, East and West, that can assure a more fruitful life for all mankind? Will you join in that historic effort?

        In the long history of the world, only a few generations have been granted the role of defending freedom in its hour of maximum danger. I do not shrink from this responsibility — I welcome it. I do not believe that any of us would exchange places with any other people or any other generation. The energy, the faith, the devotion which we bring to this endeavor will light our country and all who serve it. And the glow from that fire can truly light the world.

        And so, my fellow Americans, ask not what your country can do for you; ask what you can do for your country.

        My fellow citizens of the world, ask not what America will do for you, but what together we can do for the freedom of man.

        Finally, whether you are citizens of America or citizens of the world, ask of us here the same high standards of strength and sacrifice which we ask of you. With a good conscience our only sure reward, with history the final judge of our deeds, let us go forth to lead the land we love, asking His blessing and His help, but knowing that here on earth God’s work must truly be our own.

        """
    case .ronaldReagan:
        return """
        “Address to Nation on the Challenger” by Ronald Regan
        Ladies and Gentlemen, I’d planned to speak to you tonight to report on the state of the Union, but the events of earlier today have led me to change those plans. Today is a day for mourning and remembering. Nancy and I are pained to the core by the tragedy of the shuttle Challenger. We know we share this pain with all of the people of our country. This is truly a national loss.

        Nineteen years ago, almost to the day, we lost three astronauts in a terrible accident on the ground. But, we’ve never lost an astronaut in flight; we’ve never had a tragedy like this. And perhaps we’ve forgotten the courage it took for the crew of the shuttle; but they, the Challenger Seven, were aware of the dangers, but overcame them and did their jobs brilliantly. We mourn seven heroes: Michael Smith, Dick Scobee, Judith Resnik, Ronald McNair, Ellison Onizuka, Gregory Jarvis, and Christa McAuliffe. We mourn their loss as a nation together.

        For the families of the seven, we cannot bear, as you do, the full impact of this tragedy. But we feel the loss, and we’re thinking about you so very much. Your loved ones were daring and brave, and they had that special grace, that special spirit that says, ‘Give me a challenge and I’ll meet it with joy.’ They had a hunger to explore the universe and discover its truths. They wished to serve, and they did. They served all of us.

        We’ve grown used to wonders in this century. It’s hard to dazzle us. But for twenty-five years the United States space program has been doing just that. We’ve grown used to the idea of space, and perhaps we forget that we’ve only just begun. We’re still pioneers. They, the members of the Challenger crew, were pioneers.

        And I want to say something to the schoolchildren of America who were watching the live coverage of the shuttle’s takeoff. I know it is hard to understand, but sometimes painful things like this happen. It’s all part of the process of exploration and discovery. It’s all part of taking a chance and expanding man’s horizons. The future doesn’t belong to the fainthearted; it belongs to the brave. The Challenger crew was pulling us into the future, and we’ll continue to follow them.

        I’ve always had great faith in and respect for our space program, and what happened today does nothing to diminish it. We don’t hide our space program. We don’t keep secrets and cover things up. We do it all up front and in public. That’s the way freedom is, and we wouldn’t change it for a minute. We’ll continue our quest in space. There will be more shuttle flights and more shuttle crews and, yes, more volunteers, more civilians, more teachers in space. Nothing ends here; our hopes and our journeys continue. I want to add that I wish I could talk to every man and woman who works for NASA or who worked on this mission and tell them: “Your dedication and professionalism have moved and impressed us for decades. And we know of your anguish. We share it.”

        There’s a coincidence today. On this day 390 years ago, the great explorer Sir Francis Drake died aboard ship off the coast of Panama. In his lifetime the great frontiers were the oceans, and a historian later said, ‘He lived by the sea, died on it, and was buried in it.’ Well, today we can say of the Challenger crew: Their dedication was, like Drake’s, complete.

        The crew of the space shuttle Challenger honoured us by the manner in which they lived their lives. We will never forget them, nor the last time we saw them, this morning, as they prepared for the journey and waved goodbye and ‘slipped the surly bonds of earth’ to ‘touch the face of God.’

        Thank you.
        """
    case .franklinRoosevelt:
        return """
        First Inaugural Address of Franklin D. Roosevelt
        March 4, 1933
        
        President Hoover, Mr. Chief Justice, my friends:
        
        This is a day of national consecration. And I am certain that on this day my fellow Americans expect that on my induction into the Presidency, I will address them with a candor and a decision which the present situation of our people impels.
        
        This is preeminently the time to speak the truth, the whole truth, frankly and boldly. Nor need we shrink from honestly facing conditions in our country today. This great Nation will endure, as it has endured, will revive and will prosper.
        
        So, first of all, let me assert my firm belief that the only thing we have to fear is fear itself — nameless, unreasoning, unjustified terror which paralyzes needed efforts to convert retreat into advance. In every dark hour of our national life, a leadership of frankness and of vigor has met with that understanding and support of the people themselves which is essential to victory. And I am convinced that you will again give that support to leadership in these critical days.
        
        In such a spirit on my part and on yours we face our common difficulties. They concern, thank God, only material things. Values have shrunk to fantastic levels; taxes have risen; our ability to pay has fallen; government of all kinds is faced by serious curtailment of income; the means of exchange are frozen in the currents of trade; the withered leaves of industrial enterprise lie on every side; farmers find no markets for their produce; and the savings of many years in thousands of families are gone. More important, a host of unemployed citizens face the grim problem of existence, and an equally great number toil with little return. Only a foolish optimist can deny the dark realities of the moment.
        
        And yet our distress comes from no failure of substance. We are stricken by no plague of locusts. Compared with the perils which our forefathers conquered, because they believed and were not afraid, we have still much to be thankful for. Nature still offers her bounty and human efforts have multiplied it. Plenty is at our doorstep, but a generous use of it languishes in the very sight of the supply.
        
        Primarily, this is because the rulers of the exchange of mankind’s goods have failed, through their own stubbornness and their own incompetence, have admitted their failure, and have abdicated. Practices of the unscrupulous money changers stand indicted in the court of public opinion, rejected by the hearts and minds of men.
        
        True, they have tried. But their efforts have been cast in the pattern of an outworn tradition. Faced by failure of credit, they have proposed only the lending of more money. Stripped of the lure of profit by which to induce our people to follow their false leadership, they have resorted to exhortations, pleading tearfully for restored confidence. They only know the rules of a generation of self-seekers. They have no vision, and when there is no vision the people perish.
        
        Yes, the money changers have fled from their high seats in the temple of our civilization. We may now restore that temple to the ancient truths. The measure of that restoration lies in the extent to which we apply social values more noble than mere monetary profit.
        
        Happiness lies not in the mere possession of money; it lies in the joy of achievement, in the thrill of creative effort. The joy, the moral stimulation of work no longer must be forgotten in the mad chase of evanescent profits. These dark days, my friends, will be worth all they cost us if they teach us that our true destiny is not to be ministered unto but to minister to ourselves, to our fellow men.
        
        Recognition of that falsity of material wealth as the standard of success goes hand in hand with the abandonment of the false belief that public office and high political position are to be valued only by the standards of pride of place and personal profit; and there must be an end to a conduct in banking and in business which too often has given to a sacred trust the likeness of callous and selfish wrongdoing. Small wonder that confidence languishes, for it thrives only on honesty, on honor, on the sacredness of obligations, on faithful protection, and on unselfish performance; without them it cannot live.
        
        Restoration calls, however, not for changes in ethics alone. This Nation is asking for action, and action now.
        
        Our greatest primary task is to put people to work. This is no unsolvable problem if we face it wisely and courageously. It can be accomplished in part by direct recruiting by the Government itself, treating the task as we would treat the emergency of a war, but at the same time, through this employment, accomplishing great — greatly needed projects to stimulate and reorganize the use of our great natural resources.
        
        Hand in hand with that we must frankly recognize the overbalance of population in our industrial centers and, by engaging on a national scale in a redistribution, endeavor to provide a better use of the land for those best fitted for the land.
        
        Yes, the task can be helped by definite efforts to raise the values of agricultural products, and with this the power to purchase the output of our cities. It can be helped by preventing realistically the tragedy of the growing loss through foreclosure of our small homes and our farms. It can be helped by insistence that the Federal, the State, and the local governments act forthwith on the demand that their cost be drastically reduced. It can be helped by the unifying of relief activities which today are often scattered, uneconomical, unequal. It can be helped by national planning for and supervision of all forms of transportation and of communications and other utilities that have a definitely public character. There are many ways in which it can be helped, but it can never be helped by merely talking about it.
        
        We must act. We must act quickly.
        
        And finally, in our progress towards a resumption of work, we require two safeguards against a return of the evils of the old order. There must be a strict supervision of all banking and credits and investments. There must be an end to speculation with other people’s money. And there must be provision for an adequate but sound currency.
        
        These, my friends, are the lines of attack. I shall presently urge upon a new Congress in special session detailed measures for their fulfillment, and I shall seek the immediate assistance of the 48 States.
        
        Through this program of action we address ourselves to putting our own national house in order and making income balance outgo. Our international trade relations, though vastly important, are in point of time, and necessity, secondary to the establishment of a sound national economy. I favor, as a practical policy, the putting of first things first. I shall spare no effort to restore world trade by international economic readjustment; but the emergency at home cannot wait on that accomplishment.
        
        The basic thought that guides these specific means of national recovery is not nationally — narrowly nationalistic. It is the insistence, as a first consideration, upon the interdependence of the various elements in and parts of the United States of America — a recognition of the old and permanently important manifestation of the American spirit of the pioneer. It is the way to recovery. It is the immediate way. It is the strongest assurance that recovery will endure.
        
        In the field of world policy, I would dedicate this Nation to the policy of the good neighbor: the neighbor who resolutely respects himself and, because he does so, respects the rights of others; the neighbor who respects his obligations and respects the sanctity of his agreements in and with a world of neighbors.
        
        If I read the temper of our people correctly, we now realize, as we have never realized before, our interdependence on each other; that we can not merely take, but we must give as well; that if we are to go forward, we must move as a trained and loyal army willing to sacrifice for the good of a common discipline, because without such discipline no progress can be made, no leadership becomes effective.
        
        We are, I know, ready and willing to submit our lives and our property to such discipline, because it makes possible a leadership which aims at the larger good. This, I propose to offer, pledging that the larger purposes will bind upon us, bind upon us all as a sacred obligation with a unity of duty hitherto evoked only in times of armed strife.
        
        With this pledge taken, I assume unhesitatingly the leadership of this great army of our people dedicated to a disciplined attack upon our common problems.
        
        Action in this image, action to this end is feasible under the form of government which we have inherited from our ancestors. Our Constitution is so simple, so practical that it is possible always to meet extraordinary needs by changes in emphasis and arrangement without loss of essential form. That is why our constitutional system has proved itself the most superbly enduring political mechanism the modern world has ever seen.
        
        It has met every stress of vast expansion of territory, of foreign wars, of bitter internal strife, of world relations. And it is to be hoped that the normal balance of executive and legislative authority may be wholly equal, wholly adequate to meet the unprecedented task before us. But it may be that an unprecedented demand and need for undelayed action may call for temporary departure from that normal balance of public procedure.
        
        I am prepared under my constitutional duty to recommend the measures that a stricken nation in the midst of a stricken world may require. These measures, or such other measures as the Congress may build out of its experience and wisdom, I shall seek, within my constitutional authority, to bring to speedy adoption.
        
        But, in the event that the Congress shall fail to take one of these two courses, in the event that the national emergency is still critical, I shall not evade the clear course of duty that will then confront me. I shall ask the Congress for the one remaining instrument to meet the crisis — broad Executive power to wage a war against the emergency, as great as the power that would be given to me if we were in fact invaded by a foreign foe.
        
        For the trust reposed in me, I will return the courage and the devotion that befit the time. I can do no less.
        
        We face the arduous days that lie before us in the warm courage of national unity; with the clear consciousness of seeking old and precious moral values; with the clean satisfaction that comes from the stern performance of duty by old and young alike. We aim at the assurance of a rounded, a permanent national life.
        
        We do not distrust the — the future of essential democracy. The people of the United States have not failed. In their need they have registered a mandate that they want direct, vigorous action. They have asked for discipline and direction under leadership. They have made me the present instrument of their wishes. In the spirit of the gift I take it.
        
        In this dedication — In this dedication of a Nation, we humbly ask the blessing of God.
        
        May He protect each and every one of us.
        
        May He guide me in the days to come.
        """
    case .mahatmaGandhi:
        return """
        “Quit India” Speech by Ghandi
        August 8, 1942
        
        Before you discuss the resolution, let me place before you one or two things, I want you to understand two things very clearly and to consider them from the same point of view from which I am placing them before you. I ask you to consider it from my point of view, because if you approve of it, you will be enjoined to carry out all I say. It will be a great responsibility. There are people who ask me whether I am the same man that I was in 1920, or whether there has been any change in me. You are right in asking that question.
        Let me, however, hasten to assure that I am the same Gandhi as I was in 1920. I have not changed in any fundamental respect. I attach the same importance to non-violence that I did then. If at all, my emphasis on it has grown stronger. There is no real contradiction between the present resolution and my previous writings and utterances.
        Occasions like the present do not occur in everybody’s and but rarely in anybody’s life. I want you to know and feel that there is nothing but purest Ahimsa1 in all that I am saying and doing today. The draft resolution of the Working Committee is based on Ahimsa, the contemplated struggle similarly has its roots in Ahimsa. If, therefore, there is any among you who has lost faith in Ahimsa or is wearied of it, let him not vote for this resolution.
        Let me explain my position clearly. God has vouchsafed to me a priceless gift in the weapon of Ahimsa. I and my Ahimsa are on our trail today. If in the present crisis, when the earth is being scorched by the flames of Himsa2 and crying for deliverance, I failed to make use of the God given talent, God will not forgive me and I shall be judged un-wrongly of the great gift. I must act now. I may not hesitate and merely look on, when Russia and China are threatened.
        Ours is not a drive for power, but purely a non-violent fight for India’s independence. In a violent struggle, a successful general has been often known to effect a military coup and to set up a dictatorship. But under the Congress scheme of things, essentially non-violent as it is, there can be no room for dictatorship. A non-violent soldier of freedom will covet nothing for himself, he fights only for the freedom of his country. The Congress is unconcerned as to who will rule, when freedom is attained. The power, when it comes, will belong to the people of India, and it will be for them to decide to whom it placed in the entrusted. May be that the reins will be placed in the hands of the Parsis, for instance-as I would love to see happen-or they may be handed to some others whose names are not heard in the Congress today. It will not be for you then to object saying, “This community is microscopic. That party did not play its due part in the freedom’s struggle; why should it have all the power?” Ever since its inception the Congress has kept itself meticulously free of the communal taint. It has thought always in terms of the whole nation and has acted accordingly. . .
        I know how imperfect our Ahimsa is and how far away we are still from the ideal, but in Ahimsa there is no final failure or defeat. I have faith, therefore, that if, in spite of our shortcomings, the big thing does happen, it will be because God wanted to help us by crowning with success our silent, unremitting Sadhana1 for the last twenty-two years.
        I believe that in the history of the world, there has not been a more genuinely democratic struggle for freedom than ours. I read Carlyle’s French Resolution while I was in prison, and Pandit Jawaharlal has told me something about the Russian revolution. But it is my conviction that inasmuch as these struggles were fought with the weapon of violence they failed to realize the democratic ideal. In the democracy which I have envisaged, a democracy established by non-violence, there will be equal freedom for all. Everybody will be his own master. It is to join a struggle for such democracy that I invite you today. Once you realize this you will forget the differences between the Hindus and Muslims, and think of yourselves as Indians only, engaged in the common struggle for independence.
        Then, there is the question of your attitude towards the British. I have noticed that there is hatred towards the British among the people. The people say they are disgusted with their behaviour. The people make no distinction between British imperialism and the British people. To them, the two are one This hatred would even make them welcome the Japanese. It is most dangerous. It means that they will exchange one slavery for another. We must get rid of this feeling. Our quarrel is not with the British people, we fight their imperialism. The proposal for the withdrawal of British power did not come out of anger. It came to enable India to play its due part at the present critical juncture It is not a happy position for a big country like India to be merely helping with money and material obtained willy-nilly from her while the United Nations are conducting the war. We cannot evoke the true spirit of sacrifice and velour, so long as we are not free. I know the British Government will not be able to withhold freedom from us, when we have made enough self-sacrifice. We must, therefore, purge ourselves of hatred. Speaking for myself, I can say that I have never felt any hatred. As a matter of fact, I feel myself to be a greater friend of the British now than ever before. One reason is that they are today in distress. My very friendship, therefore, demands that I should try to save them from their mistakes. As I view the situation, they are on the brink of an abyss. It, therefore, becomes my duty to warn them of their danger even though it may, for the time being, anger them to the point of cutting off the friendly hand that is stretched out to help them. People may laugh, nevertheless that is my claim. At a time when I may have to launch the biggest struggle of my life, I may not harbour hatred against anybody.
        """
    case .jokowi:
        return """
        Bapak, Ibu, brother and sister compatriots. All the people of Indonesia whom I love. Ladies and gentlemen of the audience.
        
        We all have to be aware that now we live in a very dynamic global environment. We know the characteristics of this global phenomenon: full of change, full of velocity, full of risk, full of complexity and full of surprises that are far from what we expected.
        
        Because of that, we have to find a new model, a new method and new values when looking for solutions to every problem with innovation and we all have to be willing [to change] and we will force [people] to be willing [to change]. We have to abandon old methods, old patterns, both in managing institutions and in managing government. That which is no longer effective, we will make effective. That which is no longer efficient, we will make efficient!
        
        This is the type of management that we need right now. We have work toward a country that is more productive, that is competitive, that is highly flexible in facing changes. Therefore, we have prepared big stages.
        
        First, we will continue the development of infrastructure. We have already built large infrastructure. Going forward, we will continue building faster and we will connect those large [pieces of] infrastructure, such as toll roads, trains, seaports and airports, with the people's production areas. We will connect them with small industrial areas, with special economic zones, with tourist areas. We will also connect the large infrastructure with farming areas, plantation areas and fishery ponds.
        
        Secondly, the development of human resources. We will prioritize the development of human resources, which is the key to Indonesia's future. The starting point of developing human resources is by guaranteeing the health of pregnant women, babies, toddlers and school children. These are the golden years to create excellent Indonesians for the future. This has to be closely monitored. There cannot be an increase in stunting, maternal mortality, or child mortality. That is where our great task lies!
        
        We will also continue to improve the quality of education. Vocational training and vocational schools are very important. We will also create the Indonesian Talent Management Institution. The government will identify, facilitate and support education and self-improvement for Indonesia's talents.
        
        We have to support talented members of the diaspora so that they can contribute to Indonesia's development. We will create a special institution to manage these great talents who can make this country globally competitive.
        
        Third, we must also invite as much investment as possible in order to create jobs. No one should be allergic to investment. This is how we create as many jobs as possible. Therefore, anything that obstructs investment must be trimmed, such as slow or complicated permit processes, especially illegal levies. Be careful, going forward I guarantee that I will chase, I will control, I will check and I will beat [them] up if necessary! There should no longer be any obstructions to investment because this is the key to creating more jobs.
        
        Fourth, it is very important that we reform our bureaucracy: Structural reform, so that institutions are simpler, more agile. Be careful! If the mindset of the bureaucracy does not change, I guarantee that I will trim it.
        
        The speed of service, the speed of providing permits, is the key to bureaucratic reform. I will check it myself, I will control it myself. The moment I see something that is inefficient or ineffective, I guarantee I will trim it, I will remove the official in charge. Therefore, I need brave ministers. If there is an institution that is not useful and problematic, I will dissolve it.
        
        No more old mindsets! No more linear work, no more routine work, no more monotone work, no more working in the comfort zone. We have to change. We have to develop new values in work because we have to quickly adapt to the times. That is why we have continued to develop an adaptive, productive, innovative and competitive Indonesia.
        
        Fifth, we have to guarantee that the use of the state budget is focused and targeted. We have to ensure that every rupiah that comes out of the state budget has economic utility, provides benefits to the people and improves the public's prosperity.
        
        Ladies and gentlemen, I also have to remind you that these big dreams can only be achieved if we are united, optimistic and confident. We have to remember that our country is a big country, with 17,000 islands, with a strategic geopolitical location. We are a country that is united in diversity and has an amazing wealth of culture. Our demographics are also very strong, with a total population of 267 million, most of whom are in productive age.
        
        We have to be optimistic toward the future! We have to be confident and brave in facing the challenge of global competition. We have to believe that we can be one of the strongest countries in the world.
        
        National unity is the main thing binding us in achieving advancement. We have to continually strengthen our unity and brotherhood. Only by uniting can we become a strong and internationally respected country. The ideology of Pancasila is the only national ideology and every citizen has to be a part of it.
        
        In a democracy, being a die-hard supporter of a candidate is permitted. Supporting [a candidate] militantly is also permitted. Acting as opposition is also very noble. Go ahead. As long as that opposition does not create resentment and hatred, much less become coupled with insults and curses.
        
        We have religious norms, ethics, etiquette and a noble culture.
        
        Pancasila is our collective home as compatriots. There is zero tolerance for those who disturb and take issue with Pancasila. There should no longer be any Indonesians who are not united in diversity, who are intolerant toward differences. There should no longer be any Indonesians who do not respect other religions, other tribes and other ethnicities.
        
        Once again, our ideology is Pancasila. We want to be united in diversity together. Getting along is beautiful. Brotherhood is beautiful. Unity is beautiful.
        
        I am certain that we are all committed to a civilized democracy that upholds the identity and dignity of Indonesia, that will make Indonesia become an advanced, just and prosperous Indonesia.
        
        An advanced Indonesia is an Indonesia where not a single citizen is left behind from achieving their dreams. A democratic Indonesia, whose fruits are enjoyed by all the people. An Indonesia where every citizen has the same rights before the law. An Indonesia that masters knowledge and world-class technology. An Indonesia that can protect and maintain the country in an increasingly competitive world.
        
        This is not about me, or you. And not about us, or them. Not about West or East, or South or North. Now is not the time to think about all that. It is the time to think about our nation as a whole. Don't ever hesitate to move forward because we are capable if we are united!
        
        Thank you.
        

        """
    case .prabowo:
        return """
        Thank you. Tonight, all of you have taken the time to listen and witness us, Prabowo Subianto and Sandiaga Uno, convey our vision and mission.
        
        I would like to open my speech tonight by reading a poem. This poem helps to illustrate why we are gathered, or feel connected tonight.
        
        This poem was written by a young officer who died in the Battle of Banten in the year 1946.
        
        We are not alone.
        
        Thousands are relying on us.
        
        People we've never known
        
        People we might never know.
        
        But what we decide to do now will determine what happens to them.
        
        My fellow countrymen, tonight, we are gathered here, and millions are connected to us through technology, because in 92 days, we will decide the fate and future of this country. This presidential election is not about voting for Prabowo or Sandiaga Uno. This presidential election is for Indonesia.
        
        Therefore, the victory we will hopefully achieve on April 17, 2019 will not be Prabowo's victory, nor Sandiaga Uno's. It will be a victory for the Indonesian people.
        
        With this belief, we want all Indonesians to truly understand what we will strive for in the next five years, if we and the party members of the Just and Prosperous Indonesia Coalition earn the people's mandate in the upcoming election on April 17, 2019.
        
        We would like to convey our concerns, what encourage us to stay on the political scene, and offer ourselves to lead the Unitary State of the Republic of Indonesia.
        
        Ladies and gentlemen, a while back, I got a report that a farmer named Mr. Hardi in Tawangharjo village, Grobokan, had hung himself from a teak tree in his backyard.
        
        The late Mr. Hardi left behind his wife and child due to his inability to repay his debt; he felt that the economic burden he was carrying had become too heavy.
        
        Over the past few years, I received dozens of reports of tragic stories like this.
        
        There was a teacher in Pekalongan who committed suicide. Most recently, on Jan. 4, there was Ms. Sudarsi in Watusigar village in Gunungkidul, who also committed suicide.
        
        These stories are only those mentioned in the news. There are probably more like this out there we don't hear about.
        
        During my visit to Klaten, the rice farmers were devastated because two months after their harvest, imported rice flooded into the country.
        
        In East Java, sugar cane farmers are complaining because when they harvest, a flood of sugar arrives from abroad.
        
        At the same time, many mothers and housewives are also complaining because the price of sugar in Indonesia is two to three times higher than the world average. Whereas in the past, Indonesia had once been a sugar exporter.
        
        My fellow countrymen, is this the country our nation's founders aspired and fought for?
        
        Bung Karno and Bung Hatta, Bung Syahrir, Gen. Sudirman, K.H. Hasyim Ashari and K.H. Wahid Hasyim? By K.H. Agus Salim? By Bung Tomo?
        
        The country where hospitals are rejecting patients because the Social Security Administrator for Health (BPJS Kesehatan) has not been paid for months and hospitals are forced to reduce the quality their of services?
        
        One in three children are stunted due to a lack of protein, because their mothers are malnourished during pregnancy.
        
        A country that continues to increase debt to pay debts, and increase debt to pay for the government's operational needs; that is paying civil servants' salaries.
        
        A country that exposes our state-owned enterprises to financial risks. Garuda, Indonesia's national flag carrier, a company born during our struggle for independence, suffered a big loss.
        
        Pertamina, the development support company of the Republic of Indonesia, is now facing difficulties. Likewise, utility company Perusahaan Listrik Negara (PLN) and Krakatau Steel. Even if state-owned enterprises are profitable, they are not profitable enough.
        
        A country where some people live only three hours from the State Palace but cannot afford to go to school because they have not eaten for two days.
        
        A country that some time ago lost dozens of children in Asmat district due to starvation, because government officials were not present to help those in need.
        
        This is what I call the Indonesian paradox. Despite being a rich country, many of its people are still poor.
        
        If we are not careful, if we are not vigilant, if we do not change, if we do not act immediately, this situation will worsen.
        
        We are advancing in this election because we believe these things should not happen in an independent country.
        
        It's easy to say, "Indonesia will last a thousand years," but my fellow countrymen, if a state is unable to pay for hospitals, cannot guarantee food for its people, have a weak military system. Can it last a thousand years? Will a country whose national fuel reserves can only last 20 days, and whose rice reserves are less than 3 million tons, survive if there is a sudden attack or security crisis?
        
        The current minister of defense also states that if there is to be a war, Indonesia can just survive for three days because we only have enough ammunition for three days.
        
        This statement does not come from me, but from the government itself.
        
        We must remember, competition between nations is tough. The history of human civilization for thousands of years is harsh. We must not wish for other nations' pity.
        
        We must not forget the law of Thucydides, a historian who lived approximately 50 years before Christ.
        
        The law of Thucydides states: The strong do what they can and the weak suffer what they must.
        
        This lesson is taught in all strategic studies institutions, in all military schools throughout the world.
        
        Fellow countrymen, I have conveyed the reason Sandiaga Uno and I and the supporting parties are running in the 2019 presidential election.
        
        I will now tell you what we will do, strategies we are going to implement over the next five years, if we are elected.
        
        I will also ask for your help, my fellow Indonesians, to realize our collective dreams and aspirations.
        
        My fellow countrymen, the Indonesian people, wherever you may be, we must rethink where this development and management of Indonesia is going.
        
        A reorientation of the development and management of Indonesia is needed because a strong nation can only be realized if the country can have food self-sufficiency.
        
        Having strong government institutions, including the judicial system, superior and honest judges, superior and honest prosecutors, police officers, intelligence officers that are superior and loyal to the country and its people.
        
        Also, a strong army. A strong military, a military for the people that is loyal to the country and its people. A military that can compete with the best in the world.
        
        My fellow countrymen, we named our vision and mission, "Victorious Indonesia." Indonesia must win. We shall not lose. We will not be beggars. And not become a nation mired in debt. Not a nation that does not defend its own people. To realize a Victorious Indonesia, we must carry out our Big Push Strategy.
        
        This strategy can help us realize food self-sufficiency; energy self-sufficiency, mainly fuel; self-sufficiency in clean water; and strong government institutions.
        
        My fellow countrymen, to achieve all this, we have outlined five focus points of our national work program.
        
        Our first is achieving an economy that prioritizes the people, justice, prosperity, proficiency, and which is environmentally conscious. So that our environment, our land, can be used by our children, grandchildren and great-grandchildren. Future generations.
        
        With this, we want to create jobs for our people, the people of Indonesia. We will strengthen our people's purchasing power.
        
        If the people have enough money, the economic engine will operate properly. Factories will run. Production will increase. People's needs will be fulfilled.
        
        We have previously produced sophisticated aircraft and high-technology products. Now I ask, are we able to do what we did then?
        
        I believe we can.
        
        We must make national cars, helicopters, commercial ships, cargo ships, warships.
        
        We should be able to develop these technologies ourselves because we are the fourth- largest nation in the world.
        
        Industrialization is a must for our country. We will make Indonesia's industries like those in India, like South Korea that have world-class industrial companies.
        
        Not like today, where economists believe de-industrialization is occurring in Indonesia. We will also ensure that our important state-owned enterprises, like Krakatau Steel, Pertamina and Garuda, are strong enough to be profitable for the country.
        
        We do not want to be at the bottom of the pyramid anymore!
        
        We want our children to be pilots, seamen and entrepreneurs. They will not be enslaved by other nations!
        
        We will stop the leakage of money abroad by implementing right and just policies for all Indonesians.
        
        We will empower and incentivize small and medium enterprises.
        
        We will provide subsidies and social assistance programs for those in need, to make sure that all Indonesians are able to meet their basic needs.
        
        We will build high-quality infrastructure to benefit all segments of society by not inflating project prices.
        
        We will make sure that the government's debt does not inflate, let alone jeopardize the state's financial position.
        
        We will transform millions of hectares of degraded forest into productive land for food production, energy, clean water and create jobs for our people.
        
        We will establish banks for farmers and fishermen to help them get adequate capital and technology.
        
        To all Indonesians who risk their lives on the street as drivers, we will provide legal certainty for online motorcycle taxi drivers, taxi drivers and bus drivers, and set minimum rates that benefit both employees and businesses.
        
        We will increase the salaries of all soldiers, policemen, policewomen and government workers in remote areas. We will meet the needs of the judiciary, the attorney general, and police. We will even multiply their staff because they are vital to the government of the Republic of Indonesia.
        
        Our second point of focus is to increase quality of life and social welfare.
        
        In this instance, we will fight poverty, improve health care and increase the quality of our education.
        
        We must respect our health workers and teachers and improve their quality of life.
        
        We must increase their wages. We must accommodate and improve the quality of life of our teachers.
        
        With the right programs, such as athletic scholarships, scholarships for Islamic boarding school students, and free public transportation for students, senior citizens and persons with disabilities, we will not widen the gap between the rich and the poor.
        
        We will improve the management of our social security network, and the Social Security Administrator for Health (BPJS Kesehatan) to prevent deficits and advance quality health care.
        
        We will fight for social security for all.
        
        We will strengthen the family planning program so it will spare Indonesia dormancy due to a population explosion.
        
        We will fight for free milk and free lunches at all needy schools, which we hope will decrease stunting.
        
        Our target is that we must be equal to our neighbors, such as Vietnam and Thailand.
        
        For persons with disabilities: We will construct infrastructure that is friendly to persons with disabilities and we will guarantee proper and respectable employment for them.
        
        We will improve the quality of schools, higher education institutions and Islamic boarding schools.
        
        We will improve the prosperity of teachers and education workers, including temporary teachers and teachers at Islamic boarding schools.
        
        We will establish a hajj funding institution to assist prospective pilgrims.
        
        We would like to negotiate with the Saudi Arabian government to construct buildings owned by Indonesia in the holy city to reduce the cost of the hajj.
        
        Our third point of focus is to ensure justice in the field of law and to improve the quality of our democracy.
        
        We will guarantee freedom of the press, speech and assembly.
        
        We will stop threats of persecution against individuals, organizations and the media that are critical of the government.
        
        We will guarantee our ulemas the respect they deserve, and their right to be free from criminal threats. This will be very significant, because the role of the ulemas in our fight for independence was also monumental.
        
        Yes, Indonesia's proclamation of independence was made in Jakarta. But I will say to you today that our spirit for independence was tested in East Java, which peaked when the people of East Java rejected a foreign ultimatum and they were supported by the ulemas' jihad resolution.
        
        And with that, as Indonesians, we shall not disrespect our Islamic elders, our ulemas and other religious leaders among us.
        
        We will also guarantee that all organizations upholding Pancasila and the 1945 Constitution of the Republic of Indonesia shall not be stigmatized and judged without proper trial.
        
        We will guarantee that our laws will not discriminate. Everyone has a right to justice. Justice is not only for the wealthy and powerful.
        
        To eradicate corruption, we will strengthen the Corruption Eradication Commission (KPK), police, prosecuting authority and the judiciary.
        
        We will guarantee that there shall no longer be unnecessary intervention and politicization of law enforcement and corruption eradication in this land.
        
        We will also increase transparency and accountability of financial institutions, from the central to regional governments.
        
        Our fourth point of focus is to provide a safe, comfortable and sovereign Indonesia for its people.
        
        National security and the sovereignty of the Republic of Indonesia are precursors for development, advancement and prosperity.
        
        And with that, we will guarantee that the Indonesian Military (TNI) will be a strong and internationally renowned force.
        
        We will also improve policing capabilities that can prevent and solve new threats, such as cybercrime, human trafficking, international drug trafficking, money laundering and more.
        
        And we will improve the state's ability to prevent, detect in advance, resolve, rehabilitate and reconstruct conditions caused by natural disasters.
        
        To all my fellow countrymen, our fifth point of focus is to strengthen the characteristics and values that reflect the noble nation that is Indonesia.
        
        We believe that the most fundamental aspect of Indonesia as a nation-state is strong morale and character.
        
        To be an independent, sovereign, prosperous and victorious nation, it must go through the developmental process of nation building, achieved by way of character building.
        
        And with that, together with the Victorious Indonesia vision and mission, today we launch a book that elaborates the necessary qualities required to realize a Victorious Indonesia.
        
        We will instill and practice the most noble values and philosophies rooted in Indonesia's history and ancestry.
        
        Like a warrior who never surrenders. Like the phrase, "sabdo pandito ratu," to stay true to our word, or the phrase, "rame ing gaweh, sepi ing pamrih," that fights for the broader interests of the many, not the few.
        
        Like a leader who serves the impoverished to achieve better lives, "wong cilik iso gumuyu."
        
        To have confidence in our own strengths, to stand on our own two feet and the belief that death is better than to be colonized once more.
        
        To my fellow Indonesians wherever you may be, we must ensure security for all. Justice for all. Prosperity for all. Not security only for the wealthy. Not justice only for those who can afford it. Not prosperity for the few, even less than 1 percent of the Indonesian population.
        
        Like what Bung Karno stated during the Indonesian Independence Preparation Examination Assembly (BPUPKI) hearing on June 1, 1945, and I quote:
        
        "We want to establish a country for all. Not for one person, not for one group, not for nobles, not for the rich. But for all."
        
        "This country, the Republic of Indonesia, does not belong to one group, does not belong to one religion, does not belong to one ethnic group, nor does it belong to a particular tradition. It belongs to all of us, from Sabang to Merauke."
        
        To my fellow Indonesians, many have asked me: Aren't your action plans too ambitious? Are you confident you can execute all this?
        
        And to all who have asked, I say: We are racing against time.
        
        Every year our population increases by 3.5 million people. This means that 10 years from now, we must provide housing, schooling, jobs for 35 million people. This is a lot larger than Malaysia's population and seven times larger than that of Singapore.
        
        If we don't execute meaningful programs, if we don't carry out substantial transformation, we may find ourselves stuck in a concerning future.
        
        Other nations have even showed strategic analyses that concluded the possibility of Indonesia's disintegration as a united republic.
        
        We, Prabowo Subianto and Sandiaga Uno, ask for the people's mandate because we want to guarantee that it shall not happen. We want an imperishable, strong, safe, just, and prosperous Republic of Indonesia.
        
        If we receive this mandate from the Indonesian people on April 17, 2019 to execute our programs, we will put the best and brightest sons and daughters of Indonesia in the frontline.
        
        We will not look at their political backgrounds. We will not look at their ethnicity, religion. We will not look at their party attires.
        
        We will choose intelligent sons and daughters of Indonesia, who uphold integrity, honesty and can work most proficiently within the state apparatus. We will create a diverse frontline, upholding Bhinneka Tunggal Ika.
        
        A capable and intelligent frontline to carry out growth for the interest of the many, who can realize a Victorious Indonesia.
        
        My fellow countrymen, these are our core ideas. These are the things we will fight for, we will work towards. And if by the grace of God, on April 17, 2019, our nomination will have gained the trust of the people in the upcoming presidential elections, we will carry out the people's mandate to establish a secure, just and prosperous Indonesia for all while continuing the efforts of our predecessors, presidents Sukarno, Suharto, Habibie, Abdurrahman Wahid, Megawati, Susilo Bambang Yudhoyono and Joko Widodo.
        
        To continue this great work of building our country, we need all your help. We need your undying support. We need, fundamentally, the trust of each and every one of you.
        
        In the Islamic faith, it is written in our Holy Koran, as revealed in Surah Ar-Ra'd, verse 11: "Indeed, Allah will not change the condition of a people until they change what is in themselves."
        
        We thank all of you present today who have sacrificed your time to be with us as we share our vision and mission for our beloved nation.
        
        To those among you who were previously reluctant to support but upon hearing our vision and mission statement decided to join our cause, we thank you for joining us.
        
        To my fellow countrymen, God willing, on April 17, 2019, with your support, with your hard work, the beginning of a great victory of the Indonesian people is at hand.
        
        For those of you who remain unconvinced, we are ready to have a dialogue to answer your doubts.
        
        And today, let me testify. If I am chosen with Sandiaga, I will work for all the people of Indonesia, including many among you, in this room today, who have not given us your vote of confidence.
        
        My fellow countrymen, finally, as a former officer, I would like to close this speech by sending a special message to my younger brothers and sisters, fellow officers within the Indonesian Military, National Police and intelligence services on active duty across our nation.
        
        I speak to all of you today to give advice and counsel as an older brother to his younger sibling. As your senior. Remember our oath. Remember the TNI's eight vows.
        
        We must be friendly to our people. We must be courteous to our people. We must never harm or hurt them in any way.
        
        Remember, it is the people who raise the military, police and intelligence services. It is them who feed, clothe, provide knowledge, careers and ranks; it is not from individuals but solely from the people.
        
        Thus, be loyal to the nation and the country. Not loyal to specific regimes, nor specific individuals and least of all to specific political parties.
        
        Our people yearn for their officials to be steadfast and do what is best to protect all of Indonesia's citizens.
        
        Remember, there exists not a power on earth that is lasting if it is not loved from within, loved by its own people.
        
        My fellow countrymen, thank you for your attention. Thank you for supporting me, Prabowo Subianto and Sandiaga Salahuddin Uno.
        
        Believe me, that we are on the right path. We are here to defend justice, truth and honesty.
        
        We firmly believe that God almighty is with us, because the creator always blesses those who fight along the righteous path.
        
        Wassalamualaikum warahmatullahi wabarakatuh.
        
        Peace be with all of us. Good evening. Carry on! Keep fighting! Freedom! Freedom! Freedom!
        
        """
    }
}

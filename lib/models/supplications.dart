import 'package:flutter/material.dart';

import '../constants.dart';

class Supplication {
  String? name, dua, translation;

  Supplication({
    required this.name,
    required this.dua,
    required this.translation,
  });
}

List<Supplication> supplicationsList = [
 
  Supplication(
    name: "Angry",
    dua: "اللَّهُمَّ أَذْهِبْ غَيْظَ قَلْبِي",
    translation: "Oh Allah, remove anger from my heart",
  ),
  Supplication(
    name: "Anticipation",
    dua:
        "اللهم إن كان هذا الأمر خيرا لي فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ",
    translation:
        "Oh Allah, if my intended action is best for me, make it destined and easy for me, and grant me Your Blessings in it.",
  ),
  Supplication(
    name: "Anxious",
    dua:
        "اللهمّ فارج الهم، كاشف الغم، مذهب الحزن، اكشف اللهمّ عنّي همّي وغمّي ، وأذهب عنّي حزني",
    translation:
        "Oh Allah, Reliever of anxiety, Remover of distress, Dispeller of grief! Remove my anxiety, distress, and dispel from me my sadness.",
  ),
  Supplication(
    name: "Aroused",
    dua:
        "اللهم جنبني الهوى، و جنبني النظر الحرام، و جنبني المعاصي، و جنبني الفتن يا رب العالمين",
    translation:
        "Oh Allah shield me from harmful desires! Shield me from looking at the prohibited! Shield me from my rebellions! And shield me from trials oh Lord of the Universes!",
  ),
  Supplication(
    name: "Confident",
    dua:
        "يا رَبْ إذا أعطيتني مَالاً فلا تأخذ سَعادتي، وإذا أعَطيتني قوّة فلا تأخذ عقليْ، وإذا أعَطيتني نجَاحاً فلا تأخذ تَواضعْي وإذا أعطيتني ،تواضعاً فلا تأخذ اعتزازي بِكرامتي",
    translation:
        "Oh Lord! When you give me wealth, do not take away my happiness. When you give me strength, do not take away my intelligence. When you give me victory, do not take away my humility. When you give me humility, do not take away my dignity.",
  ),
  Supplication(
    name: "Confused",
    dua:
        "اللهمّ اجعل في قلبي نوراً، وفي لساني نوراً، واجعل في سمعي نوراً، واجعل في بصري نوراً، واجعل من خلفي نوراً، ومن أمامي نوراً، واجعل من فوقي نوراً، ومن تحتي نوراً، اللهمّ أعطني نوراً",
    translation:
        "Oh Allah! Place in my heart, Light. Place in my tongue, Light. Place in my hearing, Light. Place in my sight, Light. Place behind me, Light. Place before me, Light. Place above me, Light. Place under me, Light. Oh Allah grant me Light!",
  ),
  Supplication(
    name: "Content",
    dua:
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ",
    translation:
        "O Allah! I seek refuge in You from the decline of Your blessings, the passing of safety, the sudden onset of Your punishment and from all that displeases you.",
  ),
  Supplication(
    name: "Curious",
    dua:
        "اللهم إني أعوذ بك من شر سمعي، ومن شر بصري، ومن شر لساني، ومن شر قلبي، ومن شر منيي",
    translation:
        "Oh Allah, I seek protection in you from the evil of my hearing, from the evil of my sight, from the evil of my tongue, from the evil of my heart, and from the evil of myself.",
  ),
  Supplication(
    name: "Defeated",
    dua:
        "اللهمّ إنّي ظلمت نفسي ظلماً كثيراً، ولا يغفر الذّنوب إلا أنت فاغفر لي مغفرة من عندك، وارحمني إنّك أنت الغفور الرّحيم",
    translation:
        "O Allah, I have been very unjust to myself and no one grants pardon against sin but You, therefore forgive me with Your forgiveness and have mercy on me. Surely, You are the forgiver, the Merciful.",
  ),
  Supplication(
    name: "Depressed",
    dua: "اللهم اخرجني من الظلمات إلى النور",
    translation: "Oh Allah take me out of darkness and into the light.",
  ),
  Supplication(
    name: "Desire",
    dua: "اللهم اطفئ نار الشهوات من قلبى ، واصرف عنه كل شئ لا يرضيك عنى",
    translation:
        "Oh Allah! Extinguish the fire of desires in my heart and redirect my heart to all that which pleases you.",
  ),
  Supplication(
    name: "Desperate",
    dua:
        "اللهم إليك أشكو ضعف قوتي وقلة حيلتي وهواني على الناس يا أرحم الراحمين أنت ربُّ المستضعفين وانت ربّي",
    translation:
        "To You, my Lord, I complain of my weakness, lack of support and the humiliation I am made to receive. Most Compassionate and Merciful! You are the Lord of the weak, and you are my Lord.",
  ),
  Supplication(
    name: "Determined",
    dua:
        "اللهم امنحني القوة لأقاوم نفسي، والشجاعة لأواجه ضعفي، واليقين لأتقبل قدري، والرضا ليرتاح عقلي، والفهم ليطمئن قلبي",
    translation:
        "Oh Allah! Grant me the strength to oppose myself, the courage to face my weakness, the conviction to accept my faith, the satisfaction of to relax my mind, and the understanding to reassure my heart.",
  ),
  Supplication(
    name: "Disbelief",
    dua: "اللهم املأ قلبى بحبك",
    translation: "Oh Allah fill my heart with your love.",
  ),
  Supplication(
    name: "Doubtful",
    dua:
        "اللهم إن كان هذا الأمر خيرا لي فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ",
    translation:
        "Oh Allah, if my intended action is best for me, make it destined and easy for me, and grant me Your Blessings in it.",
  ),
  Supplication(
    name: "Envious",
    dua:
        "اللهم طهر قلبي من كل سوء ، اللهم طهر قلبي من كل ما يبغضك، اللهم طهر قلبي من كل غلٍ وحقدٍ وحسد وكبر",
    translation:
        "Oh Allah, clean away all forms of evil from my heart. Oh Allah, clean my heart and remove everything that displeases you. Oh Allah, clean my heart of all every form of bitterness, hard feelings, and jealousy.",
  ),
  Supplication(
    name: "Grateful",
    dua:
        "اللهم إن شكرك نعمة، تستحق الشكر، فعلّمني كيف أشكرك ، الحمد لله كما ينبغى لجلال وجهك وعظيم سلطانك",
    translation:
        "Oh Allah thanking you is a blessing, you deserve all thankfulness. All praise is due to Allah the way He should his magnificence deserves to be praised.",
  ),
  Supplication(
    name: "Guilty",
    dua: "يارب أمسح على صدري برحمتك",
    translation: "Oh Lord, wipe my chest clean with your mercy.",
  ),
  Supplication(
    name: "Happy",
    dua:
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ",
    translation:
        "O Allah! I seek refuge in You from the decline of Your blessings, the passing of safety, the sudden onset of Your punishment and from all that displeases you.",
  ),
  Supplication(
    name: "Hatred",
    dua: "اللهم لا تجعل في قلبي كراهية لأحد",
    translation: "Oh Allah, don't let the hate of anyone reside in my heart.",
  ),
  Supplication(
    name: "Humiliated",
    dua:
        "اللهم إليك أشكو ضعف قوتي وقلة حيلتي وهواني على الناس يا أرحم الراحمين أنت ربُّ المستضعفين وانت ربّي",
    translation:
        "To You, my Lord, I complain of my weakness, lack of support and the humiliation I am made to receive. Most Compassionate and Merciful! You are the Lord of the weak, and you are my Lord.",
  ),
  Supplication(
    name: "Hurt",
    dua: "اللهم لا تعلق قلبي الضعيف بما ليس بي",
    translation:
        "Oh Allah, don't let my weak heart get attached with what's not mine.",
  ),
  Supplication(
    name: "Impatient",
    dua: "يا صبور صبّرني على ما بلوتني وامتحنتني",
    translation:
        "Oh The Most Patient, enable me to be patient upon whatever you afflict and test me with.",
  ),
  Supplication(
    name: "Indecisive",
    dua:
        "اللهم إن كان هذا الأمر خيرا لي فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ",
    translation:
        "Oh Allah, if my intended action is best for me, make it destined and easy for me, and grant me Your Blessings in it.",
  ),
  Supplication(
    name: "Insecure",
    dua: "اللهم اجعلني أرى المواهب و نقاط قوت الذين وضعته في نفسي",
    translation:
        "Oh Allah, make me see the talents and strengths you have put inside of me.",
  ),
  Supplication(
    name: "Irritated/ Jealous",
    dua:
        "اللهم طهر قلبي من كل سوء ، اللهم طهر قلبي من كل ما يبغضك، اللهم طهر قلبي من كل غلٍ وحقدٍ وحسد وكبر",
    translation:
        "Oh Allah, clean away all forms of evil from my heart. Oh Allah, clean my heart and remove everything that displeases you. Oh Allah, clean my heart of all every form of bitterness, hard feelings, and jealousy.",
  ),
  Supplication(
    name: "Lazy",
    dua:
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحُزْنِ وَالْعَجْزِ وَالْكَسَلِ وَالْبُخْلِ وَالْجُبْنِ وَضَلَعِ الدَّيْنِ وَغَلَبَةِ الرِّجَالِ",
    translation:
        "O Allah, I take refuge in You from anxiety and sorrow, weakness and laziness, miserliness and cowardice, the burden of debts and from being over powered by men.",
  ),
  Supplication(
    name: "Lonely",
    dua:
        ".اللهُمَّ رَحْمَتَكَ أرجُو، فَلا تَكِلْنِي إلى نَفْسي طَرْفَةَ عَيْنٍ، وأصْلِحْ لي شَأني كُلَّهُ، لا إله إلا أنْتَ",
    translation:
        "O Allah, it is Your mercy that I hope for, so do not leave me in charge of my affairs even for a blink of an eye, and rectify for me all of my affairs. None has the right to be worshiped except You.",
  ),
  Supplication(
    name: "Love",
    dua: "اللهم اجعلني من الطيبين وارزقني الطيبات",
    translation:
        "Oh Allah make me from amongst the pure men and grant me from the pure women.",
  ),
  Supplication(
    name: "Nervous",
    dua:
        "رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي وَاحْلُلْ عُقْدَةً مِّن لِّسَانِي يَفْقَهُوا قَوْلِي",
    translation:
        "Oh lord, expand my chest, ease my affair, and untie the knot in my tongue and perfect my expression.",
  ),
  Supplication(
    name: "Nostalgic",
    dua: "اللهم لَا تُعَلِّقْ قَلْبِي الضِّعِيفِ بِمَا لَيسَ لِي",
    translation:
        "Oh Allah, don't let my weak heart get attached with what's not mine.",
  ),
  Supplication(
    name: "Offended",
    dua:
        "اللهم إنِّي أَعُوْذُ بِكَ مِنْ هَمِّ يَحْزُنُنِي وَمِنْ فِكْرِ يُقْلِقُنِيْ وَعِلْمَا يُتْعِبُنِيْ وَشَخْصَا يَحْمِلُ خُبْثَا لِيْ",
    translation:
        "Oh Allah! I seek your shelter from worries that sadden me, thoughts that make me restless, information that bothers me, and people that intend bad for me.",
  ),
  Supplication(
    name: "Overwhelmed",
    dua:
        "اللهم إليك أشكو ضعف قوتي وقلة حيلتي وهواني على الناس يا أرحم الراحمين أنت ربُّ المستضعفين وانت ربّي",
    translation:
        "To You, my Lord, I complain of my weakness, lack of support and the humiliation I am made to receive. Most Compassionate and Merciful! You are the Lord of the weak, and you are my Lord.",
  ),
  Supplication(
    name: "Peaceful",
    dua:
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ",
    translation:
        "O Allah! I seek refuge in You from the decline of Your blessings, the passing of safety, the sudden onset of Your punishment and from all that displeases you.",
  ),
  Supplication(
    name: "Regretful",
    dua:
        "اللهمّ إنّي ظلمت نفسي ظلماً كثيراً، ولا يغفر الذّنوب إلا أنت فاغفر لي مغفرة من عندك، وارحمني إنّك أنت الغفور الرّحيم",
    translation:
        "O Allah, I have been very unjust to myself and no one grants pardon against sin but You, therefore forgive me with Your forgiveness and have mercy on me. Surely, You are the forgiver, the Merciful.",
  ),
  Supplication(
    name: "Sad",
    dua:
        "اللهمّ فارج الهم، كاشف الغم، مذهب الحزن، اكشف اللهمّ عنّي همّي وغمّي ، وأذهب عنّي حزني",
    translation:
        "Oh Allah, Reliever of anxiety, Remover of distress, Dispeller of grief! Remove my anxiety, distress, and dispel from me my sadness.",
  ),
  Supplication(
    name: "Satisfied",
    dua:
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ",
    translation:
        "O Allah! I seek refuge in You from the decline of Your blessings, the passing of safety, the sudden onset of Your punishment and from all that displeases you.",
  ),
  Supplication(
    name: "Uncertainity",
    dua: "اللهم اغسلني من السلبية",
    translation: "Oh Allah wash away my negativity.",
  ),
  Supplication(
    name: "Weak",
    dua:
        "اَللّهمَّ إِلَيْكَ أَشْكُوْ ضُعْفَ قُوَّتِيْ ، وَقِلَّةَ حِيْلَتِيْ ، وَهَوَانِيْ عَلَى النَّاسِ ، يَا أَرْحَمَ الرَّاحِمِيْنَ ، أَنْتَ رَبُّ الْمُسْتَضْعَفِيْنَ ، وَ أَنْتَ رَبِّي",
    translation:
        "Oh, Allah, I appeal to you for the weakness in my strength, and my limited power, and the treatment of contempt and humiliation from people. To you, the most Merciful of all the Merciful ones, you are the Lord of the oppressed, and you are my Lord.",
  ),
  Supplication(
    name: "Uneasy",
    dua: "اللهم أنزِل عليّ سكينة من عندك تشرح بها صدري و تحفظُ بها قلبي",
    translation:
        "Oh Allah, descend upon me satisfaction that comes from you and open my chest and protect my heart with it.",
  ),
];

{
  "metadata": {
    "transaction_key": "deprecated",
    "request_id": "9eb6891e-02b3-4be4-b876-82ae6dbd42f9",
    "sha256": "26ac6f8ea9899b0d5b4e98a0b696c737f4340a463c27a892a523a7cfb3555936",
    "created": "2026-02-03T22:21:41.625Z",
    "duration": 956.3951,
    "channels": 1,
    "models": [
      "1ed36bac-f71c-4f3f-a31f-02fd6525c489"
    ],
    "model_info": {
      "1ed36bac-f71c-4f3f-a31f-02fd6525c489": {
        "name": "general",
        "version": "2024-01-26.8851",
        "arch": "base"
      }
    }
  },
  "results": {
    "channels": [
      {
        "alternatives": [
          {
            "transcript": "it is january twenty eight twenty twenty six and i wanna start today by just asking you to rewind the clock a little bit think back just two years early twenty twenty four maybe even the start of twenty twenty five right what was the main thing we were all doing with ai back then it was all about the chat box that was the era we were just staring at these blinking cursor asking them to you know write an email for us summarize a meeting maybe write a silly poem about your dog exact it was all about generating text walls of text but that's that's not where we are anymore is it here now in early twenty twenty six the whole pattern is shifted we're not just asking ai to describe things no we're asking you to do things to execute yeah that is the fundamental shift that chat box is kinda fading away and this this workshop is opening up a workshop i like that yeah we're seeing tools that don't just you know describe a marketing campaign they actually run it they don't just talk about a movie scene they go film it that huge scary gap between i have an idea and i actually have a product that gap that's usually filled with months of coding hiring burning through cash and google labs just dropped this whole suite of tools designed to well to close that that gap and they did it pretty quietly actually very quietly but the implications are they're loud we're looking at a whole new ecosystem here you've got stitch for coding pamela for branding whiskey and mixed board for brainstorming and then the big ones nano banana and yes we have to talk about that name and v three for video okay that is a lot of ground to cover so for everyone listening our mission today isn't just to read off a feature list we wanna really figure out you know can these tools actually replace a team can they replace a creative agency or are they just very very fancy toys that fall apart when you try to do real work exactly so where do we start well the first bottleneck for any idea is usually the interface right you have a sketch on an napkin and but you need an actual app and that brings us straight to google stitch alright let's un unpack stitch it's running on gemini two point five and the promise is huge turn a drawing into working code but i have to be a little skeptical here we've seen text to website tools for years so yeah and they usually just spit out this generic kind of ugly template garbage that breaks if you touch it right and stitch is different but you have to understand how it's different to get any value from it it's not a magic wand it's really a a tool with two very distinct modes this is the standard versus experimental split you see in the ui correct standard mode runs on gemini two point five flash think of flash as the fast reflective part of the brain you type give me a login screen and boom you get a login screen it's all about speed and pattern recognition and the key thing there is the handoff isn't it because usually these tools trap you that's it standard mode has copied to fig this is massive for designers and about a flat image it gives you the actual editable layers so the buttons the text fields all of it all of it you can hand that file to a professional designer and they can actually work with it it plugs into a real world workflow okay but then you have experimental move this is that really got my attention because it uses the pro model gemini and i two point five pro the thinking brain this is where it gets much more interesting this is where the whole napkin sketch feature lives you can upload a photo of a messy hand drawn wire literally scribble on a napkin in at a coffee shop exactly and it understands the intent behind your scribble it sees a box with an x and knows oh that's an image placeholder it sees a squiggly line and knows that's a header but there's a catch a big workflow blocker a huge one mh experimental mode cannot export to fig yet so you get this beautiful high fidelity result but it's it's trapped from a design perspective yeah you can get the code the html the css that's all there so for a developer who just wants to paste it into vs code it's a dream but for a designer who wants to tweak things in fig they're out of luck right you have to choose do you want the smart model or do you want the export one and you can't have both right now let's make this real with the crypto track example they showed i think it illustrates the state of this tech perfectly yeah so the prompt is pretty standard design a mobile crypto dashboard dark theme pie chart trending coins list you know the usual stuff and stitch built it it looked like a real app but and i actually respect google for showing this it made some mistakes it did it centered the app's name which just looked a bit amateur and it used a bar graph instead of the pie chart it was asked for now in twenty twenty four if an ai did that you'd have to scrap it and start over rewrite the whole prompt cross your fingers and just hope it understands you the second time but stitch stitches conversational you don't restart just talk to it you just say hey align that title to the left and make that chart a circle and it iterate it keeps everything else the same the colors the layout and just fixes the mistake it feels more like art direction than coding i do wanna clarify for any developers listening though when we say it writes the code we're talking purely front end correct yes that is a crucial distinction give you the html and css it builds the shell of the car it does not build the engine so it won't connect to a crypto abi api or handle logins it's static ui exactly but think of the time saved just getting from a blank page to a coded interface that used to be days of wire framing and fighting with css now it's minutes okay so you have your interface from stitch now you've gotta sell it you need a brand you need social media posts you need a consistent look and feel and this is where honestly most small business is just completely fall apart the data here is brutal something like seventy three percent of them say they struggle with messaging and even more seventy seven percent admit they just post off brand content because they need to get something out i've been there you've been there it's four pm you haven't posted on instagram so you just grab a random can template that looks nothing like your website and hit publish and every time you do that you're confusing your customers you're diluting the brand this is the problem is trying to solve they're pitching it as an automated marketing department it's in beta now in the us canada australia new zealand the setup process is what really struck me you don't upload a brand guide or type in your color codes nope it's much easier and a good way you just give it your website's url that's it it goes and crawls your site and it just figures it out it figures it out it extracts your fonts your exact color palette down to the specific hex code like hashtag f six b three five and it even analyzes your tone of voice it builds what it calls your business dna business dna it sounds like a marketing buzz word but the demos are actually pretty convincing they were they showed a local pizza shop the owner just typed in two for one pizza thursdays pamela mel generated instagram stories in facebook post that look like his pizza shop they had his font his casual you know slightly greasy in a good way tone right versus the other example of the skincare brand totally different vibe clean minimal scientific p generated twelve different assets for their new serum launch at about ninety seconds ninety seconds that is that's a whole week of content for a social media manager but is it any good or is it just you know that generic ai s we see everywhere it's competent i'd call a junior marketing team level it follows the rules perfectly but it definitely has limitations for one its static images only for now no video no reals which is a big miss for twenty twenty six and it doesn't post for you right no which is a big point of friction you have to download everything and then upload it yourselves not fully autonomous and what if your website is just bad well garbage in garbage out that's the first rule of ai if your website is a mess of different fonts and colors the melody is just gonna learn that messi is your brand identity so it's not a chief marketing officer it's more like a really obedient intern who just mimics your home page that is a perfect analogy but for that local pizza shop owner yeah it's a game changer alright let's go a layer deeper we have the code we have the branding but what's actually powering the images behind all this we have to talk about the the fruit in the room nano banana i still can't say it with a straight face it's a very google name isn't it but yeah name aside this is the core image generation model it is it's based on gemini two point five flash and just like stitch it has tiers there's the standard fast version but the pro version uses what they call a thinking model we keep hearing that phrase thinking model i usually associate that with logic or math why does an image generator need to think because the real world has logic and most image ais don't get that think about trying to generate text on an image how many times have you asked for a stock sign and it spells it s t o p p or it's just weird alien symbols exactly because standard models are just predicting pixels a thinking model actually understands the concept of spelling nano banana pro can create a movie poster where the title is actually readable it can draw a diagram of a bike where the chain connects to the pedals because it thinks about how a bike works before it draws it and the way you interact with it is me too this doodle your edits feature this is my favorite part of the whole suite writing prompts is hard trying to describe make the cat a bit smaller and put sunglasses on it is so frustrated so what do you do instead you just click into the image draw a really crude outline of sunglasses over the cat's size and type add sunglasses here you anchor the ai attention so you're combining the user's direct visual intent with the ai ability to execute yes it stops the ai from hall or changing the whole image you're giving it a map and what about safety i mean these are getting so realistic yeah and google is pushing sent really hard here every image it generates has an invisible watermark baked into the pixels you can't see it but a machine can so least there's a layer of transparency which is necessary okay so sometimes creativity isn't about making something from scratch it's about combining things this seems to be where wi and mixed board come in these are for that messy early stage of the creative process and whisk is fascinating because it almost completely gets rid of text prompts it uses a three image input subject seen and style right you drag in a picture of your coffee mug that's the subject mh that a picture of a sunset that's the scene and then maybe a van go painting for the style and it blends them together it's not a collage no it's a true synthesis under the hood gemini rides a really detailed description of all three images and then image and three generates a brand new image from that description they showed an example where they turn a photo of a glazed donut into a shiny enamel pin wow it captured the texture at the pin the metal edges but it still had the essence of the doughnut it's like a vibe engine a vibe engine and mix board mixed board is an infinite mood board but it's alive you could put images on it and then just talk to them you can literally type make this kitchen more modern and the image updates itself in context with everything else on the board so it's aware of the other image images yes exactly it's context to where it can even start drafting ad copy or headlines for you based on the visual mood you've created okay so we've built the app we've branded the company we've generated the image but the final frontier the thing everyone is chasing in twenty twenty six is video v three and flow this is the big one v three is the new model from deep mind and if you take one thing away from our deep dive today it should be this phrase native audio generation explain that because we've had tools that add audio to video before we have but it was always post processing a separate ai would look at the video and try to guess the sounds v three generates the audio and the pixels the same time it understands the physics of the scene so if i prompt for a video of a rain storm you don't just see the lightning you hear the thunder a moment later you hear the sound of rain hitting a metal roof versus hitting grass the main demo was this wise old owl talking to a nervous badger on a path a classic setup but the details were incredible yeah you could hear the owl feathers russell you heard twig snapping onto the badger feet and the dialogue was perfectly lip synced it's not a silent movie with a soundtrack slapped on top and flow is the tool you use to direct all this yeah view of the engine flows the cockpit and flow solves the single biggest problem in ai video so far which is consistency the flickering face problem that's the one your character looks great in one shot and then in the next shot they have a different nose flow has asset management you define your character wants and it locks that identity across the whole project that's the difference between making a short clip and making an actual movie it is and flow gives you direct your controls you can ask for a dolly zoom a pan a crane shot it even has object removal so you can just draw a circle around the coffee cup in the background of a shot and it's gone this all sounds like a full production studio in a browser which brings us to the reality check access this can't all be free definitely not we are well into the subscription era google has a few tiers now the main one is google ai pro okay what does that get yet that's your basic creator package two t of storage you get access to gemini three pro v o three point one fast notice this the fast version not the absolute highest quality and nano banana pro and this plan also includes joules joules the coding that we mentioned right it's a developer sitting next to you while you're in stitch designing jewels can be in the background fixing bugs in your code repository or writing test cases it's an agent that handles the grunt works and then for the real power use that's google ai ultra this is the heavy duty plan thirty tb storage you get the deep think reasoning models the highest limits on v and you get access to project mariner mariner it's an agent that actually leaves the chat box and uses your browser yeah it can go out and book flights for you navigate complex websites to do research sure it's an agent that does things in the real world so when you zoom out and look at all of this stitch pamela v jewels mariner it feels like google is trying to own the entire creative pipeline from idea to execution they absolutely are the whole story here is about the collapse of the production barrier right it used to be that if you wanted to professional looking app or a sleek brand or a cinematic video you needed a team you needed a lot of capital now you need a subscription and an idea these tools have democrat looking good anyone can have the gloss of a fortune five hundred company for a monthly fee which leads me to a final maybe provocative thought if the execution part the making becomes this easy and automated what's actually valuable anymore that's the question for the rest of this decade isn't it if amy can use pom to generate a perfect brand identity then perfect just becomes average professional becomes the new baseline so the value has to shift somewhere else to what the human touch the value shifts to taste to curation it shifts to having a weird specific human point of view that an ai can't generate the tools can build the house but you still have to tell them where to put the windows to catch the best morning light that's still you it's like when spell check became standard it meant no one had typos anymore but it didn't turn everybody into a great writer exactly these tools raise the floor right you can't really get away with being incompetent anymore but they don't lower the ceiling you still need vision in fact you need it more than ever because you can't hide behind the use of i don't have the budget now you have no excuse that is both incredibly empowering and yeah a little bit terrifying so here's my challenge you listening don't just take our word for it go to google apps pick one of these tools just one throw a sketch to stitch or mess around with wi for fun take your hands dirty see where it breaks that's where you'll really learn what this is all about absolutely thanks for diving deep with us we'll see you in the next one",
            "confidence": 0.9946289,
            "words": [
              {
                "word": "it",
                "start": 0.119736835,
                "end": 0.35921052,
                "confidence": 0.99316406
              },
              {
                "word": "is",
                "start": 0.35921052,
                "end": 0.4390351,
                "confidence": 0.9975586
              },
              {
                "word": "january",
                "start": 0.5986842,
                "end": 1.0986842,
                "confidence": 0.99902344
              },
              {
                "word": "twenty",
                "start": 1.1574562,
                "end": 1.3969297,
                "confidence": 0.9946289
              },
              {
                "word": "eight",
                "start": 1.3969297,
                "end": 1.7960526,
                "confidence": 0.9472656
              },
              {
                "word": "twenty",
                "start": 1.7960526,
                "end": 2.1153507,
                "confidence": 0.9970703
              },
              {
                "word": "twenty",
                "start": 2.1153507,
                "end": 2.5144737,
                "confidence": 0.99853516
              },
              {
                "word": "six",
                "start": 2.5144737,
                "end": 2.7539473,
                "confidence": 0.9892578
              },
              {
                "word": "and",
                "start": 3.4723682,
                "end": 3.6320174,
                "confidence": 0.99853516
              },
              {
                "word": "i",
                "start": 3.7916665,
                "end": 3.8714912,
                "confidence": 1
              },
              {
                "word": "wanna",
                "start": 3.8714912,
                "end": 4.190789,
                "confidence": 0.9135742
              },
              {
                "word": "start",
                "start": 4.190789,
                "end": 4.5100875,
                "confidence": 0.9995117
              },
              {
                "word": "today",
                "start": 4.5100875,
                "end": 4.7495613,
                "confidence": 0.9995117
              },
              {
                "word": "by",
                "start": 4.7495613,
                "end": 4.989035,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 4.989035,
                "end": 5.3083334,
                "confidence": 0.99902344
              },
              {
                "word": "asking",
                "start": 5.9469295,
                "end": 6.3460526,
                "confidence": 1
              },
              {
                "word": "you",
                "start": 6.3460526,
                "end": 6.5057015,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 6.5057015,
                "end": 7.0057015,
                "confidence": 0.99902344
              },
              {
                "word": "rewind",
                "start": 7.2241225,
                "end": 7.4635963,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 7.4635963,
                "end": 7.70307,
                "confidence": 0.99853516
              },
              {
                "word": "clock",
                "start": 7.70307,
                "end": 7.862719,
                "confidence": 1
              },
              {
                "word": "a",
                "start": 7.862719,
                "end": 8.022368,
                "confidence": 0.99658203
              },
              {
                "word": "little",
                "start": 8.022368,
                "end": 8.182017,
                "confidence": 0.99902344
              },
              {
                "word": "bit",
                "start": 8.182017,
                "end": 8.261842,
                "confidence": 0.9995117
              },
              {
                "word": "think",
                "start": 8.501315,
                "end": 8.740789,
                "confidence": 0.99609375
              },
              {
                "word": "back",
                "start": 8.740789,
                "end": 8.900438,
                "confidence": 0.94189453
              },
              {
                "word": "just",
                "start": 8.900438,
                "end": 9.400438,
                "confidence": 0.98535156
              },
              {
                "word": "two",
                "start": 9.858333,
                "end": 10.097807,
                "confidence": 0.99609375
              },
              {
                "word": "years",
                "start": 10.097807,
                "end": 10.417105,
                "confidence": 0.9975586
              },
              {
                "word": "early",
                "start": 10.975877,
                "end": 11.375,
                "confidence": 1
              },
              {
                "word": "twenty",
                "start": 11.375,
                "end": 11.614473,
                "confidence": 0.99560547
              },
              {
                "word": "twenty",
                "start": 11.614473,
                "end": 11.853947,
                "confidence": 0.9975586
              },
              {
                "word": "four",
                "start": 11.853947,
                "end": 11.933772,
                "confidence": 0.99902344
              },
              {
                "word": "maybe",
                "start": 12.093421,
                "end": 12.25307,
                "confidence": 0.9892578
              },
              {
                "word": "even",
                "start": 12.25307,
                "end": 12.492543,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 12.492543,
                "end": 12.7320175,
                "confidence": 0.9902344
              },
              {
                "word": "start",
                "start": 12.7320175,
                "end": 12.891666,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 12.891666,
                "end": 13.13114,
                "confidence": 0.99560547
              },
              {
                "word": "twenty",
                "start": 13.13114,
                "end": 13.370614,
                "confidence": 0.9946289
              },
              {
                "word": "twenty",
                "start": 13.370614,
                "end": 13.665,
                "confidence": 0.99316406
              },
              {
                "word": "five",
                "start": 13.78475,
                "end": 13.864583,
                "confidence": 0.9970703
              },
              {
                "word": "right",
                "start": 14.104083,
                "end": 14.183916,
                "confidence": 0.9301758
              },
              {
                "word": "what",
                "start": 14.50325,
                "end": 14.74275,
                "confidence": 0.99902344
              },
              {
                "word": "was",
                "start": 14.74275,
                "end": 14.902416,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 14.902416,
                "end": 15.062083,
                "confidence": 0.9995117
              },
              {
                "word": "main",
                "start": 15.062083,
                "end": 15.22175,
                "confidence": 0.99902344
              },
              {
                "word": "thing",
                "start": 15.22175,
                "end": 15.541083,
                "confidence": 0.9995117
              },
              {
                "word": "we",
                "start": 15.541083,
                "end": 15.620916,
                "confidence": 0.9951172
              },
              {
                "word": "were",
                "start": 15.620916,
                "end": 15.70075,
                "confidence": 0.9951172
              },
              {
                "word": "all",
                "start": 15.70075,
                "end": 15.94025,
                "confidence": 0.9975586
              },
              {
                "word": "doing",
                "start": 15.94025,
                "end": 16.41925,
                "confidence": 0.9995117
              },
              {
                "word": "with",
                "start": 16.41925,
                "end": 16.499083,
                "confidence": 0.99853516
              },
              {
                "word": "ai",
                "start": 16.65875,
                "end": 17.057917,
                "confidence": 0.9770508
              },
              {
                "word": "back",
                "start": 17.057917,
                "end": 17.297417,
                "confidence": 0.9970703
              },
              {
                "word": "then",
                "start": 17.297417,
                "end": 17.457083,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 17.85625,
                "end": 18.015917,
                "confidence": 0.99658203
              },
              {
                "word": "was",
                "start": 18.015917,
                "end": 18.175583,
                "confidence": 0.9995117
              },
              {
                "word": "all",
                "start": 18.175583,
                "end": 18.415083,
                "confidence": 0.9970703
              },
              {
                "word": "about",
                "start": 18.415083,
                "end": 18.494917,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 18.494917,
                "end": 18.654583,
                "confidence": 0.9975586
              },
              {
                "word": "chat",
                "start": 18.654583,
                "end": 18.894083,
                "confidence": 0.99072266
              },
              {
                "word": "box",
                "start": 18.894083,
                "end": 18.973917,
                "confidence": 0.86572266
              },
              {
                "word": "that",
                "start": 19.53275,
                "end": 19.612583,
                "confidence": 0.9980469
              },
              {
                "word": "was",
                "start": 19.612583,
                "end": 19.77225,
                "confidence": 0.98828125
              },
              {
                "word": "the",
                "start": 19.77225,
                "end": 19.931915,
                "confidence": 0.99853516
              },
              {
                "word": "era",
                "start": 19.931915,
                "end": 20.091583,
                "confidence": 0.9345703
              },
              {
                "word": "we",
                "start": 20.410915,
                "end": 20.570583,
                "confidence": 0.9980469
              },
              {
                "word": "were",
                "start": 20.570583,
                "end": 20.650417,
                "confidence": 0.9970703
              },
              {
                "word": "just",
                "start": 20.650417,
                "end": 20.889915,
                "confidence": 0.99853516
              },
              {
                "word": "staring",
                "start": 20.889915,
                "end": 21.049583,
                "confidence": 0.99365234
              },
              {
                "word": "at",
                "start": 21.049583,
                "end": 21.20925,
                "confidence": 0.99853516
              },
              {
                "word": "these",
                "start": 21.20925,
                "end": 21.44875,
                "confidence": 0.99609375
              },
              {
                "word": "blinking",
                "start": 21.44875,
                "end": 21.847916,
                "confidence": 0.99902344
              },
              {
                "word": "cursor",
                "start": 21.847916,
                "end": 22.326916,
                "confidence": 0.9814453
              },
              {
                "word": "asking",
                "start": 22.326916,
                "end": 22.64625,
                "confidence": 1
              },
              {
                "word": "them",
                "start": 22.64625,
                "end": 22.88575,
                "confidence": 0.99658203
              },
              {
                "word": "to",
                "start": 22.88575,
                "end": 23.284916,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 23.36475,
                "end": 23.444584,
                "confidence": 0.99609375
              },
              {
                "word": "know",
                "start": 23.444584,
                "end": 23.604248,
                "confidence": 0.98779297
              },
              {
                "word": "write",
                "start": 23.763916,
                "end": 23.84375,
                "confidence": 0.9975586
              },
              {
                "word": "an",
                "start": 23.84375,
                "end": 24.163082,
                "confidence": 0.9951172
              },
              {
                "word": "email",
                "start": 24.163082,
                "end": 24.402584,
                "confidence": 0.9897461
              },
              {
                "word": "for",
                "start": 24.402584,
                "end": 24.562248,
                "confidence": 0.99853516
              },
              {
                "word": "us",
                "start": 24.562248,
                "end": 24.642082,
                "confidence": 0.79541016
              },
              {
                "word": "summarize",
                "start": 24.881582,
                "end": 25.200916,
                "confidence": 0.8540039
              },
              {
                "word": "a",
                "start": 25.200916,
                "end": 25.440416,
                "confidence": 0.87402344
              },
              {
                "word": "meeting",
                "start": 25.440416,
                "end": 25.600082,
                "confidence": 0.9941406
              },
              {
                "word": "maybe",
                "start": 25.839582,
                "end": 26.079082,
                "confidence": 0.96533203
              },
              {
                "word": "write",
                "start": 26.079082,
                "end": 26.23875,
                "confidence": 0.9379883
              },
              {
                "word": "a",
                "start": 26.23875,
                "end": 26.398415,
                "confidence": 0.99121094
              },
              {
                "word": "silly",
                "start": 26.398415,
                "end": 26.637917,
                "confidence": 0.99560547
              },
              {
                "word": "poem",
                "start": 26.637917,
                "end": 26.957249,
                "confidence": 0.7128906
              },
              {
                "word": "about",
                "start": 26.957249,
                "end": 27.116917,
                "confidence": 1
              },
              {
                "word": "your",
                "start": 27.116917,
                "end": 27.276583,
                "confidence": 0.9995117
              },
              {
                "word": "dog",
                "start": 27.276583,
                "end": 27.436249,
                "confidence": 0.6113281
              },
              {
                "word": "exact",
                "start": 27.835415,
                "end": 27.915249,
                "confidence": 0.80859375
              },
              {
                "word": "it",
                "start": 28.169413,
                "end": 28.249022,
                "confidence": 0.8461914
              },
              {
                "word": "was",
                "start": 28.249022,
                "end": 28.40824,
                "confidence": 0.75390625
              },
              {
                "word": "all",
                "start": 28.40824,
                "end": 28.567457,
                "confidence": 0.99609375
              },
              {
                "word": "about",
                "start": 28.567457,
                "end": 28.726675,
                "confidence": 0.99609375
              },
              {
                "word": "generating",
                "start": 28.726675,
                "end": 29.204329,
                "confidence": 0.99853516
              },
              {
                "word": "text",
                "start": 29.204329,
                "end": 29.443155,
                "confidence": 0.9501953
              },
              {
                "word": "walls",
                "start": 29.761591,
                "end": 29.920809,
                "confidence": 0.9243164
              },
              {
                "word": "of",
                "start": 29.920809,
                "end": 30.159636,
                "confidence": 0.98828125
              },
              {
                "word": "text",
                "start": 30.159636,
                "end": 30.398462,
                "confidence": 0.9760742
              },
              {
                "word": "but",
                "start": 30.63729,
                "end": 31.035334,
                "confidence": 0.99902344
              },
              {
                "word": "that's",
                "start": 31.035334,
                "end": 31.35377,
                "confidence": 0.8647461
              },
              {
                "word": "that's",
                "start": 31.35377,
                "end": 31.592596,
                "confidence": 0.9824219
              },
              {
                "word": "not",
                "start": 31.592596,
                "end": 31.672205,
                "confidence": 0.9995117
              },
              {
                "word": "where",
                "start": 31.672205,
                "end": 31.831423,
                "confidence": 0.99853516
              },
              {
                "word": "we",
                "start": 31.831423,
                "end": 31.911032,
                "confidence": 0.99560547
              },
              {
                "word": "are",
                "start": 31.911032,
                "end": 32.22947,
                "confidence": 0.9399414
              },
              {
                "word": "anymore",
                "start": 32.22947,
                "end": 32.388687,
                "confidence": 0.73779297
              },
              {
                "word": "is",
                "start": 32.388687,
                "end": 32.468296,
                "confidence": 0.8701172
              },
              {
                "word": "it",
                "start": 32.468296,
                "end": 32.968296,
                "confidence": 0.98828125
              },
              {
                "word": "here",
                "start": 33.02556,
                "end": 33.264385,
                "confidence": 0.9975586
              },
              {
                "word": "now",
                "start": 33.264385,
                "end": 33.58282,
                "confidence": 0.9980469
              },
              {
                "word": "in",
                "start": 33.58282,
                "end": 33.821648,
                "confidence": 0.99902344
              },
              {
                "word": "early",
                "start": 33.821648,
                "end": 34.060474,
                "confidence": 0.9995117
              },
              {
                "word": "twenty",
                "start": 34.060474,
                "end": 34.2993,
                "confidence": 0.9970703
              },
              {
                "word": "twenty",
                "start": 34.2993,
                "end": 34.538128,
                "confidence": 0.9995117
              },
              {
                "word": "six",
                "start": 34.538128,
                "end": 34.617737,
                "confidence": 0.89501953
              },
              {
                "word": "the",
                "start": 34.776955,
                "end": 34.936172,
                "confidence": 0.99658203
              },
              {
                "word": "whole",
                "start": 34.936172,
                "end": 35.09539,
                "confidence": 0.99902344
              },
              {
                "word": "pattern",
                "start": 35.09539,
                "end": 35.25461,
                "confidence": 1
              },
              {
                "word": "is",
                "start": 35.25461,
                "end": 35.493435,
                "confidence": 0.87402344
              },
              {
                "word": "shifted",
                "start": 35.493435,
                "end": 35.652653,
                "confidence": 0.99853516
              },
              {
                "word": "we're",
                "start": 35.81187,
                "end": 35.97109,
                "confidence": 0.9970703
              },
              {
                "word": "not",
                "start": 35.97109,
                "end": 36.130306,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 36.130306,
                "end": 36.289524,
                "confidence": 0.9995117
              },
              {
                "word": "asking",
                "start": 36.289524,
                "end": 36.60796,
                "confidence": 0.99902344
              },
              {
                "word": "ai",
                "start": 36.68757,
                "end": 37.006004,
                "confidence": 0.99072266
              },
              {
                "word": "to",
                "start": 37.006004,
                "end": 37.40405,
                "confidence": 0.9995117
              },
              {
                "word": "describe",
                "start": 37.40405,
                "end": 37.722485,
                "confidence": 0.99902344
              },
              {
                "word": "things",
                "start": 37.722485,
                "end": 37.881702,
                "confidence": 0.99902344
              },
              {
                "word": "no",
                "start": 38.12053,
                "end": 38.200138,
                "confidence": 0.94628906
              },
              {
                "word": "we're",
                "start": 38.359356,
                "end": 38.518574,
                "confidence": 0.91845703
              },
              {
                "word": "asking",
                "start": 38.518574,
                "end": 38.7574,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 38.7574,
                "end": 38.91662,
                "confidence": 0.8588867
              },
              {
                "word": "to",
                "start": 38.91662,
                "end": 39.155445,
                "confidence": 0.9975586
              },
              {
                "word": "do",
                "start": 39.155445,
                "end": 39.39427,
                "confidence": 0.9970703
              },
              {
                "word": "things",
                "start": 39.39427,
                "end": 39.47388,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 39.712708,
                "end": 40.110752,
                "confidence": 0.9511719
              },
              {
                "word": "execute",
                "start": 40.110752,
                "end": 40.26997,
                "confidence": 0.9946289
              },
              {
                "word": "yeah",
                "start": 40.429188,
                "end": 40.508797,
                "confidence": 0.91503906
              },
              {
                "word": "that",
                "start": 40.747623,
                "end": 40.90684,
                "confidence": 0.99072266
              },
              {
                "word": "is",
                "start": 40.90684,
                "end": 40.98645,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 40.98645,
                "end": 41.145668,
                "confidence": 0.9916992
              },
              {
                "word": "fundamental",
                "start": 41.145668,
                "end": 41.645668,
                "confidence": 0.9970703
              },
              {
                "word": "shift",
                "start": 41.70293,
                "end": 41.941757,
                "confidence": 0.9067383
              },
              {
                "word": "that",
                "start": 41.941757,
                "end": 42.315,
                "confidence": 0.640625
              },
              {
                "word": "chat",
                "start": 42.515,
                "end": 42.675,
                "confidence": 0.98535156
              },
              {
                "word": "box",
                "start": 42.675,
                "end": 42.835,
                "confidence": 0.4987793
              },
              {
                "word": "is",
                "start": 42.835,
                "end": 42.995,
                "confidence": 0.80078125
              },
              {
                "word": "kinda",
                "start": 42.995,
                "end": 43.315,
                "confidence": 0.6713867
              },
              {
                "word": "fading",
                "start": 43.315,
                "end": 43.635,
                "confidence": 0.9995117
              },
              {
                "word": "away",
                "start": 43.635,
                "end": 43.795,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 44.114998,
                "end": 44.355,
                "confidence": 0.99902344
              },
              {
                "word": "this",
                "start": 44.355,
                "end": 44.515,
                "confidence": 0.99560547
              },
              {
                "word": "this",
                "start": 44.995,
                "end": 45.495,
                "confidence": 0.99902344
              },
              {
                "word": "workshop",
                "start": 45.635,
                "end": 45.875,
                "confidence": 0.9975586
              },
              {
                "word": "is",
                "start": 45.875,
                "end": 46.035,
                "confidence": 0.9975586
              },
              {
                "word": "opening",
                "start": 46.035,
                "end": 46.274998,
                "confidence": 0.9995117
              },
              {
                "word": "up",
                "start": 46.274998,
                "end": 46.355,
                "confidence": 0.73828125
              },
              {
                "word": "a",
                "start": 46.594997,
                "end": 46.835,
                "confidence": 0.81152344
              },
              {
                "word": "workshop",
                "start": 46.835,
                "end": 46.995,
                "confidence": 0.9946289
              },
              {
                "word": "i",
                "start": 47.155,
                "end": 47.235,
                "confidence": 0.9980469
              },
              {
                "word": "like",
                "start": 47.235,
                "end": 47.394997,
                "confidence": 0.9921875
              },
              {
                "word": "that",
                "start": 47.394997,
                "end": 47.475,
                "confidence": 0.97802734
              },
              {
                "word": "yeah",
                "start": 47.635,
                "end": 47.715,
                "confidence": 0.9345703
              },
              {
                "word": "we're",
                "start": 47.954998,
                "end": 48.035,
                "confidence": 0.99560547
              },
              {
                "word": "seeing",
                "start": 48.035,
                "end": 48.274998,
                "confidence": 0.99902344
              },
              {
                "word": "tools",
                "start": 48.274998,
                "end": 48.594997,
                "confidence": 0.9995117
              },
              {
                "word": "that",
                "start": 48.594997,
                "end": 48.754997,
                "confidence": 0.99853516
              },
              {
                "word": "don't",
                "start": 48.754997,
                "end": 48.914997,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 48.914997,
                "end": 49.155,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 49.315,
                "end": 49.394997,
                "confidence": 0.9921875
              },
              {
                "word": "know",
                "start": 49.394997,
                "end": 49.475,
                "confidence": 0.9941406
              },
              {
                "word": "describe",
                "start": 49.795,
                "end": 50.035,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 50.035,
                "end": 50.195,
                "confidence": 0.99658203
              },
              {
                "word": "marketing",
                "start": 50.195,
                "end": 50.515,
                "confidence": 0.9995117
              },
              {
                "word": "campaign",
                "start": 50.515,
                "end": 50.754997,
                "confidence": 1
              },
              {
                "word": "they",
                "start": 50.914997,
                "end": 51.155,
                "confidence": 0.99902344
              },
              {
                "word": "actually",
                "start": 51.155,
                "end": 51.475,
                "confidence": 0.9995117
              },
              {
                "word": "run",
                "start": 51.475,
                "end": 51.635,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 51.635,
                "end": 51.795,
                "confidence": 0.9975586
              },
              {
                "word": "they",
                "start": 52.034996,
                "end": 52.274998,
                "confidence": 0.9980469
              },
              {
                "word": "don't",
                "start": 52.274998,
                "end": 52.434998,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 52.434998,
                "end": 52.934998,
                "confidence": 0.99902344
              },
              {
                "word": "talk",
                "start": 53.074997,
                "end": 53.315,
                "confidence": 0.9995117
              },
              {
                "word": "about",
                "start": 53.315,
                "end": 53.394997,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 53.394997,
                "end": 53.635,
                "confidence": 0.9941406
              },
              {
                "word": "movie",
                "start": 53.635,
                "end": 53.875,
                "confidence": 0.99902344
              },
              {
                "word": "scene",
                "start": 53.875,
                "end": 53.954998,
                "confidence": 0.98339844
              },
              {
                "word": "they",
                "start": 54.114998,
                "end": 54.274998,
                "confidence": 0.9921875
              },
              {
                "word": "go",
                "start": 54.274998,
                "end": 54.515,
                "confidence": 0.99072266
              },
              {
                "word": "film",
                "start": 54.515,
                "end": 54.675,
                "confidence": 0.9741211
              },
              {
                "word": "it",
                "start": 54.675,
                "end": 54.754997,
                "confidence": 0.93408203
              },
              {
                "word": "that",
                "start": 55.169598,
                "end": 55.48853,
                "confidence": 0.9169922
              },
              {
                "word": "huge",
                "start": 55.48853,
                "end": 55.98853,
                "confidence": 1
              },
              {
                "word": "scary",
                "start": 56.206123,
                "end": 56.684517,
                "confidence": 0.99853516
              },
              {
                "word": "gap",
                "start": 56.684517,
                "end": 57.184517,
                "confidence": 1
              },
              {
                "word": "between",
                "start": 57.242645,
                "end": 57.40211,
                "confidence": 1
              },
              {
                "word": "i",
                "start": 57.721043,
                "end": 57.88051,
                "confidence": 1
              },
              {
                "word": "have",
                "start": 57.88051,
                "end": 57.96024,
                "confidence": 0.9995117
              },
              {
                "word": "an",
                "start": 57.96024,
                "end": 58.27917,
                "confidence": 0.9995117
              },
              {
                "word": "idea",
                "start": 58.27917,
                "end": 58.438637,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 58.598103,
                "end": 58.677834,
                "confidence": 0.9995117
              },
              {
                "word": "i",
                "start": 58.757565,
                "end": 58.996765,
                "confidence": 0.99902344
              },
              {
                "word": "actually",
                "start": 58.996765,
                "end": 59.235962,
                "confidence": 1
              },
              {
                "word": "have",
                "start": 59.235962,
                "end": 59.315693,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 59.315693,
                "end": 59.47516,
                "confidence": 0.9980469
              },
              {
                "word": "product",
                "start": 59.47516,
                "end": 59.87382,
                "confidence": 0.9995117
              },
              {
                "word": "that",
                "start": 60.192753,
                "end": 60.43195,
                "confidence": 0.8076172
              },
              {
                "word": "gap",
                "start": 60.43195,
                "end": 60.67115,
                "confidence": 0.99609375
              },
              {
                "word": "that's",
                "start": 60.67115,
                "end": 60.910347,
                "confidence": 0.99609375
              },
              {
                "word": "usually",
                "start": 60.910347,
                "end": 61.22928,
                "confidence": 1
              },
              {
                "word": "filled",
                "start": 61.22928,
                "end": 61.548206,
                "confidence": 0.99902344
              },
              {
                "word": "with",
                "start": 61.548206,
                "end": 62.026604,
                "confidence": 0.99853516
              },
              {
                "word": "months",
                "start": 62.026604,
                "end": 62.18607,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 62.18607,
                "end": 62.425266,
                "confidence": 0.9995117
              },
              {
                "word": "coding",
                "start": 62.425266,
                "end": 62.664463,
                "confidence": 0.90234375
              },
              {
                "word": "hiring",
                "start": 62.903664,
                "end": 63.22259,
                "confidence": 0.99902344
              },
              {
                "word": "burning",
                "start": 63.541523,
                "end": 63.78072,
                "confidence": 0.9970703
              },
              {
                "word": "through",
                "start": 63.78072,
                "end": 64.01992,
                "confidence": 0.9916992
              },
              {
                "word": "cash",
                "start": 64.01992,
                "end": 64.25912,
                "confidence": 0.9638672
              },
              {
                "word": "and",
                "start": 64.817245,
                "end": 65.21591,
                "confidence": 0.97802734
              },
              {
                "word": "google",
                "start": 65.375374,
                "end": 65.534836,
                "confidence": 0.99902344
              },
              {
                "word": "labs",
                "start": 65.694305,
                "end": 65.9335,
                "confidence": 0.9428711
              },
              {
                "word": "just",
                "start": 65.9335,
                "end": 66.25243,
                "confidence": 0.99902344
              },
              {
                "word": "dropped",
                "start": 66.25243,
                "end": 66.49163,
                "confidence": 0.9165039
              },
              {
                "word": "this",
                "start": 66.49163,
                "end": 66.73083,
                "confidence": 0.9970703
              },
              {
                "word": "whole",
                "start": 66.73083,
                "end": 67.04976,
                "confidence": 1
              },
              {
                "word": "suite",
                "start": 67.04976,
                "end": 67.288956,
                "confidence": 0.97998047
              },
              {
                "word": "of",
                "start": 67.288956,
                "end": 67.52815,
                "confidence": 0.9995117
              },
              {
                "word": "tools",
                "start": 67.52815,
                "end": 68.02815,
                "confidence": 0.99902344
              },
              {
                "word": "designed",
                "start": 68.40521,
                "end": 68.724144,
                "confidence": 0.9892578
              },
              {
                "word": "to",
                "start": 68.724144,
                "end": 68.883606,
                "confidence": 0.99121094
              },
              {
                "word": "well",
                "start": 69.1228,
                "end": 69.20254,
                "confidence": 0.9873047
              },
              {
                "word": "to",
                "start": 69.441734,
                "end": 69.601204,
                "confidence": 0.9946289
              },
              {
                "word": "close",
                "start": 69.601204,
                "end": 69.8404,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 69.8404,
                "end": 69.975,
                "confidence": 0.88964844
              },
              {
                "word": "that",
                "start": 70.014824,
                "end": 70.17411,
                "confidence": 0.6855469
              },
              {
                "word": "gap",
                "start": 70.17411,
                "end": 70.3334,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 70.572334,
                "end": 70.73162,
                "confidence": 0.9980469
              },
              {
                "word": "they",
                "start": 70.73162,
                "end": 70.890915,
                "confidence": 0.9995117
              },
              {
                "word": "did",
                "start": 70.890915,
                "end": 70.97056,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 70.97056,
                "end": 71.129845,
                "confidence": 0.99902344
              },
              {
                "word": "pretty",
                "start": 71.129845,
                "end": 71.36878,
                "confidence": 0.9995117
              },
              {
                "word": "quietly",
                "start": 71.36878,
                "end": 71.84665,
                "confidence": 0.92089844
              },
              {
                "word": "actually",
                "start": 71.84665,
                "end": 72.005936,
                "confidence": 0.99902344
              },
              {
                "word": "very",
                "start": 72.32452,
                "end": 72.56345,
                "confidence": 0.9995117
              },
              {
                "word": "quietly",
                "start": 72.56345,
                "end": 72.80238,
                "confidence": 0.9707031
              },
              {
                "word": "but",
                "start": 72.96167,
                "end": 73.120964,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 73.120964,
                "end": 73.59883,
                "confidence": 0.99902344
              },
              {
                "word": "implications",
                "start": 73.59883,
                "end": 73.91741,
                "confidence": 0.99853516
              },
              {
                "word": "are",
                "start": 73.91741,
                "end": 74.41741,
                "confidence": 0.99902344
              },
              {
                "word": "they're",
                "start": 74.47492,
                "end": 74.71386,
                "confidence": 0.98876953
              },
              {
                "word": "loud",
                "start": 74.71386,
                "end": 74.873146,
                "confidence": 0.46899414
              },
              {
                "word": "we're",
                "start": 75.35101,
                "end": 75.5103,
                "confidence": 0.98828125
              },
              {
                "word": "looking",
                "start": 75.5103,
                "end": 75.66959,
                "confidence": 0.9995117
              },
              {
                "word": "at",
                "start": 75.66959,
                "end": 75.74924,
                "confidence": 0.8359375
              },
              {
                "word": "a",
                "start": 75.74924,
                "end": 75.82888,
                "confidence": 0.76220703
              },
              {
                "word": "whole",
                "start": 75.82888,
                "end": 75.988174,
                "confidence": 0.9975586
              },
              {
                "word": "new",
                "start": 75.988174,
                "end": 76.46604,
                "confidence": 0.9995117
              },
              {
                "word": "ecosystem",
                "start": 76.46604,
                "end": 76.784615,
                "confidence": 0.99853516
              },
              {
                "word": "here",
                "start": 76.784615,
                "end": 76.864265,
                "confidence": 0.99902344
              },
              {
                "word": "you've",
                "start": 77.02355,
                "end": 77.18284,
                "confidence": 0.98339844
              },
              {
                "word": "got",
                "start": 77.18284,
                "end": 77.68284,
                "confidence": 0.99853516
              },
              {
                "word": "stitch",
                "start": 77.74036,
                "end": 77.97929,
                "confidence": 0.9350586
              },
              {
                "word": "for",
                "start": 77.97929,
                "end": 78.13858,
                "confidence": 0.97265625
              },
              {
                "word": "coding",
                "start": 78.13858,
                "end": 78.37751,
                "confidence": 0.8652344
              },
              {
                "word": "pamela",
                "start": 78.61645,
                "end": 79.01466,
                "confidence": 0.34570312
              },
              {
                "word": "for",
                "start": 79.01466,
                "end": 79.17396,
                "confidence": 0.99609375
              },
              {
                "word": "branding",
                "start": 79.17396,
                "end": 79.49254,
                "confidence": 0.99609375
              },
              {
                "word": "whiskey",
                "start": 79.81111,
                "end": 79.970406,
                "confidence": 0.39013672
              },
              {
                "word": "and",
                "start": 79.970406,
                "end": 80.12969,
                "confidence": 0.48095703
              },
              {
                "word": "mixed",
                "start": 80.12969,
                "end": 80.36863,
                "confidence": 0.56884766
              },
              {
                "word": "board",
                "start": 80.36863,
                "end": 80.68721,
                "confidence": 0.60253906
              },
              {
                "word": "for",
                "start": 80.68721,
                "end": 80.92614,
                "confidence": 0.99902344
              },
              {
                "word": "brainstorming",
                "start": 80.92614,
                "end": 81.42614,
                "confidence": 0.9785156
              },
              {
                "word": "and",
                "start": 81.72259,
                "end": 81.881874,
                "confidence": 0.9863281
              },
              {
                "word": "then",
                "start": 81.881874,
                "end": 82.04117,
                "confidence": 0.99316406
              },
              {
                "word": "the",
                "start": 82.04117,
                "end": 82.200455,
                "confidence": 0.9980469
              },
              {
                "word": "big",
                "start": 82.200455,
                "end": 82.2801,
                "confidence": 0.99902344
              },
              {
                "word": "ones",
                "start": 82.2801,
                "end": 82.67832,
                "confidence": 0.89697266
              },
              {
                "word": "nano",
                "start": 82.67832,
                "end": 83.076546,
                "confidence": 0.9785156
              },
              {
                "word": "banana",
                "start": 83.076546,
                "end": 83.39513,
                "confidence": 0.9951172
              },
              {
                "word": "and",
                "start": 83.7137,
                "end": 84.03228,
                "confidence": 0.9970703
              },
              {
                "word": "yes",
                "start": 84.11192,
                "end": 84.27122,
                "confidence": 0.9970703
              },
              {
                "word": "we",
                "start": 84.430504,
                "end": 84.5898,
                "confidence": 0.99121094
              },
              {
                "word": "have",
                "start": 84.5898,
                "end": 84.66944,
                "confidence": 0.64208984
              },
              {
                "word": "to",
                "start": 84.66944,
                "end": 84.82873,
                "confidence": 0.99609375
              },
              {
                "word": "talk",
                "start": 84.82873,
                "end": 84.98802,
                "confidence": 0.99658203
              },
              {
                "word": "about",
                "start": 84.98802,
                "end": 85.14731,
                "confidence": 0.99658203
              },
              {
                "word": "that",
                "start": 85.14731,
                "end": 85.38624,
                "confidence": 0.9926758
              },
              {
                "word": "name",
                "start": 85.38624,
                "end": 85.46589,
                "confidence": 0.99609375
              },
              {
                "word": "and",
                "start": 85.959175,
                "end": 86.19847,
                "confidence": 0.93896484
              },
              {
                "word": "v",
                "start": 86.19847,
                "end": 86.51753,
                "confidence": 0.9819336
              },
              {
                "word": "three",
                "start": 86.51753,
                "end": 86.75682,
                "confidence": 0.96435547
              },
              {
                "word": "for",
                "start": 86.75682,
                "end": 86.91635,
                "confidence": 0.9941406
              },
              {
                "word": "video",
                "start": 86.91635,
                "end": 87.15565,
                "confidence": 0.99560547
              },
              {
                "word": "okay",
                "start": 87.554474,
                "end": 87.63424,
                "confidence": 0.9980469
              },
              {
                "word": "that",
                "start": 87.95329,
                "end": 88.272354,
                "confidence": 0.9897461
              },
              {
                "word": "is",
                "start": 88.272354,
                "end": 88.51165,
                "confidence": 0.9536133
              },
              {
                "word": "a",
                "start": 88.51165,
                "end": 88.75094,
                "confidence": 0.97265625
              },
              {
                "word": "lot",
                "start": 88.75094,
                "end": 88.990234,
                "confidence": 0.9897461
              },
              {
                "word": "of",
                "start": 88.990234,
                "end": 89.22953,
                "confidence": 0.9946289
              },
              {
                "word": "ground",
                "start": 89.22953,
                "end": 89.54859,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 89.54859,
                "end": 89.708115,
                "confidence": 0.9941406
              },
              {
                "word": "cover",
                "start": 89.708115,
                "end": 89.94741,
                "confidence": 0.9824219
              },
              {
                "word": "so",
                "start": 90.426,
                "end": 90.90459,
                "confidence": 0.99902344
              },
              {
                "word": "for",
                "start": 90.90459,
                "end": 91.38318,
                "confidence": 0.99902344
              },
              {
                "word": "everyone",
                "start": 91.38318,
                "end": 91.54271,
                "confidence": 0.99853516
              },
              {
                "word": "listening",
                "start": 91.54271,
                "end": 91.86176,
                "confidence": 1
              },
              {
                "word": "our",
                "start": 92.10106,
                "end": 92.340355,
                "confidence": 0.99902344
              },
              {
                "word": "mission",
                "start": 92.340355,
                "end": 92.57965,
                "confidence": 1
              },
              {
                "word": "today",
                "start": 92.57965,
                "end": 92.898705,
                "confidence": 0.9995117
              },
              {
                "word": "isn't",
                "start": 92.898705,
                "end": 93.217766,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 93.217766,
                "end": 93.45706,
                "confidence": 0.9980469
              },
              {
                "word": "to",
                "start": 93.45706,
                "end": 93.69635,
                "confidence": 0.9819336
              },
              {
                "word": "read",
                "start": 93.69635,
                "end": 93.85588,
                "confidence": 0.9399414
              },
              {
                "word": "off",
                "start": 93.85588,
                "end": 94.01541,
                "confidence": 0.98779297
              },
              {
                "word": "a",
                "start": 94.01541,
                "end": 94.41424,
                "confidence": 0.9609375
              },
              {
                "word": "feature",
                "start": 94.41424,
                "end": 94.57376,
                "confidence": 0.99902344
              },
              {
                "word": "list",
                "start": 94.57376,
                "end": 94.81306,
                "confidence": 0.18835449
              },
              {
                "word": "we",
                "start": 95.371414,
                "end": 95.530945,
                "confidence": 0.99902344
              },
              {
                "word": "wanna",
                "start": 95.530945,
                "end": 95.85,
                "confidence": 0.9350586
              },
              {
                "word": "really",
                "start": 95.85,
                "end": 96.16906,
                "confidence": 0.99853516
              },
              {
                "word": "figure",
                "start": 96.16906,
                "end": 96.408356,
                "confidence": 0.9980469
              },
              {
                "word": "out",
                "start": 96.408356,
                "end": 96.72741,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 96.807175,
                "end": 96.966705,
                "confidence": 0.9863281
              },
              {
                "word": "know",
                "start": 96.966705,
                "end": 97.04647,
                "confidence": 0.99072266
              },
              {
                "word": "can",
                "start": 97.28577,
                "end": 97.525055,
                "confidence": 0.99560547
              },
              {
                "word": "these",
                "start": 97.525055,
                "end": 97.76435,
                "confidence": 0.9951172
              },
              {
                "word": "tools",
                "start": 97.76435,
                "end": 98.16318,
                "confidence": 0.99658203
              },
              {
                "word": "actually",
                "start": 98.16318,
                "end": 98.64176,
                "confidence": 0.9970703
              },
              {
                "word": "replace",
                "start": 98.64176,
                "end": 98.96082,
                "confidence": 0.99316406
              },
              {
                "word": "a",
                "start": 98.96082,
                "end": 99.255,
                "confidence": 0.91015625
              },
              {
                "word": "team",
                "start": 99.45416,
                "end": 99.69316,
                "confidence": 0.99658203
              },
              {
                "word": "can",
                "start": 99.69316,
                "end": 99.8525,
                "confidence": 0.9995117
              },
              {
                "word": "they",
                "start": 99.8525,
                "end": 100.0915,
                "confidence": 0.99902344
              },
              {
                "word": "replace",
                "start": 100.0915,
                "end": 100.3305,
                "confidence": 0.9951172
              },
              {
                "word": "a",
                "start": 100.3305,
                "end": 100.48983,
                "confidence": 0.9951172
              },
              {
                "word": "creative",
                "start": 100.48983,
                "end": 100.98983,
                "confidence": 1
              },
              {
                "word": "agency",
                "start": 101.2865,
                "end": 101.366165,
                "confidence": 0.9995117
              },
              {
                "word": "or",
                "start": 101.68483,
                "end": 101.84416,
                "confidence": 0.99902344
              },
              {
                "word": "are",
                "start": 101.84416,
                "end": 102.08316,
                "confidence": 0.9980469
              },
              {
                "word": "they",
                "start": 102.08316,
                "end": 102.2425,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 102.2425,
                "end": 102.64083,
                "confidence": 0.9995117
              },
              {
                "word": "very",
                "start": 102.64083,
                "end": 102.87983,
                "confidence": 0.9980469
              },
              {
                "word": "very",
                "start": 102.959496,
                "end": 103.198494,
                "confidence": 0.99902344
              },
              {
                "word": "fancy",
                "start": 103.198494,
                "end": 103.6765,
                "confidence": 1
              },
              {
                "word": "toys",
                "start": 103.6765,
                "end": 103.9155,
                "confidence": 0.99560547
              },
              {
                "word": "that",
                "start": 103.9155,
                "end": 104.07483,
                "confidence": 0.99902344
              },
              {
                "word": "fall",
                "start": 104.07483,
                "end": 104.39349,
                "confidence": 0.9951172
              },
              {
                "word": "apart",
                "start": 104.39349,
                "end": 104.55283,
                "confidence": 1
              },
              {
                "word": "when",
                "start": 104.55283,
                "end": 104.712166,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 104.712166,
                "end": 104.79183,
                "confidence": 0.9975586
              },
              {
                "word": "try",
                "start": 104.79183,
                "end": 104.951164,
                "confidence": 0.9946289
              },
              {
                "word": "to",
                "start": 104.951164,
                "end": 105.1105,
                "confidence": 0.99853516
              },
              {
                "word": "do",
                "start": 105.1105,
                "end": 105.26983,
                "confidence": 0.9995117
              },
              {
                "word": "real",
                "start": 105.26983,
                "end": 105.50883,
                "confidence": 1
              },
              {
                "word": "work",
                "start": 105.50883,
                "end": 105.5885,
                "confidence": 0.9946289
              },
              {
                "word": "exactly",
                "start": 106.0665,
                "end": 106.46483,
                "confidence": 1
              },
              {
                "word": "so",
                "start": 106.62416,
                "end": 106.7835,
                "confidence": 0.99902344
              },
              {
                "word": "where",
                "start": 106.7835,
                "end": 106.94283,
                "confidence": 0.9975586
              },
              {
                "word": "do",
                "start": 106.94283,
                "end": 107.0225,
                "confidence": 0.9970703
              },
              {
                "word": "we",
                "start": 107.0225,
                "end": 107.2615,
                "confidence": 0.99658203
              },
              {
                "word": "start",
                "start": 107.2615,
                "end": 107.42083,
                "confidence": 0.9995117
              },
              {
                "word": "well",
                "start": 107.739494,
                "end": 107.81917,
                "confidence": 0.9746094
              },
              {
                "word": "the",
                "start": 107.898834,
                "end": 108.05817,
                "confidence": 0.9975586
              },
              {
                "word": "first",
                "start": 108.05817,
                "end": 108.37683,
                "confidence": 1
              },
              {
                "word": "bottleneck",
                "start": 108.37683,
                "end": 108.85483,
                "confidence": 0.9980469
              },
              {
                "word": "for",
                "start": 108.85483,
                "end": 109.093834,
                "confidence": 0.9995117
              },
              {
                "word": "any",
                "start": 109.093834,
                "end": 109.57183,
                "confidence": 0.9980469
              },
              {
                "word": "idea",
                "start": 109.57183,
                "end": 109.81083,
                "confidence": 0.9995117
              },
              {
                "word": "is",
                "start": 109.81083,
                "end": 110.04983,
                "confidence": 0.9995117
              },
              {
                "word": "usually",
                "start": 110.04983,
                "end": 110.28883,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 110.28883,
                "end": 110.687164,
                "confidence": 0.99902344
              },
              {
                "word": "interface",
                "start": 110.687164,
                "end": 110.76683,
                "confidence": 0.9995117
              },
              {
                "word": "right",
                "start": 110.92616,
                "end": 111.00583,
                "confidence": 0.98535156
              },
              {
                "word": "you",
                "start": 111.16516,
                "end": 111.32449,
                "confidence": 0.99658203
              },
              {
                "word": "have",
                "start": 111.32449,
                "end": 111.40417,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 111.40417,
                "end": 111.5635,
                "confidence": 0.99609375
              },
              {
                "word": "sketch",
                "start": 111.5635,
                "end": 111.72283,
                "confidence": 0.9995117
              },
              {
                "word": "on",
                "start": 111.72283,
                "end": 111.8025,
                "confidence": 0.9897461
              },
              {
                "word": "an",
                "start": 111.8025,
                "end": 111.96183,
                "confidence": 0.8256836
              },
              {
                "word": "napkin",
                "start": 111.96183,
                "end": 112.12116,
                "confidence": 0.99609375
              },
              {
                "word": "and",
                "start": 112.12116,
                "end": 112.20083,
                "confidence": 0.39868164
              },
              {
                "word": "but",
                "start": 112.280495,
                "end": 112.5195,
                "confidence": 0.96240234
              },
              {
                "word": "you",
                "start": 112.5195,
                "end": 112.59917,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 112.59917,
                "end": 112.7585,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 112.7585,
                "end": 112.9975,
                "confidence": 0.9682617
              },
              {
                "word": "actual",
                "start": 112.9975,
                "end": 113.31616,
                "confidence": 0.82714844
              },
              {
                "word": "app",
                "start": 113.31616,
                "end": 113.39583,
                "confidence": 0.99609375
              },
              {
                "word": "and",
                "start": 113.969505,
                "end": 114.12928,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 114.12928,
                "end": 114.28906,
                "confidence": 0.9995117
              },
              {
                "word": "brings",
                "start": 114.28906,
                "end": 114.44884,
                "confidence": 0.9995117
              },
              {
                "word": "us",
                "start": 114.44884,
                "end": 114.92818,
                "confidence": 0.9926758
              },
              {
                "word": "straight",
                "start": 114.92818,
                "end": 115.08796,
                "confidence": 0.99853516
              },
              {
                "word": "to",
                "start": 115.08796,
                "end": 115.16785,
                "confidence": 0.99121094
              },
              {
                "word": "google",
                "start": 115.32762,
                "end": 115.64719,
                "confidence": 0.98583984
              },
              {
                "word": "stitch",
                "start": 115.64719,
                "end": 115.88685,
                "confidence": 0.9746094
              },
              {
                "word": "alright",
                "start": 116.36619,
                "end": 116.446075,
                "confidence": 0.9838867
              },
              {
                "word": "let's",
                "start": 116.685745,
                "end": 116.84553,
                "confidence": 0.99658203
              },
              {
                "word": "un",
                "start": 116.84553,
                "end": 117.0852,
                "confidence": 0.5908203
              },
              {
                "word": "unpack",
                "start": 117.0852,
                "end": 117.32486,
                "confidence": 0.98828125
              },
              {
                "word": "stitch",
                "start": 117.32486,
                "end": 117.48464,
                "confidence": 0.99121094
              },
              {
                "word": "it's",
                "start": 117.72431,
                "end": 117.96398,
                "confidence": 0.9970703
              },
              {
                "word": "running",
                "start": 117.96398,
                "end": 118.20364,
                "confidence": 0.9995117
              },
              {
                "word": "on",
                "start": 118.20364,
                "end": 118.36343,
                "confidence": 0.99902344
              },
              {
                "word": "gemini",
                "start": 118.44331,
                "end": 118.92265,
                "confidence": 0.99902344
              },
              {
                "word": "two",
                "start": 118.92265,
                "end": 119.08243,
                "confidence": 0.9946289
              },
              {
                "word": "point",
                "start": 119.08243,
                "end": 119.24221,
                "confidence": 0.9980469
              },
              {
                "word": "five",
                "start": 119.24221,
                "end": 119.48188,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 119.641655,
                "end": 119.72155,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 119.72155,
                "end": 119.96121,
                "confidence": 0.99658203
              },
              {
                "word": "promise",
                "start": 119.96121,
                "end": 120.46121,
                "confidence": 0.99658203
              },
              {
                "word": "is",
                "start": 120.52044,
                "end": 121.02044,
                "confidence": 0.99902344
              },
              {
                "word": "huge",
                "start": 121.15956,
                "end": 121.319336,
                "confidence": 1
              },
              {
                "word": "turn",
                "start": 121.559006,
                "end": 121.71878,
                "confidence": 0.94677734
              },
              {
                "word": "a",
                "start": 121.71878,
                "end": 121.87856,
                "confidence": 0.93310547
              },
              {
                "word": "drawing",
                "start": 121.87856,
                "end": 122.3579,
                "confidence": 0.99853516
              },
              {
                "word": "into",
                "start": 122.3579,
                "end": 122.59757,
                "confidence": 0.99853516
              },
              {
                "word": "working",
                "start": 122.59757,
                "end": 122.99702,
                "confidence": 0.99609375
              },
              {
                "word": "code",
                "start": 122.99702,
                "end": 123.316574,
                "confidence": 0.9863281
              },
              {
                "word": "but",
                "start": 123.8758,
                "end": 124.11547,
                "confidence": 0.9995117
              },
              {
                "word": "i",
                "start": 124.19536,
                "end": 124.35514,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 124.35514,
                "end": 124.43503,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 124.43503,
                "end": 124.514915,
                "confidence": 0.99853516
              },
              {
                "word": "be",
                "start": 124.514915,
                "end": 124.5948,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 124.5948,
                "end": 124.6747,
                "confidence": 0.99902344
              },
              {
                "word": "little",
                "start": 124.6747,
                "end": 124.994255,
                "confidence": 0.9995117
              },
              {
                "word": "skeptical",
                "start": 124.994255,
                "end": 125.3937,
                "confidence": 1
              },
              {
                "word": "here",
                "start": 125.3937,
                "end": 125.47359,
                "confidence": 0.9980469
              },
              {
                "word": "we've",
                "start": 125.79315,
                "end": 125.95293,
                "confidence": 0.9941406
              },
              {
                "word": "seen",
                "start": 125.95293,
                "end": 126.1926,
                "confidence": 0.9995117
              },
              {
                "word": "text",
                "start": 126.1926,
                "end": 126.35238,
                "confidence": 0.99072266
              },
              {
                "word": "to",
                "start": 126.35238,
                "end": 126.671936,
                "confidence": 0.9824219
              },
              {
                "word": "website",
                "start": 126.671936,
                "end": 126.99149,
                "confidence": 0.99365234
              },
              {
                "word": "tools",
                "start": 126.99149,
                "end": 127.31105,
                "confidence": 0.9995117
              },
              {
                "word": "for",
                "start": 127.31105,
                "end": 127.710495,
                "confidence": 0.99902344
              },
              {
                "word": "years",
                "start": 127.710495,
                "end": 127.950165,
                "confidence": 0.99853516
              },
              {
                "word": "so",
                "start": 128.28456,
                "end": 128.4442,
                "confidence": 0.3942871
              },
              {
                "word": "yeah",
                "start": 128.4442,
                "end": 128.52402,
                "confidence": 0.7480469
              },
              {
                "word": "and",
                "start": 128.76349,
                "end": 128.92313,
                "confidence": 0.99902344
              },
              {
                "word": "they",
                "start": 128.92313,
                "end": 129.1626,
                "confidence": 0.99853516
              },
              {
                "word": "usually",
                "start": 129.1626,
                "end": 129.48189,
                "confidence": 1
              },
              {
                "word": "just",
                "start": 129.48189,
                "end": 129.80116,
                "confidence": 0.99902344
              },
              {
                "word": "spit",
                "start": 129.80116,
                "end": 129.96082,
                "confidence": 0.9980469
              },
              {
                "word": "out",
                "start": 129.96082,
                "end": 130.35992,
                "confidence": 0.99316406
              },
              {
                "word": "this",
                "start": 130.35992,
                "end": 130.83885,
                "confidence": 0.9975586
              },
              {
                "word": "generic",
                "start": 130.83885,
                "end": 131.33885,
                "confidence": 0.9995117
              },
              {
                "word": "kind",
                "start": 131.55724,
                "end": 131.63705,
                "confidence": 0.9941406
              },
              {
                "word": "of",
                "start": 131.63705,
                "end": 131.95634,
                "confidence": 0.9951172
              },
              {
                "word": "ugly",
                "start": 131.95634,
                "end": 132.45634,
                "confidence": 0.9995117
              },
              {
                "word": "template",
                "start": 132.75456,
                "end": 133.15367,
                "confidence": 0.99609375
              },
              {
                "word": "garbage",
                "start": 133.15367,
                "end": 133.65367,
                "confidence": 1
              },
              {
                "word": "that",
                "start": 133.71242,
                "end": 134.03171,
                "confidence": 1
              },
              {
                "word": "breaks",
                "start": 134.03171,
                "end": 134.27116,
                "confidence": 0.99902344
              },
              {
                "word": "if",
                "start": 134.27116,
                "end": 134.43082,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 134.43082,
                "end": 134.67027,
                "confidence": 0.99902344
              },
              {
                "word": "touch",
                "start": 134.67027,
                "end": 134.82991,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 134.82991,
                "end": 134.90974,
                "confidence": 0.9995117
              },
              {
                "word": "right",
                "start": 135.22902,
                "end": 135.38867,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 135.70795,
                "end": 136.02724,
                "confidence": 0.9951172
              },
              {
                "word": "stitch",
                "start": 136.02724,
                "end": 136.18689,
                "confidence": 0.9951172
              },
              {
                "word": "is",
                "start": 136.18689,
                "end": 136.42635,
                "confidence": 0.9003906
              },
              {
                "word": "different",
                "start": 136.42635,
                "end": 136.74564,
                "confidence": 1
              },
              {
                "word": "but",
                "start": 136.90527,
                "end": 137.14474,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 137.14474,
                "end": 137.30438,
                "confidence": 0.9995117
              },
              {
                "word": "have",
                "start": 137.30438,
                "end": 137.46402,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 137.46402,
                "end": 137.78331,
                "confidence": 0.9980469
              },
              {
                "word": "understand",
                "start": 137.78331,
                "end": 138.18242,
                "confidence": 1
              },
              {
                "word": "how",
                "start": 138.18242,
                "end": 138.34206,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 138.34206,
                "end": 138.58153,
                "confidence": 0.9980469
              },
              {
                "word": "different",
                "start": 138.58153,
                "end": 138.82098,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 138.82098,
                "end": 138.90082,
                "confidence": 0.99853516
              },
              {
                "word": "get",
                "start": 138.90082,
                "end": 138.98064,
                "confidence": 0.99902344
              },
              {
                "word": "any",
                "start": 138.98064,
                "end": 139.29991,
                "confidence": 0.9916992
              },
              {
                "word": "value",
                "start": 139.29991,
                "end": 139.6192,
                "confidence": 1
              },
              {
                "word": "from",
                "start": 139.6192,
                "end": 139.69902,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 139.69902,
                "end": 139.85867,
                "confidence": 0.99609375
              },
              {
                "word": "it's",
                "start": 140.01831,
                "end": 140.17795,
                "confidence": 0.9838867
              },
              {
                "word": "not",
                "start": 140.17795,
                "end": 140.25778,
                "confidence": 1
              },
              {
                "word": "a",
                "start": 140.25778,
                "end": 140.49724,
                "confidence": 0.9975586
              },
              {
                "word": "magic",
                "start": 140.49724,
                "end": 140.81653,
                "confidence": 0.9980469
              },
              {
                "word": "wand",
                "start": 140.81653,
                "end": 141.05598,
                "confidence": 1
              },
              {
                "word": "it's",
                "start": 141.70999,
                "end": 141.95,
                "confidence": 0.9970703
              },
              {
                "word": "really",
                "start": 141.95,
                "end": 142.43,
                "confidence": 1
              },
              {
                "word": "a",
                "start": 142.43,
                "end": 142.83,
                "confidence": 0.35180664
              },
              {
                "word": "a",
                "start": 142.83,
                "end": 143.06999,
                "confidence": 0.99902344
              },
              {
                "word": "tool",
                "start": 143.06999,
                "end": 143.39,
                "confidence": 0.9980469
              },
              {
                "word": "with",
                "start": 143.39,
                "end": 143.62999,
                "confidence": 0.9980469
              },
              {
                "word": "two",
                "start": 143.62999,
                "end": 144.03,
                "confidence": 0.9995117
              },
              {
                "word": "very",
                "start": 144.03,
                "end": 144.43,
                "confidence": 0.9980469
              },
              {
                "word": "distinct",
                "start": 144.43,
                "end": 144.75,
                "confidence": 0.9995117
              },
              {
                "word": "modes",
                "start": 144.75,
                "end": 144.98999,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 145.31,
                "end": 145.47,
                "confidence": 0.9995117
              },
              {
                "word": "is",
                "start": 145.47,
                "end": 145.87,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 145.87,
                "end": 146.37,
                "confidence": 0.9995117
              },
              {
                "word": "standard",
                "start": 146.43,
                "end": 146.90999,
                "confidence": 0.99902344
              },
              {
                "word": "versus",
                "start": 146.90999,
                "end": 147.40999,
                "confidence": 0.98583984
              },
              {
                "word": "experimental",
                "start": 147.54999,
                "end": 148.04999,
                "confidence": 1
              },
              {
                "word": "split",
                "start": 148.11,
                "end": 148.26999,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 148.26999,
                "end": 148.43,
                "confidence": 0.99853516
              },
              {
                "word": "see",
                "start": 148.43,
                "end": 148.59,
                "confidence": 0.99853516
              },
              {
                "word": "in",
                "start": 148.59,
                "end": 148.67,
                "confidence": 0.9946289
              },
              {
                "word": "the",
                "start": 148.67,
                "end": 148.75,
                "confidence": 0.99902344
              },
              {
                "word": "ui",
                "start": 148.98999,
                "end": 149.23,
                "confidence": 0.99902344
              },
              {
                "word": "correct",
                "start": 149.54999,
                "end": 149.79,
                "confidence": 0.9995117
              },
              {
                "word": "standard",
                "start": 150.26999,
                "end": 150.67,
                "confidence": 0.99902344
              },
              {
                "word": "mode",
                "start": 150.67,
                "end": 150.90999,
                "confidence": 0.99365234
              },
              {
                "word": "runs",
                "start": 150.90999,
                "end": 151.15,
                "confidence": 0.9995117
              },
              {
                "word": "on",
                "start": 151.15,
                "end": 151.31,
                "confidence": 0.99853516
              },
              {
                "word": "gemini",
                "start": 151.39,
                "end": 151.87,
                "confidence": 0.9995117
              },
              {
                "word": "two",
                "start": 151.87,
                "end": 152.11,
                "confidence": 0.9970703
              },
              {
                "word": "point",
                "start": 152.11,
                "end": 152.34999,
                "confidence": 0.9946289
              },
              {
                "word": "five",
                "start": 152.34999,
                "end": 152.75,
                "confidence": 0.99902344
              },
              {
                "word": "flash",
                "start": 152.75,
                "end": 152.98999,
                "confidence": 0.96728516
              },
              {
                "word": "think",
                "start": 153.39,
                "end": 153.54999,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 153.54999,
                "end": 153.87,
                "confidence": 0.99658203
              },
              {
                "word": "flash",
                "start": 153.87,
                "end": 154.26999,
                "confidence": 0.98876953
              },
              {
                "word": "as",
                "start": 154.26999,
                "end": 154.43,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 154.43,
                "end": 154.725,
                "confidence": 0.99316406
              },
              {
                "word": "fast",
                "start": 154.84476,
                "end": 155.34476,
                "confidence": 0.7949219
              },
              {
                "word": "reflective",
                "start": 155.4036,
                "end": 155.72292,
                "confidence": 0.64160156
              },
              {
                "word": "part",
                "start": 155.72292,
                "end": 155.88258,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 155.88258,
                "end": 155.96242,
                "confidence": 0.9975586
              },
              {
                "word": "the",
                "start": 155.96242,
                "end": 156.12209,
                "confidence": 0.9980469
              },
              {
                "word": "brain",
                "start": 156.12209,
                "end": 156.28175,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 156.60109,
                "end": 156.76076,
                "confidence": 0.98828125
              },
              {
                "word": "type",
                "start": 156.76076,
                "end": 157.00026,
                "confidence": 0.9902344
              },
              {
                "word": "give",
                "start": 157.00026,
                "end": 157.15993,
                "confidence": 0.8227539
              },
              {
                "word": "me",
                "start": 157.15993,
                "end": 157.23976,
                "confidence": 0.9711914
              },
              {
                "word": "a",
                "start": 157.23976,
                "end": 157.39943,
                "confidence": 0.98535156
              },
              {
                "word": "login",
                "start": 157.39943,
                "end": 157.79858,
                "confidence": 0.8779297
              },
              {
                "word": "screen",
                "start": 157.79858,
                "end": 158.03809,
                "confidence": 0.9975586
              },
              {
                "word": "and",
                "start": 158.03809,
                "end": 158.27759,
                "confidence": 0.96728516
              },
              {
                "word": "boom",
                "start": 158.27759,
                "end": 158.51709,
                "confidence": 1
              },
              {
                "word": "you",
                "start": 158.83643,
                "end": 158.9961,
                "confidence": 0.99365234
              },
              {
                "word": "get",
                "start": 158.9961,
                "end": 159.07593,
                "confidence": 0.98095703
              },
              {
                "word": "a",
                "start": 159.07593,
                "end": 159.2356,
                "confidence": 0.9741211
              },
              {
                "word": "login",
                "start": 159.2356,
                "end": 159.63475,
                "confidence": 0.8588867
              },
              {
                "word": "screen",
                "start": 159.63475,
                "end": 159.71458,
                "confidence": 0.9980469
              },
              {
                "word": "it's",
                "start": 160.03392,
                "end": 160.19359,
                "confidence": 0.96240234
              },
              {
                "word": "all",
                "start": 160.19359,
                "end": 160.43309,
                "confidence": 0.9975586
              },
              {
                "word": "about",
                "start": 160.43309,
                "end": 160.75243,
                "confidence": 0.9980469
              },
              {
                "word": "speed",
                "start": 160.75243,
                "end": 161.23141,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 161.23141,
                "end": 161.47092,
                "confidence": 0.9970703
              },
              {
                "word": "pattern",
                "start": 161.47092,
                "end": 161.97092,
                "confidence": 0.9995117
              },
              {
                "word": "recognition",
                "start": 162.18942,
                "end": 162.34909,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 162.5886,
                "end": 162.66843,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 162.66843,
                "end": 162.90793,
                "confidence": 0.99902344
              },
              {
                "word": "key",
                "start": 162.90793,
                "end": 163.0676,
                "confidence": 1
              },
              {
                "word": "thing",
                "start": 163.0676,
                "end": 163.30708,
                "confidence": 0.99902344
              },
              {
                "word": "there",
                "start": 163.30708,
                "end": 163.54659,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 163.54659,
                "end": 163.62642,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 163.62642,
                "end": 163.86592,
                "confidence": 0.9980469
              },
              {
                "word": "handoff",
                "start": 163.86592,
                "end": 164.36592,
                "confidence": 0.56591797
              },
              {
                "word": "isn't",
                "start": 164.42476,
                "end": 164.58443,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 164.58443,
                "end": 164.66426,
                "confidence": 0.9995117
              },
              {
                "word": "because",
                "start": 164.98358,
                "end": 165.22308,
                "confidence": 0.9995117
              },
              {
                "word": "usually",
                "start": 165.22308,
                "end": 165.70209,
                "confidence": 0.9995117
              },
              {
                "word": "these",
                "start": 165.70209,
                "end": 165.94159,
                "confidence": 0.99609375
              },
              {
                "word": "tools",
                "start": 165.94159,
                "end": 166.26093,
                "confidence": 0.99902344
              },
              {
                "word": "trap",
                "start": 166.26093,
                "end": 166.58026,
                "confidence": 0.9506836
              },
              {
                "word": "you",
                "start": 166.58026,
                "end": 166.6601,
                "confidence": 0.9946289
              },
              {
                "word": "that's",
                "start": 166.97942,
                "end": 167.13908,
                "confidence": 0.9946289
              },
              {
                "word": "it",
                "start": 167.13908,
                "end": 167.21892,
                "confidence": 0.99902344
              },
              {
                "word": "standard",
                "start": 167.45842,
                "end": 167.77776,
                "confidence": 0.9995117
              },
              {
                "word": "mode",
                "start": 167.77776,
                "end": 168.01726,
                "confidence": 0.9848633
              },
              {
                "word": "has",
                "start": 168.01726,
                "end": 168.17693,
                "confidence": 0.9980469
              },
              {
                "word": "copied",
                "start": 168.17693,
                "end": 168.41643,
                "confidence": 0.51171875
              },
              {
                "word": "to",
                "start": 168.41643,
                "end": 168.49626,
                "confidence": 0.88623047
              },
              {
                "word": "fig",
                "start": 168.5761,
                "end": 168.81558,
                "confidence": 0.9433594
              },
              {
                "word": "this",
                "start": 169.3893,
                "end": 169.5489,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 169.5489,
                "end": 169.7883,
                "confidence": 0.99902344
              },
              {
                "word": "massive",
                "start": 169.7883,
                "end": 170.1873,
                "confidence": 1
              },
              {
                "word": "for",
                "start": 170.1873,
                "end": 170.5065,
                "confidence": 0.99902344
              },
              {
                "word": "designers",
                "start": 170.5065,
                "end": 170.8257,
                "confidence": 0.95947266
              },
              {
                "word": "and",
                "start": 170.8257,
                "end": 170.9853,
                "confidence": 0.2763672
              },
              {
                "word": "about",
                "start": 170.9853,
                "end": 171.0651,
                "confidence": 0.48120117
              },
              {
                "word": "a",
                "start": 171.0651,
                "end": 171.3045,
                "confidence": 0.98095703
              },
              {
                "word": "flat",
                "start": 171.3045,
                "end": 171.5439,
                "confidence": 0.9941406
              },
              {
                "word": "image",
                "start": 171.5439,
                "end": 171.7035,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 171.7833,
                "end": 172.0227,
                "confidence": 0.8203125
              },
              {
                "word": "gives",
                "start": 172.0227,
                "end": 172.1823,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 172.1823,
                "end": 172.5015,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 172.5015,
                "end": 172.8207,
                "confidence": 0.99902344
              },
              {
                "word": "actual",
                "start": 172.8207,
                "end": 173.0601,
                "confidence": 0.9975586
              },
              {
                "word": "editable",
                "start": 173.0601,
                "end": 173.5601,
                "confidence": 0.9916992
              },
              {
                "word": "layers",
                "start": 173.6187,
                "end": 173.9379,
                "confidence": 0.9995117
              },
              {
                "word": "so",
                "start": 174.1773,
                "end": 174.3369,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 174.3369,
                "end": 174.4965,
                "confidence": 0.99853516
              },
              {
                "word": "buttons",
                "start": 174.4965,
                "end": 174.89551,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 175.0551,
                "end": 175.2945,
                "confidence": 0.9970703
              },
              {
                "word": "text",
                "start": 175.2945,
                "end": 175.5339,
                "confidence": 0.96875
              },
              {
                "word": "fields",
                "start": 175.5339,
                "end": 175.7733,
                "confidence": 0.9741211
              },
              {
                "word": "all",
                "start": 176.0925,
                "end": 176.2521,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 176.2521,
                "end": 176.3319,
                "confidence": 0.99658203
              },
              {
                "word": "it",
                "start": 176.3319,
                "end": 176.4117,
                "confidence": 0.9995117
              },
              {
                "word": "all",
                "start": 176.6511,
                "end": 176.7309,
                "confidence": 0.9975586
              },
              {
                "word": "of",
                "start": 176.7309,
                "end": 176.8107,
                "confidence": 0.99658203
              },
              {
                "word": "it",
                "start": 176.8107,
                "end": 176.8905,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 177.2097,
                "end": 177.3693,
                "confidence": 0.99853516
              },
              {
                "word": "can",
                "start": 177.3693,
                "end": 177.6087,
                "confidence": 0.99902344
              },
              {
                "word": "hand",
                "start": 177.6087,
                "end": 177.7683,
                "confidence": 0.99560547
              },
              {
                "word": "that",
                "start": 177.7683,
                "end": 178.0077,
                "confidence": 0.99853516
              },
              {
                "word": "file",
                "start": 178.0077,
                "end": 178.3269,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 178.3269,
                "end": 178.40671,
                "confidence": 0.99560547
              },
              {
                "word": "a",
                "start": 178.40671,
                "end": 178.7259,
                "confidence": 0.99658203
              },
              {
                "word": "professional",
                "start": 178.7259,
                "end": 179.1249,
                "confidence": 0.9995117
              },
              {
                "word": "designer",
                "start": 179.1249,
                "end": 179.4441,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 179.7633,
                "end": 179.9229,
                "confidence": 0.99902344
              },
              {
                "word": "they",
                "start": 179.9229,
                "end": 180.0825,
                "confidence": 0.9975586
              },
              {
                "word": "can",
                "start": 180.0825,
                "end": 180.2421,
                "confidence": 0.9995117
              },
              {
                "word": "actually",
                "start": 180.2421,
                "end": 180.4815,
                "confidence": 0.9995117
              },
              {
                "word": "work",
                "start": 180.4815,
                "end": 180.6411,
                "confidence": 0.9995117
              },
              {
                "word": "with",
                "start": 180.6411,
                "end": 180.7209,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 180.7209,
                "end": 180.8007,
                "confidence": 0.9980469
              },
              {
                "word": "it",
                "start": 180.9603,
                "end": 181.1997,
                "confidence": 0.9941406
              },
              {
                "word": "plugs",
                "start": 181.1997,
                "end": 181.4391,
                "confidence": 0.9995117
              },
              {
                "word": "into",
                "start": 181.4391,
                "end": 181.5987,
                "confidence": 0.9946289
              },
              {
                "word": "a",
                "start": 181.5987,
                "end": 181.7583,
                "confidence": 0.9980469
              },
              {
                "word": "real",
                "start": 181.7583,
                "end": 181.9977,
                "confidence": 1
              },
              {
                "word": "world",
                "start": 181.9977,
                "end": 182.4765,
                "confidence": 0.9975586
              },
              {
                "word": "workflow",
                "start": 182.4765,
                "end": 182.6361,
                "confidence": 0.99609375
              },
              {
                "word": "okay",
                "start": 182.8755,
                "end": 182.95529,
                "confidence": 0.9995117
              },
              {
                "word": "but",
                "start": 183.1947,
                "end": 183.2745,
                "confidence": 0.9980469
              },
              {
                "word": "then",
                "start": 183.2745,
                "end": 183.5139,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 183.5139,
                "end": 183.6735,
                "confidence": 0.9980469
              },
              {
                "word": "have",
                "start": 183.6735,
                "end": 183.9129,
                "confidence": 0.99902344
              },
              {
                "word": "experimental",
                "start": 183.9129,
                "end": 184.4129,
                "confidence": 0.99902344
              },
              {
                "word": "move",
                "start": 184.4715,
                "end": 184.5513,
                "confidence": 0.7294922
              },
              {
                "word": "this",
                "start": 184.7109,
                "end": 184.7907,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 184.7907,
                "end": 185.085,
                "confidence": 0.9951172
              },
              {
                "word": "that",
                "start": 185.28386,
                "end": 185.36339,
                "confidence": 0.9946289
              },
              {
                "word": "really",
                "start": 185.36339,
                "end": 185.60202,
                "confidence": 0.9995117
              },
              {
                "word": "got",
                "start": 185.60202,
                "end": 185.7611,
                "confidence": 0.99853516
              },
              {
                "word": "my",
                "start": 185.7611,
                "end": 186.07925,
                "confidence": 0.9995117
              },
              {
                "word": "attention",
                "start": 186.07925,
                "end": 186.31787,
                "confidence": 0.9995117
              },
              {
                "word": "because",
                "start": 186.31787,
                "end": 186.47694,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 186.47694,
                "end": 186.71556,
                "confidence": 0.99902344
              },
              {
                "word": "uses",
                "start": 186.71556,
                "end": 186.95418,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 186.95418,
                "end": 187.19281,
                "confidence": 0.99853516
              },
              {
                "word": "pro",
                "start": 187.19281,
                "end": 187.43143,
                "confidence": 0.92822266
              },
              {
                "word": "model",
                "start": 187.43143,
                "end": 187.67004,
                "confidence": 0.9980469
              },
              {
                "word": "gemini",
                "start": 188.06773,
                "end": 188.22682,
                "confidence": 0.80371094
              },
              {
                "word": "and",
                "start": 188.22682,
                "end": 188.3859,
                "confidence": 0.6616211
              },
              {
                "word": "i",
                "start": 188.3859,
                "end": 188.54497,
                "confidence": 0.9248047
              },
              {
                "word": "two",
                "start": 188.54497,
                "end": 188.78358,
                "confidence": 0.98779297
              },
              {
                "word": "point",
                "start": 188.78358,
                "end": 189.02222,
                "confidence": 0.98876953
              },
              {
                "word": "five",
                "start": 189.02222,
                "end": 189.34036,
                "confidence": 0.9970703
              },
              {
                "word": "pro",
                "start": 189.34036,
                "end": 189.57898,
                "confidence": 0.98291016
              },
              {
                "word": "the",
                "start": 190.13576,
                "end": 190.45392,
                "confidence": 0.99609375
              },
              {
                "word": "thinking",
                "start": 190.45392,
                "end": 190.85162,
                "confidence": 0.9970703
              },
              {
                "word": "brain",
                "start": 190.85162,
                "end": 191.09024,
                "confidence": 0.99853516
              },
              {
                "word": "this",
                "start": 191.64702,
                "end": 191.72655,
                "confidence": 0.9995117
              },
              {
                "word": "is",
                "start": 191.72655,
                "end": 191.88564,
                "confidence": 0.9975586
              },
              {
                "word": "where",
                "start": 191.88564,
                "end": 192.04471,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 192.04471,
                "end": 192.12425,
                "confidence": 0.97558594
              },
              {
                "word": "gets",
                "start": 192.12425,
                "end": 192.28333,
                "confidence": 0.9946289
              },
              {
                "word": "much",
                "start": 192.28333,
                "end": 192.52194,
                "confidence": 0.9926758
              },
              {
                "word": "more",
                "start": 192.52194,
                "end": 192.76056,
                "confidence": 0.9902344
              },
              {
                "word": "interesting",
                "start": 192.76056,
                "end": 192.91965,
                "confidence": 0.9975586
              },
              {
                "word": "this",
                "start": 193.47643,
                "end": 193.55595,
                "confidence": 0.9970703
              },
              {
                "word": "is",
                "start": 193.55595,
                "end": 193.6355,
                "confidence": 0.99609375
              },
              {
                "word": "where",
                "start": 193.6355,
                "end": 193.79459,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 193.79459,
                "end": 193.95366,
                "confidence": 0.9941406
              },
              {
                "word": "whole",
                "start": 193.95366,
                "end": 194.0332,
                "confidence": 0.9951172
              },
              {
                "word": "napkin",
                "start": 194.11273,
                "end": 194.51044,
                "confidence": 0.8623047
              },
              {
                "word": "sketch",
                "start": 194.51044,
                "end": 194.90813,
                "confidence": 0.9975586
              },
              {
                "word": "feature",
                "start": 194.90813,
                "end": 195.14674,
                "confidence": 0.9946289
              },
              {
                "word": "lives",
                "start": 195.14674,
                "end": 195.38538,
                "confidence": 0.99072266
              },
              {
                "word": "you",
                "start": 195.86261,
                "end": 196.02168,
                "confidence": 0.99902344
              },
              {
                "word": "can",
                "start": 196.02168,
                "end": 196.33984,
                "confidence": 0.99853516
              },
              {
                "word": "upload",
                "start": 196.33984,
                "end": 196.49892,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 196.49892,
                "end": 196.658,
                "confidence": 0.99316406
              },
              {
                "word": "photo",
                "start": 196.658,
                "end": 197.158,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 197.3097,
                "end": 197.46927,
                "confidence": 0.9970703
              },
              {
                "word": "a",
                "start": 197.46927,
                "end": 197.96927,
                "confidence": 0.9921875
              },
              {
                "word": "messy",
                "start": 198.0278,
                "end": 198.5278,
                "confidence": 0.99658203
              },
              {
                "word": "hand",
                "start": 198.74593,
                "end": 199.06508,
                "confidence": 0.97216797
              },
              {
                "word": "drawn",
                "start": 199.06508,
                "end": 199.46404,
                "confidence": 0.9916992
              },
              {
                "word": "wire",
                "start": 199.46404,
                "end": 199.94278,
                "confidence": 0.8461914
              },
              {
                "word": "literally",
                "start": 200.18214,
                "end": 200.68214,
                "confidence": 1
              },
              {
                "word": "scribble",
                "start": 200.82048,
                "end": 201.13963,
                "confidence": 0.9970703
              },
              {
                "word": "on",
                "start": 201.13963,
                "end": 201.21942,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 201.21942,
                "end": 201.4588,
                "confidence": 0.98779297
              },
              {
                "word": "napkin",
                "start": 201.4588,
                "end": 201.61838,
                "confidence": 0.9980469
              },
              {
                "word": "in",
                "start": 201.61838,
                "end": 201.85776,
                "confidence": 0.7602539
              },
              {
                "word": "at",
                "start": 201.85776,
                "end": 201.93755,
                "confidence": 0.9716797
              },
              {
                "word": "a",
                "start": 201.93755,
                "end": 202.09712,
                "confidence": 0.75
              },
              {
                "word": "coffee",
                "start": 202.09712,
                "end": 202.33649,
                "confidence": 1
              },
              {
                "word": "shop",
                "start": 202.33649,
                "end": 202.49608,
                "confidence": 0.9951172
              },
              {
                "word": "exactly",
                "start": 202.89503,
                "end": 203.05461,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 203.37378,
                "end": 203.45357,
                "confidence": 0.9980469
              },
              {
                "word": "it",
                "start": 203.45357,
                "end": 203.93231,
                "confidence": 0.99902344
              },
              {
                "word": "understands",
                "start": 203.93231,
                "end": 204.17168,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 204.17168,
                "end": 204.57063,
                "confidence": 1
              },
              {
                "word": "intent",
                "start": 204.57063,
                "end": 204.96959,
                "confidence": 0.9980469
              },
              {
                "word": "behind",
                "start": 204.96959,
                "end": 205.12917,
                "confidence": 1
              },
              {
                "word": "your",
                "start": 205.12917,
                "end": 205.36853,
                "confidence": 0.99902344
              },
              {
                "word": "scribble",
                "start": 205.36853,
                "end": 205.6877,
                "confidence": 0.9838867
              },
              {
                "word": "it",
                "start": 206.16644,
                "end": 206.4058,
                "confidence": 0.9838867
              },
              {
                "word": "sees",
                "start": 206.4058,
                "end": 206.5654,
                "confidence": 0.99609375
              },
              {
                "word": "a",
                "start": 206.5654,
                "end": 206.72498,
                "confidence": 0.9951172
              },
              {
                "word": "box",
                "start": 206.72498,
                "end": 207.04414,
                "confidence": 0.9995117
              },
              {
                "word": "with",
                "start": 207.04414,
                "end": 207.20372,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 207.20372,
                "end": 207.3633,
                "confidence": 0.9946289
              },
              {
                "word": "x",
                "start": 207.3633,
                "end": 207.8633,
                "confidence": 0.98876953
              },
              {
                "word": "and",
                "start": 208.16121,
                "end": 208.32079,
                "confidence": 0.87597656
              },
              {
                "word": "knows",
                "start": 208.32079,
                "end": 208.56017,
                "confidence": 0.74121094
              },
              {
                "word": "oh",
                "start": 208.79953,
                "end": 208.87932,
                "confidence": 0.9941406
              },
              {
                "word": "that's",
                "start": 209.03891,
                "end": 209.19849,
                "confidence": 0.99853516
              },
              {
                "word": "an",
                "start": 209.19849,
                "end": 209.35806,
                "confidence": 0.9975586
              },
              {
                "word": "image",
                "start": 209.35806,
                "end": 209.67723,
                "confidence": 0.99902344
              },
              {
                "word": "placeholder",
                "start": 209.67723,
                "end": 210.07619,
                "confidence": 0.9614258
              },
              {
                "word": "it",
                "start": 210.39534,
                "end": 210.63472,
                "confidence": 0.9868164
              },
              {
                "word": "sees",
                "start": 210.63472,
                "end": 210.7943,
                "confidence": 0.9926758
              },
              {
                "word": "a",
                "start": 210.7943,
                "end": 210.95387,
                "confidence": 0.81689453
              },
              {
                "word": "squiggly",
                "start": 210.95387,
                "end": 211.35283,
                "confidence": 0.9941406
              },
              {
                "word": "line",
                "start": 211.35283,
                "end": 211.672,
                "confidence": 0.9760742
              },
              {
                "word": "and",
                "start": 211.672,
                "end": 211.83157,
                "confidence": 0.75341797
              },
              {
                "word": "knows",
                "start": 211.83157,
                "end": 212.33157,
                "confidence": 0.85839844
              },
              {
                "word": "that's",
                "start": 212.64403,
                "end": 212.80325,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 212.80325,
                "end": 212.96246,
                "confidence": 0.97998047
              },
              {
                "word": "header",
                "start": 212.96246,
                "end": 213.12169,
                "confidence": 0.9970703
              },
              {
                "word": "but",
                "start": 213.2809,
                "end": 213.51973,
                "confidence": 0.9970703
              },
              {
                "word": "there's",
                "start": 213.51973,
                "end": 213.67894,
                "confidence": 0.98095703
              },
              {
                "word": "a",
                "start": 213.67894,
                "end": 213.83817,
                "confidence": 0.9980469
              },
              {
                "word": "catch",
                "start": 213.83817,
                "end": 213.99738,
                "confidence": 0.99658203
              },
              {
                "word": "a",
                "start": 214.2362,
                "end": 214.39543,
                "confidence": 0.97314453
              },
              {
                "word": "big",
                "start": 214.39543,
                "end": 214.87308,
                "confidence": 0.9970703
              },
              {
                "word": "workflow",
                "start": 214.87308,
                "end": 215.11191,
                "confidence": 0.97265625
              },
              {
                "word": "blocker",
                "start": 215.11191,
                "end": 215.27112,
                "confidence": 0.6816406
              },
              {
                "word": "a",
                "start": 215.50995,
                "end": 215.82838,
                "confidence": 0.9926758
              },
              {
                "word": "huge",
                "start": 215.82838,
                "end": 216.22643,
                "confidence": 1
              },
              {
                "word": "one",
                "start": 216.22643,
                "end": 216.30605,
                "confidence": 0.99609375
              },
              {
                "word": "mh",
                "start": 216.54486,
                "end": 216.78369,
                "confidence": 0.9482422
              },
              {
                "word": "experimental",
                "start": 217.18173,
                "end": 217.57979,
                "confidence": 0.9921875
              },
              {
                "word": "mode",
                "start": 217.57979,
                "end": 217.89822,
                "confidence": 0.9980469
              },
              {
                "word": "cannot",
                "start": 217.89822,
                "end": 218.39822,
                "confidence": 0.99902344
              },
              {
                "word": "export",
                "start": 218.5351,
                "end": 218.77391,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 218.77391,
                "end": 218.85353,
                "confidence": 0.96972656
              },
              {
                "word": "fig",
                "start": 218.93314,
                "end": 219.33118,
                "confidence": 0.9350586
              },
              {
                "word": "yet",
                "start": 219.33118,
                "end": 219.41078,
                "confidence": 0.9785156
              },
              {
                "word": "so",
                "start": 219.57,
                "end": 219.80884,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 219.80884,
                "end": 219.88844,
                "confidence": 0.99853516
              },
              {
                "word": "get",
                "start": 219.88844,
                "end": 220.04765,
                "confidence": 0.99902344
              },
              {
                "word": "this",
                "start": 220.04765,
                "end": 220.36609,
                "confidence": 0.9980469
              },
              {
                "word": "beautiful",
                "start": 220.36609,
                "end": 220.86609,
                "confidence": 0.9995117
              },
              {
                "word": "high",
                "start": 221.32141,
                "end": 221.71945,
                "confidence": 0.9995117
              },
              {
                "word": "fidelity",
                "start": 221.71945,
                "end": 222.21945,
                "confidence": 1
              },
              {
                "word": "result",
                "start": 222.35632,
                "end": 222.51553,
                "confidence": 0.99658203
              },
              {
                "word": "but",
                "start": 222.75436,
                "end": 222.91357,
                "confidence": 0.9975586
              },
              {
                "word": "it's",
                "start": 222.91357,
                "end": 223.41357,
                "confidence": 0.99121094
              },
              {
                "word": "it's",
                "start": 223.47084,
                "end": 223.70967,
                "confidence": 0.9926758
              },
              {
                "word": "trapped",
                "start": 223.70967,
                "end": 223.9485,
                "confidence": 0.9946289
              },
              {
                "word": "from",
                "start": 224.18732,
                "end": 224.42615,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 224.42615,
                "end": 224.66498,
                "confidence": 0.99658203
              },
              {
                "word": "design",
                "start": 224.66498,
                "end": 225.06302,
                "confidence": 0.9941406
              },
              {
                "word": "perspective",
                "start": 225.06302,
                "end": 225.22224,
                "confidence": 0.9995117
              },
              {
                "word": "yeah",
                "start": 225.38145,
                "end": 225.46107,
                "confidence": 0.9892578
              },
              {
                "word": "you",
                "start": 225.62029,
                "end": 225.69989,
                "confidence": 0.9589844
              },
              {
                "word": "can",
                "start": 225.69989,
                "end": 225.85912,
                "confidence": 0.94921875
              },
              {
                "word": "get",
                "start": 225.85912,
                "end": 225.93872,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 225.93872,
                "end": 226.09795,
                "confidence": 0.9941406
              },
              {
                "word": "code",
                "start": 226.09795,
                "end": 226.25716,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 226.82971,
                "end": 226.9095,
                "confidence": 0.9765625
              },
              {
                "word": "html",
                "start": 227.14891,
                "end": 227.46811,
                "confidence": 0.9892578
              },
              {
                "word": "the",
                "start": 227.54791,
                "end": 227.6277,
                "confidence": 0.9794922
              },
              {
                "word": "css",
                "start": 227.78731,
                "end": 228.1065,
                "confidence": 0.9902344
              },
              {
                "word": "that's",
                "start": 228.26611,
                "end": 228.4257,
                "confidence": 0.99902344
              },
              {
                "word": "all",
                "start": 228.4257,
                "end": 228.58531,
                "confidence": 0.99853516
              },
              {
                "word": "there",
                "start": 228.58531,
                "end": 228.6651,
                "confidence": 0.9941406
              },
              {
                "word": "so",
                "start": 228.8247,
                "end": 228.98431,
                "confidence": 0.99609375
              },
              {
                "word": "for",
                "start": 228.98431,
                "end": 229.0641,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 229.0641,
                "end": 229.30351,
                "confidence": 0.9921875
              },
              {
                "word": "developer",
                "start": 229.30351,
                "end": 229.62271,
                "confidence": 0.9995117
              },
              {
                "word": "who",
                "start": 229.62271,
                "end": 229.7823,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 229.7823,
                "end": 229.94191,
                "confidence": 0.9995117
              },
              {
                "word": "wants",
                "start": 229.94191,
                "end": 230.1813,
                "confidence": 0.99853516
              },
              {
                "word": "to",
                "start": 230.1813,
                "end": 230.4207,
                "confidence": 0.9970703
              },
              {
                "word": "paste",
                "start": 230.4207,
                "end": 230.5803,
                "confidence": 0.98046875
              },
              {
                "word": "it",
                "start": 230.5803,
                "end": 230.7399,
                "confidence": 0.8955078
              },
              {
                "word": "into",
                "start": 230.7399,
                "end": 230.8197,
                "confidence": 0.90625
              },
              {
                "word": "vs",
                "start": 230.8995,
                "end": 231.2187,
                "confidence": 0.82128906
              },
              {
                "word": "code",
                "start": 231.2187,
                "end": 231.4581,
                "confidence": 0.9819336
              },
              {
                "word": "it's",
                "start": 232.01671,
                "end": 232.1763,
                "confidence": 0.9921875
              },
              {
                "word": "a",
                "start": 232.1763,
                "end": 232.41571,
                "confidence": 0.9902344
              },
              {
                "word": "dream",
                "start": 232.41571,
                "end": 232.5753,
                "confidence": 0.9995117
              },
              {
                "word": "but",
                "start": 232.8945,
                "end": 233.05411,
                "confidence": 0.99853516
              },
              {
                "word": "for",
                "start": 233.05411,
                "end": 233.2137,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 233.2137,
                "end": 233.45311,
                "confidence": 0.99560547
              },
              {
                "word": "designer",
                "start": 233.45311,
                "end": 233.77231,
                "confidence": 0.9995117
              },
              {
                "word": "who",
                "start": 233.77231,
                "end": 233.9319,
                "confidence": 1
              },
              {
                "word": "wants",
                "start": 233.9319,
                "end": 234.17131,
                "confidence": 1
              },
              {
                "word": "to",
                "start": 234.17131,
                "end": 234.4107,
                "confidence": 0.99902344
              },
              {
                "word": "tweak",
                "start": 234.4107,
                "end": 234.7299,
                "confidence": 0.99902344
              },
              {
                "word": "things",
                "start": 234.7299,
                "end": 234.9693,
                "confidence": 1
              },
              {
                "word": "in",
                "start": 234.9693,
                "end": 235.1289,
                "confidence": 0.9682617
              },
              {
                "word": "fig",
                "start": 235.28851,
                "end": 235.6875,
                "confidence": 0.99121094
              },
              {
                "word": "they're",
                "start": 236.0865,
                "end": 236.32591,
                "confidence": 0.9145508
              },
              {
                "word": "out",
                "start": 236.32591,
                "end": 236.4855,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 236.4855,
                "end": 236.64511,
                "confidence": 0.99902344
              },
              {
                "word": "luck",
                "start": 236.64511,
                "end": 236.8047,
                "confidence": 0.9794922
              },
              {
                "word": "right",
                "start": 237.04411,
                "end": 237.2037,
                "confidence": 0.99658203
              },
              {
                "word": "you",
                "start": 237.5229,
                "end": 237.6027,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 237.6027,
                "end": 237.7623,
                "confidence": 0.97509766
              },
              {
                "word": "to",
                "start": 237.7623,
                "end": 237.9219,
                "confidence": 0.99853516
              },
              {
                "word": "choose",
                "start": 237.9219,
                "end": 238.1613,
                "confidence": 0.9975586
              },
              {
                "word": "do",
                "start": 238.40071,
                "end": 238.4805,
                "confidence": 0.40527344
              },
              {
                "word": "you",
                "start": 238.4805,
                "end": 238.6401,
                "confidence": 0.97998047
              },
              {
                "word": "want",
                "start": 238.6401,
                "end": 238.79971,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 238.79971,
                "end": 239.03911,
                "confidence": 0.98095703
              },
              {
                "word": "smart",
                "start": 239.03911,
                "end": 239.2785,
                "confidence": 0.9941406
              },
              {
                "word": "model",
                "start": 239.2785,
                "end": 239.75731,
                "confidence": 0.98339844
              },
              {
                "word": "or",
                "start": 239.75731,
                "end": 239.9169,
                "confidence": 0.99853516
              },
              {
                "word": "do",
                "start": 239.9169,
                "end": 239.9967,
                "confidence": 0.99560547
              },
              {
                "word": "you",
                "start": 239.9967,
                "end": 240.0765,
                "confidence": 0.99902344
              },
              {
                "word": "want",
                "start": 240.0765,
                "end": 240.2361,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 240.2361,
                "end": 240.6351,
                "confidence": 0.99853516
              },
              {
                "word": "export",
                "start": 240.6351,
                "end": 240.9543,
                "confidence": 0.99365234
              },
              {
                "word": "one",
                "start": 240.9543,
                "end": 241.0341,
                "confidence": 0.9970703
              },
              {
                "word": "and",
                "start": 241.2735,
                "end": 241.3533,
                "confidence": 0.99121094
              },
              {
                "word": "you",
                "start": 241.3533,
                "end": 241.59271,
                "confidence": 0.99658203
              },
              {
                "word": "can't",
                "start": 241.59271,
                "end": 241.7523,
                "confidence": 0.9770508
              },
              {
                "word": "have",
                "start": 241.7523,
                "end": 241.91191,
                "confidence": 0.99902344
              },
              {
                "word": "both",
                "start": 241.91191,
                "end": 242.1513,
                "confidence": 1
              },
              {
                "word": "right",
                "start": 242.1513,
                "end": 242.3907,
                "confidence": 0.99902344
              },
              {
                "word": "now",
                "start": 242.3907,
                "end": 242.55031,
                "confidence": 0.9995117
              },
              {
                "word": "let's",
                "start": 242.88434,
                "end": 243.12355,
                "confidence": 0.99609375
              },
              {
                "word": "make",
                "start": 243.12355,
                "end": 243.28302,
                "confidence": 0.99853516
              },
              {
                "word": "this",
                "start": 243.28302,
                "end": 243.52223,
                "confidence": 0.9995117
              },
              {
                "word": "real",
                "start": 243.52223,
                "end": 243.6817,
                "confidence": 0.93408203
              },
              {
                "word": "with",
                "start": 243.6817,
                "end": 243.84119,
                "confidence": 0.97216797
              },
              {
                "word": "the",
                "start": 243.84119,
                "end": 244.00066,
                "confidence": 0.9848633
              },
              {
                "word": "crypto",
                "start": 244.00066,
                "end": 244.3196,
                "confidence": 0.9951172
              },
              {
                "word": "track",
                "start": 244.3196,
                "end": 244.63855,
                "confidence": 0.46313477
              },
              {
                "word": "example",
                "start": 244.63855,
                "end": 244.87776,
                "confidence": 0.9995117
              },
              {
                "word": "they",
                "start": 244.87776,
                "end": 244.9575,
                "confidence": 0.9995117
              },
              {
                "word": "showed",
                "start": 244.9575,
                "end": 245.11697,
                "confidence": 0.9824219
              },
              {
                "word": "i",
                "start": 245.35619,
                "end": 245.43591,
                "confidence": 0.9995117
              },
              {
                "word": "think",
                "start": 245.43591,
                "end": 245.5954,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 245.5954,
                "end": 245.99408,
                "confidence": 0.99902344
              },
              {
                "word": "illustrates",
                "start": 245.99408,
                "end": 246.23329,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 246.23329,
                "end": 246.39276,
                "confidence": 0.99853516
              },
              {
                "word": "state",
                "start": 246.39276,
                "end": 246.55223,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 246.55223,
                "end": 246.7117,
                "confidence": 0.99902344
              },
              {
                "word": "this",
                "start": 246.7117,
                "end": 246.95091,
                "confidence": 0.9980469
              },
              {
                "word": "tech",
                "start": 246.95091,
                "end": 247.19012,
                "confidence": 0.98828125
              },
              {
                "word": "perfectly",
                "start": 247.19012,
                "end": 247.66855,
                "confidence": 1
              },
              {
                "word": "yeah",
                "start": 247.9875,
                "end": 248.06723,
                "confidence": 0.9916992
              },
              {
                "word": "so",
                "start": 248.30644,
                "end": 248.80644,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 249.10382,
                "end": 249.26329,
                "confidence": 0.99853516
              },
              {
                "word": "prompt",
                "start": 249.26329,
                "end": 249.42276,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 249.42276,
                "end": 249.66197,
                "confidence": 0.65771484
              },
              {
                "word": "pretty",
                "start": 249.66197,
                "end": 249.98093,
                "confidence": 0.9995117
              },
              {
                "word": "standard",
                "start": 249.98093,
                "end": 250.22012,
                "confidence": 0.99853516
              },
              {
                "word": "design",
                "start": 250.69855,
                "end": 250.85802,
                "confidence": 0.8178711
              },
              {
                "word": "a",
                "start": 250.85802,
                "end": 251.0175,
                "confidence": 0.9194336
              },
              {
                "word": "mobile",
                "start": 251.0175,
                "end": 251.33644,
                "confidence": 0.9902344
              },
              {
                "word": "crypto",
                "start": 251.33644,
                "end": 251.73512,
                "confidence": 0.9951172
              },
              {
                "word": "dashboard",
                "start": 251.73512,
                "end": 252.13382,
                "confidence": 0.9980469
              },
              {
                "word": "dark",
                "start": 252.37302,
                "end": 252.61223,
                "confidence": 0.97753906
              },
              {
                "word": "theme",
                "start": 252.61223,
                "end": 252.85144,
                "confidence": 0.96435547
              },
              {
                "word": "pie",
                "start": 253.09065,
                "end": 253.32986,
                "confidence": 0.8847656
              },
              {
                "word": "chart",
                "start": 253.32986,
                "end": 253.72855,
                "confidence": 0.9614258
              },
              {
                "word": "trending",
                "start": 253.72855,
                "end": 254.0475,
                "confidence": 0.9980469
              },
              {
                "word": "coins",
                "start": 254.0475,
                "end": 254.44618,
                "confidence": 0.92089844
              },
              {
                "word": "list",
                "start": 254.44618,
                "end": 254.82,
                "confidence": 0.86865234
              },
              {
                "word": "you",
                "start": 254.9398,
                "end": 255.01967,
                "confidence": 0.63623047
              },
              {
                "word": "know",
                "start": 255.01967,
                "end": 255.09955,
                "confidence": 0.75341797
              },
              {
                "word": "the",
                "start": 255.25928,
                "end": 255.49889,
                "confidence": 0.99072266
              },
              {
                "word": "usual",
                "start": 255.49889,
                "end": 255.73848,
                "confidence": 0.9970703
              },
              {
                "word": "stuff",
                "start": 255.73848,
                "end": 255.81834,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 256.05795,
                "end": 256.3774,
                "confidence": 0.99365234
              },
              {
                "word": "stitch",
                "start": 256.3774,
                "end": 256.6969,
                "confidence": 0.9609375
              },
              {
                "word": "built",
                "start": 256.6969,
                "end": 256.9365,
                "confidence": 0.96777344
              },
              {
                "word": "it",
                "start": 256.9365,
                "end": 257.01636,
                "confidence": 0.9926758
              },
              {
                "word": "it",
                "start": 257.1761,
                "end": 257.33585,
                "confidence": 0.9995117
              },
              {
                "word": "looked",
                "start": 257.33585,
                "end": 257.49557,
                "confidence": 0.9765625
              },
              {
                "word": "like",
                "start": 257.49557,
                "end": 257.73517,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 257.73517,
                "end": 257.8949,
                "confidence": 0.9980469
              },
              {
                "word": "real",
                "start": 257.8949,
                "end": 258.2144,
                "confidence": 0.99902344
              },
              {
                "word": "app",
                "start": 258.2144,
                "end": 258.3741,
                "confidence": 0.99658203
              },
              {
                "word": "but",
                "start": 258.69357,
                "end": 258.9332,
                "confidence": 0.9838867
              },
              {
                "word": "and",
                "start": 259.25266,
                "end": 259.41238,
                "confidence": 0.99560547
              },
              {
                "word": "i",
                "start": 259.49225,
                "end": 259.652,
                "confidence": 0.9995117
              },
              {
                "word": "actually",
                "start": 259.652,
                "end": 259.97147,
                "confidence": 0.99853516
              },
              {
                "word": "respect",
                "start": 259.97147,
                "end": 260.05133,
                "confidence": 0.96972656
              },
              {
                "word": "google",
                "start": 260.1312,
                "end": 260.3708,
                "confidence": 0.82666016
              },
              {
                "word": "for",
                "start": 260.3708,
                "end": 260.6104,
                "confidence": 0.98095703
              },
              {
                "word": "showing",
                "start": 260.6104,
                "end": 260.77014,
                "confidence": 0.9980469
              },
              {
                "word": "this",
                "start": 260.77014,
                "end": 260.92987,
                "confidence": 0.99658203
              },
              {
                "word": "it",
                "start": 261.0896,
                "end": 261.24936,
                "confidence": 0.9995117
              },
              {
                "word": "made",
                "start": 261.24936,
                "end": 261.48895,
                "confidence": 1
              },
              {
                "word": "some",
                "start": 261.48895,
                "end": 261.8084,
                "confidence": 0.99902344
              },
              {
                "word": "mistakes",
                "start": 261.8084,
                "end": 261.96814,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 262.20776,
                "end": 262.3675,
                "confidence": 0.9819336
              },
              {
                "word": "did",
                "start": 262.3675,
                "end": 262.44736,
                "confidence": 0.99121094
              },
              {
                "word": "it",
                "start": 262.7668,
                "end": 262.92657,
                "confidence": 0.96777344
              },
              {
                "word": "centered",
                "start": 262.92657,
                "end": 263.24603,
                "confidence": 0.51123047
              },
              {
                "word": "the",
                "start": 263.24603,
                "end": 263.40576,
                "confidence": 0.99902344
              },
              {
                "word": "app's",
                "start": 263.40576,
                "end": 263.6454,
                "confidence": 0.56152344
              },
              {
                "word": "name",
                "start": 263.6454,
                "end": 263.8051,
                "confidence": 0.9951172
              },
              {
                "word": "which",
                "start": 263.96484,
                "end": 264.20444,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 264.20444,
                "end": 264.44406,
                "confidence": 0.99853516
              },
              {
                "word": "looked",
                "start": 264.44406,
                "end": 264.52393,
                "confidence": 0.99560547
              },
              {
                "word": "a",
                "start": 264.52393,
                "end": 264.68365,
                "confidence": 0.99316406
              },
              {
                "word": "bit",
                "start": 264.68365,
                "end": 264.92325,
                "confidence": 0.99902344
              },
              {
                "word": "amateur",
                "start": 264.92325,
                "end": 265.24274,
                "confidence": 0.99365234
              },
              {
                "word": "and",
                "start": 265.8018,
                "end": 265.96152,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 265.96152,
                "end": 266.12128,
                "confidence": 0.99365234
              },
              {
                "word": "used",
                "start": 266.12128,
                "end": 266.281,
                "confidence": 0.99316406
              },
              {
                "word": "a",
                "start": 266.281,
                "end": 266.5206,
                "confidence": 0.984375
              },
              {
                "word": "bar",
                "start": 266.5206,
                "end": 266.7602,
                "confidence": 0.99121094
              },
              {
                "word": "graph",
                "start": 266.7602,
                "end": 266.8401,
                "confidence": 0.67626953
              },
              {
                "word": "instead",
                "start": 267.25497,
                "end": 267.335,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 267.335,
                "end": 267.57498,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 267.57498,
                "end": 267.735,
                "confidence": 0.9941406
              },
              {
                "word": "pie",
                "start": 267.735,
                "end": 267.97498,
                "confidence": 0.9970703
              },
              {
                "word": "chart",
                "start": 267.97498,
                "end": 268.13498,
                "confidence": 0.9873047
              },
              {
                "word": "it",
                "start": 268.13498,
                "end": 268.215,
                "confidence": 0.8354492
              },
              {
                "word": "was",
                "start": 268.215,
                "end": 268.375,
                "confidence": 0.9848633
              },
              {
                "word": "asked",
                "start": 268.375,
                "end": 268.535,
                "confidence": 0.99609375
              },
              {
                "word": "for",
                "start": 268.535,
                "end": 268.69498,
                "confidence": 0.99560547
              },
              {
                "word": "now",
                "start": 268.935,
                "end": 269.01498,
                "confidence": 0.9057617
              },
              {
                "word": "in",
                "start": 269.095,
                "end": 269.335,
                "confidence": 0.98535156
              },
              {
                "word": "twenty",
                "start": 269.335,
                "end": 269.57498,
                "confidence": 0.9975586
              },
              {
                "word": "twenty",
                "start": 269.57498,
                "end": 269.97498,
                "confidence": 0.9995117
              },
              {
                "word": "four",
                "start": 269.97498,
                "end": 270.215,
                "confidence": 0.9975586
              },
              {
                "word": "if",
                "start": 270.455,
                "end": 270.615,
                "confidence": 0.9995117
              },
              {
                "word": "an",
                "start": 270.615,
                "end": 270.775,
                "confidence": 0.99609375
              },
              {
                "word": "ai",
                "start": 270.85498,
                "end": 271.25497,
                "confidence": 0.99072266
              },
              {
                "word": "did",
                "start": 271.25497,
                "end": 271.41498,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 271.41498,
                "end": 271.57498,
                "confidence": 0.9980469
              },
              {
                "word": "you'd",
                "start": 271.97498,
                "end": 272.13498,
                "confidence": 0.95410156
              },
              {
                "word": "have",
                "start": 272.13498,
                "end": 272.29498,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 272.29498,
                "end": 272.535,
                "confidence": 0.9975586
              },
              {
                "word": "scrap",
                "start": 272.535,
                "end": 272.775,
                "confidence": 0.9453125
              },
              {
                "word": "it",
                "start": 272.775,
                "end": 273.01498,
                "confidence": 0.9946289
              },
              {
                "word": "and",
                "start": 273.01498,
                "end": 273.25497,
                "confidence": 0.99609375
              },
              {
                "word": "start",
                "start": 273.25497,
                "end": 273.495,
                "confidence": 0.9980469
              },
              {
                "word": "over",
                "start": 273.495,
                "end": 273.735,
                "confidence": 0.9975586
              },
              {
                "word": "rewrite",
                "start": 274.215,
                "end": 274.455,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 274.455,
                "end": 274.615,
                "confidence": 0.99853516
              },
              {
                "word": "whole",
                "start": 274.615,
                "end": 274.85498,
                "confidence": 0.9975586
              },
              {
                "word": "prompt",
                "start": 274.85498,
                "end": 275.175,
                "confidence": 0.98828125
              },
              {
                "word": "cross",
                "start": 275.175,
                "end": 275.335,
                "confidence": 0.60302734
              },
              {
                "word": "your",
                "start": 275.335,
                "end": 275.57498,
                "confidence": 0.99609375
              },
              {
                "word": "fingers",
                "start": 275.57498,
                "end": 275.97498,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 276.215,
                "end": 276.29498,
                "confidence": 0.9482422
              },
              {
                "word": "just",
                "start": 276.29498,
                "end": 276.455,
                "confidence": 0.9926758
              },
              {
                "word": "hope",
                "start": 276.455,
                "end": 276.615,
                "confidence": 0.9526367
              },
              {
                "word": "it",
                "start": 276.615,
                "end": 277.01498,
                "confidence": 0.9873047
              },
              {
                "word": "understands",
                "start": 277.01498,
                "end": 277.175,
                "confidence": 0.98535156
              },
              {
                "word": "you",
                "start": 277.175,
                "end": 277.335,
                "confidence": 0.95214844
              },
              {
                "word": "the",
                "start": 277.335,
                "end": 277.495,
                "confidence": 0.99316406
              },
              {
                "word": "second",
                "start": 277.495,
                "end": 277.735,
                "confidence": 0.9995117
              },
              {
                "word": "time",
                "start": 277.735,
                "end": 277.895,
                "confidence": 0.9980469
              },
              {
                "word": "but",
                "start": 278.215,
                "end": 278.455,
                "confidence": 0.9848633
              },
              {
                "word": "stitch",
                "start": 278.455,
                "end": 278.615,
                "confidence": 0.9746094
              },
              {
                "word": "stitches",
                "start": 278.615,
                "end": 279.115,
                "confidence": 0.5161133
              },
              {
                "word": "conversational",
                "start": 279.175,
                "end": 279.495,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 280.055,
                "end": 280.215,
                "confidence": 0.99560547
              },
              {
                "word": "don't",
                "start": 280.215,
                "end": 280.615,
                "confidence": 0.99658203
              },
              {
                "word": "restart",
                "start": 280.615,
                "end": 280.775,
                "confidence": 0.99902344
              },
              {
                "word": "just",
                "start": 281.18985,
                "end": 281.42953,
                "confidence": 0.9946289
              },
              {
                "word": "talk",
                "start": 281.42953,
                "end": 281.58932,
                "confidence": 0.8769531
              },
              {
                "word": "to",
                "start": 281.58932,
                "end": 281.74908,
                "confidence": 0.96435547
              },
              {
                "word": "it",
                "start": 281.74908,
                "end": 281.82898,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 282.06866,
                "end": 282.14856,
                "confidence": 0.9716797
              },
              {
                "word": "just",
                "start": 282.14856,
                "end": 282.22845,
                "confidence": 0.99316406
              },
              {
                "word": "say",
                "start": 282.22845,
                "end": 282.38824,
                "confidence": 0.98291016
              },
              {
                "word": "hey",
                "start": 282.46814,
                "end": 282.62793,
                "confidence": 0.99560547
              },
              {
                "word": "align",
                "start": 283.34695,
                "end": 283.58664,
                "confidence": 0.9975586
              },
              {
                "word": "that",
                "start": 283.58664,
                "end": 283.82632,
                "confidence": 0.9951172
              },
              {
                "word": "title",
                "start": 283.82632,
                "end": 284.1459,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 284.1459,
                "end": 284.22577,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 284.22577,
                "end": 284.38556,
                "confidence": 0.99853516
              },
              {
                "word": "left",
                "start": 284.38556,
                "end": 284.88556,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 285.1046,
                "end": 285.2644,
                "confidence": 0.9926758
              },
              {
                "word": "make",
                "start": 285.2644,
                "end": 285.50406,
                "confidence": 0.9975586
              },
              {
                "word": "that",
                "start": 285.50406,
                "end": 285.66385,
                "confidence": 0.99853516
              },
              {
                "word": "chart",
                "start": 285.66385,
                "end": 285.82364,
                "confidence": 0.97509766
              },
              {
                "word": "a",
                "start": 285.82364,
                "end": 286.06332,
                "confidence": 0.4350586
              },
              {
                "word": "circle",
                "start": 286.06332,
                "end": 286.303,
                "confidence": 0.9975586
              },
              {
                "word": "and",
                "start": 287.10193,
                "end": 287.5014,
                "confidence": 0.9970703
              },
              {
                "word": "it",
                "start": 287.5014,
                "end": 287.6612,
                "confidence": 0.9980469
              },
              {
                "word": "iterate",
                "start": 287.6612,
                "end": 287.98074,
                "confidence": 0.9819336
              },
              {
                "word": "it",
                "start": 288.14053,
                "end": 288.30032,
                "confidence": 0.9897461
              },
              {
                "word": "keeps",
                "start": 288.30032,
                "end": 288.54,
                "confidence": 1
              },
              {
                "word": "everything",
                "start": 288.54,
                "end": 288.8596,
                "confidence": 0.9995117
              },
              {
                "word": "else",
                "start": 288.8596,
                "end": 289.09924,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 289.09924,
                "end": 289.25903,
                "confidence": 0.99853516
              },
              {
                "word": "same",
                "start": 289.25903,
                "end": 289.41882,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 289.49872,
                "end": 289.7384,
                "confidence": 0.9633789
              },
              {
                "word": "colors",
                "start": 289.7384,
                "end": 290.05798,
                "confidence": 0.8515625
              },
              {
                "word": "the",
                "start": 290.05798,
                "end": 290.21777,
                "confidence": 0.99853516
              },
              {
                "word": "layout",
                "start": 290.21777,
                "end": 290.71777,
                "confidence": 0.9760742
              },
              {
                "word": "and",
                "start": 291.0167,
                "end": 291.25638,
                "confidence": 0.99853516
              },
              {
                "word": "just",
                "start": 291.25638,
                "end": 291.49606,
                "confidence": 0.99902344
              },
              {
                "word": "fixes",
                "start": 291.49606,
                "end": 291.8955,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 291.8955,
                "end": 292.29498,
                "confidence": 0.99902344
              },
              {
                "word": "mistake",
                "start": 292.29498,
                "end": 292.45477,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 292.85422,
                "end": 293.0939,
                "confidence": 0.9970703
              },
              {
                "word": "feels",
                "start": 293.0939,
                "end": 293.5939,
                "confidence": 0.9995117
              },
              {
                "word": "more",
                "start": 293.89285,
                "end": 294.1325,
                "confidence": 0.9995117
              },
              {
                "word": "like",
                "start": 294.1325,
                "end": 294.3722,
                "confidence": 0.9975586
              },
              {
                "word": "art",
                "start": 294.3722,
                "end": 294.85156,
                "confidence": 0.5566406
              },
              {
                "word": "direction",
                "start": 294.85156,
                "end": 295.25104,
                "confidence": 0.99365234
              },
              {
                "word": "than",
                "start": 295.25104,
                "end": 295.4907,
                "confidence": 0.9921875
              },
              {
                "word": "coding",
                "start": 295.4907,
                "end": 295.81027,
                "confidence": 0.94384766
              },
              {
                "word": "i",
                "start": 296.225,
                "end": 296.305,
                "confidence": 0.9995117
              },
              {
                "word": "do",
                "start": 296.305,
                "end": 296.465,
                "confidence": 0.9995117
              },
              {
                "word": "wanna",
                "start": 296.465,
                "end": 296.865,
                "confidence": 0.9394531
              },
              {
                "word": "clarify",
                "start": 296.865,
                "end": 297.345,
                "confidence": 1
              },
              {
                "word": "for",
                "start": 297.345,
                "end": 297.585,
                "confidence": 0.99853516
              },
              {
                "word": "any",
                "start": 297.585,
                "end": 297.985,
                "confidence": 0.9995117
              },
              {
                "word": "developers",
                "start": 297.985,
                "end": 298.305,
                "confidence": 0.84277344
              },
              {
                "word": "listening",
                "start": 298.305,
                "end": 298.705,
                "confidence": 0.9975586
              },
              {
                "word": "though",
                "start": 298.705,
                "end": 298.865,
                "confidence": 0.9946289
              },
              {
                "word": "when",
                "start": 299.26498,
                "end": 299.505,
                "confidence": 0.9980469
              },
              {
                "word": "we",
                "start": 299.505,
                "end": 299.665,
                "confidence": 0.99902344
              },
              {
                "word": "say",
                "start": 299.665,
                "end": 299.985,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 299.985,
                "end": 300.38498,
                "confidence": 0.99658203
              },
              {
                "word": "writes",
                "start": 300.38498,
                "end": 300.705,
                "confidence": 0.9536133
              },
              {
                "word": "the",
                "start": 300.705,
                "end": 300.865,
                "confidence": 0.99902344
              },
              {
                "word": "code",
                "start": 300.865,
                "end": 301.025,
                "confidence": 0.9995117
              },
              {
                "word": "we're",
                "start": 301.10498,
                "end": 301.345,
                "confidence": 0.9838867
              },
              {
                "word": "talking",
                "start": 301.345,
                "end": 301.665,
                "confidence": 0.9995117
              },
              {
                "word": "purely",
                "start": 301.665,
                "end": 302.165,
                "confidence": 0.9995117
              },
              {
                "word": "front",
                "start": 302.305,
                "end": 302.465,
                "confidence": 0.94921875
              },
              {
                "word": "end",
                "start": 302.465,
                "end": 302.54498,
                "confidence": 0.9667969
              },
              {
                "word": "correct",
                "start": 302.945,
                "end": 303.10498,
                "confidence": 0.9003906
              },
              {
                "word": "yes",
                "start": 303.345,
                "end": 303.425,
                "confidence": 0.9970703
              },
              {
                "word": "that",
                "start": 303.665,
                "end": 303.82498,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 303.82498,
                "end": 303.905,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 303.905,
                "end": 304.305,
                "confidence": 0.9941406
              },
              {
                "word": "crucial",
                "start": 304.305,
                "end": 304.785,
                "confidence": 1
              },
              {
                "word": "distinction",
                "start": 304.785,
                "end": 304.945,
                "confidence": 0.9995117
              },
              {
                "word": "give",
                "start": 305.66498,
                "end": 305.82498,
                "confidence": 0.71728516
              },
              {
                "word": "you",
                "start": 305.82498,
                "end": 305.905,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 305.905,
                "end": 306.065,
                "confidence": 0.9873047
              },
              {
                "word": "html",
                "start": 306.305,
                "end": 306.705,
                "confidence": 0.9868164
              },
              {
                "word": "and",
                "start": 306.705,
                "end": 306.785,
                "confidence": 0.8935547
              },
              {
                "word": "css",
                "start": 306.865,
                "end": 307.26498,
                "confidence": 0.9794922
              },
              {
                "word": "it",
                "start": 307.505,
                "end": 307.66498,
                "confidence": 0.99365234
              },
              {
                "word": "builds",
                "start": 307.66498,
                "end": 307.985,
                "confidence": 0.97314453
              },
              {
                "word": "the",
                "start": 307.985,
                "end": 308.225,
                "confidence": 0.99902344
              },
              {
                "word": "shell",
                "start": 308.225,
                "end": 308.38498,
                "confidence": 0.99658203
              },
              {
                "word": "of",
                "start": 308.38498,
                "end": 308.465,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 308.465,
                "end": 308.705,
                "confidence": 0.9970703
              },
              {
                "word": "car",
                "start": 308.705,
                "end": 308.865,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 309.425,
                "end": 309.505,
                "confidence": 0.99853516
              },
              {
                "word": "does",
                "start": 309.505,
                "end": 309.745,
                "confidence": 0.9946289
              },
              {
                "word": "not",
                "start": 309.745,
                "end": 309.985,
                "confidence": 0.9951172
              },
              {
                "word": "build",
                "start": 309.985,
                "end": 310.145,
                "confidence": 0.9736328
              },
              {
                "word": "the",
                "start": 310.145,
                "end": 310.38498,
                "confidence": 0.99902344
              },
              {
                "word": "engine",
                "start": 310.38498,
                "end": 310.465,
                "confidence": 1
              },
              {
                "word": "so",
                "start": 310.79977,
                "end": 310.95944,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 310.95944,
                "end": 311.199,
                "confidence": 0.9921875
              },
              {
                "word": "won't",
                "start": 311.199,
                "end": 311.59824,
                "confidence": 1
              },
              {
                "word": "connect",
                "start": 311.59824,
                "end": 311.7579,
                "confidence": 1
              },
              {
                "word": "to",
                "start": 311.7579,
                "end": 311.9176,
                "confidence": 0.99658203
              },
              {
                "word": "a",
                "start": 311.9176,
                "end": 311.99747,
                "confidence": 0.97998047
              },
              {
                "word": "crypto",
                "start": 312.0773,
                "end": 312.3967,
                "confidence": 0.99902344
              },
              {
                "word": "abi",
                "start": 312.47653,
                "end": 312.55637,
                "confidence": 0.8696289
              },
              {
                "word": "api",
                "start": 312.55637,
                "end": 312.87576,
                "confidence": 0.6035156
              },
              {
                "word": "or",
                "start": 312.87576,
                "end": 313.03546,
                "confidence": 0.9946289
              },
              {
                "word": "handle",
                "start": 313.03546,
                "end": 313.4347,
                "confidence": 0.99853516
              },
              {
                "word": "logins",
                "start": 313.4347,
                "end": 313.75406,
                "confidence": 0.8276367
              },
              {
                "word": "it's",
                "start": 313.99362,
                "end": 314.39285,
                "confidence": 0.8251953
              },
              {
                "word": "static",
                "start": 314.39285,
                "end": 314.71222,
                "confidence": 0.9980469
              },
              {
                "word": "ui",
                "start": 314.87192,
                "end": 315.11145,
                "confidence": 1
              },
              {
                "word": "exactly",
                "start": 315.51068,
                "end": 315.83008,
                "confidence": 0.99902344
              },
              {
                "word": "but",
                "start": 316.0696,
                "end": 316.30914,
                "confidence": 0.99902344
              },
              {
                "word": "think",
                "start": 316.30914,
                "end": 316.46884,
                "confidence": 0.9980469
              },
              {
                "word": "of",
                "start": 316.46884,
                "end": 316.62854,
                "confidence": 0.98828125
              },
              {
                "word": "the",
                "start": 316.62854,
                "end": 316.7882,
                "confidence": 0.9941406
              },
              {
                "word": "time",
                "start": 316.7882,
                "end": 317.1076,
                "confidence": 0.9633789
              },
              {
                "word": "saved",
                "start": 317.1076,
                "end": 317.34714,
                "confidence": 0.9926758
              },
              {
                "word": "just",
                "start": 318.1456,
                "end": 318.3053,
                "confidence": 0.9995117
              },
              {
                "word": "getting",
                "start": 318.3053,
                "end": 318.54483,
                "confidence": 0.9975586
              },
              {
                "word": "from",
                "start": 318.54483,
                "end": 318.70453,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 318.70453,
                "end": 318.94406,
                "confidence": 0.9975586
              },
              {
                "word": "blank",
                "start": 318.94406,
                "end": 319.26346,
                "confidence": 0.99902344
              },
              {
                "word": "page",
                "start": 319.26346,
                "end": 319.76346,
                "confidence": 0.96972656
              },
              {
                "word": "to",
                "start": 319.98206,
                "end": 320.14175,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 320.14175,
                "end": 320.30145,
                "confidence": 0.9951172
              },
              {
                "word": "coded",
                "start": 320.30145,
                "end": 320.80145,
                "confidence": 0.86621094
              },
              {
                "word": "interface",
                "start": 320.86038,
                "end": 321.36038,
                "confidence": 0.9995117
              },
              {
                "word": "that",
                "start": 321.65884,
                "end": 321.89838,
                "confidence": 0.99658203
              },
              {
                "word": "used",
                "start": 321.89838,
                "end": 322.05807,
                "confidence": 0.9975586
              },
              {
                "word": "to",
                "start": 322.05807,
                "end": 322.21777,
                "confidence": 0.99853516
              },
              {
                "word": "be",
                "start": 322.21777,
                "end": 322.4573,
                "confidence": 0.99902344
              },
              {
                "word": "days",
                "start": 322.4573,
                "end": 322.77667,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 322.77667,
                "end": 323.01624,
                "confidence": 0.9995117
              },
              {
                "word": "wire",
                "start": 323.01624,
                "end": 323.3356,
                "confidence": 0.98779297
              },
              {
                "word": "framing",
                "start": 323.3356,
                "end": 323.655,
                "confidence": 0.5385742
              },
              {
                "word": "and",
                "start": 323.655,
                "end": 323.89453,
                "confidence": 0.97314453
              },
              {
                "word": "fighting",
                "start": 323.89453,
                "end": 324.13406,
                "confidence": 0.9980469
              },
              {
                "word": "with",
                "start": 324.13406,
                "end": 324.29376,
                "confidence": 0.99609375
              },
              {
                "word": "css",
                "start": 324.3736,
                "end": 324.8736,
                "confidence": 0.9941406
              },
              {
                "word": "now",
                "start": 325.33176,
                "end": 325.5713,
                "confidence": 0.99560547
              },
              {
                "word": "it's",
                "start": 325.5713,
                "end": 325.81085,
                "confidence": 0.92041016
              },
              {
                "word": "minutes",
                "start": 325.81085,
                "end": 326.05038,
                "confidence": 0.9970703
              },
              {
                "word": "okay",
                "start": 326.46463,
                "end": 326.54446,
                "confidence": 0.99853516
              },
              {
                "word": "so",
                "start": 326.70416,
                "end": 327.02356,
                "confidence": 0.9926758
              },
              {
                "word": "you",
                "start": 327.02356,
                "end": 327.18326,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 327.18326,
                "end": 327.50262,
                "confidence": 0.9995117
              },
              {
                "word": "your",
                "start": 327.50262,
                "end": 327.90186,
                "confidence": 0.99560547
              },
              {
                "word": "interface",
                "start": 327.90186,
                "end": 328.1414,
                "confidence": 0.99902344
              },
              {
                "word": "from",
                "start": 328.1414,
                "end": 328.38095,
                "confidence": 0.99853516
              },
              {
                "word": "stitch",
                "start": 328.38095,
                "end": 328.62048,
                "confidence": 0.99121094
              },
              {
                "word": "now",
                "start": 328.93985,
                "end": 329.1794,
                "confidence": 0.9863281
              },
              {
                "word": "you've",
                "start": 329.1794,
                "end": 329.33908,
                "confidence": 0.9819336
              },
              {
                "word": "gotta",
                "start": 329.33908,
                "end": 329.65848,
                "confidence": 0.7709961
              },
              {
                "word": "sell",
                "start": 329.65848,
                "end": 329.7383,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 329.7383,
                "end": 329.81818,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 330.0577,
                "end": 330.2174,
                "confidence": 0.99853516
              },
              {
                "word": "need",
                "start": 330.2174,
                "end": 330.3771,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 330.3771,
                "end": 330.53677,
                "confidence": 0.99902344
              },
              {
                "word": "brand",
                "start": 330.53677,
                "end": 330.77634,
                "confidence": 0.99609375
              },
              {
                "word": "you",
                "start": 331.0957,
                "end": 331.2554,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 331.2554,
                "end": 331.4151,
                "confidence": 0.99902344
              },
              {
                "word": "social",
                "start": 331.4151,
                "end": 331.73447,
                "confidence": 1
              },
              {
                "word": "media",
                "start": 331.73447,
                "end": 332.05386,
                "confidence": 1
              },
              {
                "word": "posts",
                "start": 332.05386,
                "end": 332.21356,
                "confidence": 0.96240234
              },
              {
                "word": "you",
                "start": 332.4531,
                "end": 332.53293,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 332.53293,
                "end": 332.69263,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 332.69263,
                "end": 333.01202,
                "confidence": 0.99658203
              },
              {
                "word": "consistent",
                "start": 333.01202,
                "end": 333.41125,
                "confidence": 0.9995117
              },
              {
                "word": "look",
                "start": 333.41125,
                "end": 333.57092,
                "confidence": 0.9970703
              },
              {
                "word": "and",
                "start": 333.57092,
                "end": 333.8105,
                "confidence": 0.99316406
              },
              {
                "word": "feel",
                "start": 333.8105,
                "end": 334.05002,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 334.28955,
                "end": 334.44925,
                "confidence": 0.99316406
              },
              {
                "word": "this",
                "start": 334.44925,
                "end": 334.60895,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 334.60895,
                "end": 334.76862,
                "confidence": 0.99853516
              },
              {
                "word": "where",
                "start": 334.76862,
                "end": 335.16785,
                "confidence": 0.99902344
              },
              {
                "word": "honestly",
                "start": 335.16785,
                "end": 335.48724,
                "confidence": 0.9995117
              },
              {
                "word": "most",
                "start": 335.64694,
                "end": 335.9663,
                "confidence": 0.99902344
              },
              {
                "word": "small",
                "start": 335.9663,
                "end": 336.126,
                "confidence": 1
              },
              {
                "word": "business",
                "start": 336.126,
                "end": 336.4454,
                "confidence": 0.69873047
              },
              {
                "word": "is",
                "start": 336.4454,
                "end": 336.68494,
                "confidence": 0.5019531
              },
              {
                "word": "just",
                "start": 336.68494,
                "end": 337.08417,
                "confidence": 0.9980469
              },
              {
                "word": "completely",
                "start": 337.08417,
                "end": 337.4834,
                "confidence": 0.9995117
              },
              {
                "word": "fall",
                "start": 337.4834,
                "end": 337.8028,
                "confidence": 0.8930664
              },
              {
                "word": "apart",
                "start": 337.8028,
                "end": 337.88263,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 338.28186,
                "end": 338.44156,
                "confidence": 0.9760742
              },
              {
                "word": "data",
                "start": 338.44156,
                "end": 338.76093,
                "confidence": 0.9970703
              },
              {
                "word": "here",
                "start": 338.76093,
                "end": 338.92062,
                "confidence": 0.99853516
              },
              {
                "word": "is",
                "start": 338.92062,
                "end": 339.16016,
                "confidence": 0.99902344
              },
              {
                "word": "brutal",
                "start": 339.16016,
                "end": 339.39972,
                "confidence": 1
              },
              {
                "word": "something",
                "start": 339.63925,
                "end": 339.95862,
                "confidence": 0.99853516
              },
              {
                "word": "like",
                "start": 339.95862,
                "end": 340.278,
                "confidence": 0.9975586
              },
              {
                "word": "seventy",
                "start": 340.278,
                "end": 340.67725,
                "confidence": 0.99853516
              },
              {
                "word": "three",
                "start": 340.67725,
                "end": 340.99664,
                "confidence": 0.9995117
              },
              {
                "word": "percent",
                "start": 340.99664,
                "end": 341.1563,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 341.1563,
                "end": 341.23618,
                "confidence": 0.99902344
              },
              {
                "word": "them",
                "start": 341.23618,
                "end": 341.4757,
                "confidence": 0.99853516
              },
              {
                "word": "say",
                "start": 341.4757,
                "end": 341.6354,
                "confidence": 0.99853516
              },
              {
                "word": "they",
                "start": 341.6354,
                "end": 341.85,
                "confidence": 0.99609375
              },
              {
                "word": "struggle",
                "start": 341.96964,
                "end": 342.20886,
                "confidence": 0.99902344
              },
              {
                "word": "with",
                "start": 342.20886,
                "end": 342.4481,
                "confidence": 0.9995117
              },
              {
                "word": "messaging",
                "start": 342.4481,
                "end": 342.68732,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 342.92657,
                "end": 343.08606,
                "confidence": 0.9970703
              },
              {
                "word": "even",
                "start": 343.08606,
                "end": 343.3253,
                "confidence": 1
              },
              {
                "word": "more",
                "start": 343.3253,
                "end": 343.5645,
                "confidence": 0.99902344
              },
              {
                "word": "seventy",
                "start": 343.8835,
                "end": 344.28223,
                "confidence": 0.99658203
              },
              {
                "word": "seven",
                "start": 344.28223,
                "end": 344.6012,
                "confidence": 0.99902344
              },
              {
                "word": "percent",
                "start": 344.6012,
                "end": 344.99994,
                "confidence": 0.9975586
              },
              {
                "word": "admit",
                "start": 344.99994,
                "end": 345.3189,
                "confidence": 0.9995117
              },
              {
                "word": "they",
                "start": 345.3189,
                "end": 345.4784,
                "confidence": 0.9980469
              },
              {
                "word": "just",
                "start": 345.4784,
                "end": 345.63788,
                "confidence": 0.99902344
              },
              {
                "word": "post",
                "start": 345.63788,
                "end": 345.95688,
                "confidence": 0.9975586
              },
              {
                "word": "off",
                "start": 345.95688,
                "end": 346.27585,
                "confidence": 0.99072266
              },
              {
                "word": "brand",
                "start": 346.27585,
                "end": 346.67456,
                "confidence": 0.9892578
              },
              {
                "word": "content",
                "start": 346.67456,
                "end": 347.15305,
                "confidence": 0.9995117
              },
              {
                "word": "because",
                "start": 347.15305,
                "end": 347.2328,
                "confidence": 0.99902344
              },
              {
                "word": "they",
                "start": 347.2328,
                "end": 347.39227,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 347.39227,
                "end": 347.55176,
                "confidence": 1
              },
              {
                "word": "to",
                "start": 347.55176,
                "end": 347.6315,
                "confidence": 0.99853516
              },
              {
                "word": "get",
                "start": 347.6315,
                "end": 347.79102,
                "confidence": 1
              },
              {
                "word": "something",
                "start": 347.79102,
                "end": 348.11,
                "confidence": 0.9995117
              },
              {
                "word": "out",
                "start": 348.11,
                "end": 348.18973,
                "confidence": 0.9980469
              },
              {
                "word": "i've",
                "start": 348.5087,
                "end": 348.66818,
                "confidence": 0.9970703
              },
              {
                "word": "been",
                "start": 348.66818,
                "end": 348.8277,
                "confidence": 1
              },
              {
                "word": "there",
                "start": 348.8277,
                "end": 348.98718,
                "confidence": 0.9995117
              },
              {
                "word": "you've",
                "start": 349.2264,
                "end": 349.3859,
                "confidence": 0.99853516
              },
              {
                "word": "been",
                "start": 349.3859,
                "end": 349.62512,
                "confidence": 0.9995117
              },
              {
                "word": "there",
                "start": 349.62512,
                "end": 349.70486,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 350.02386,
                "end": 350.2631,
                "confidence": 0.9819336
              },
              {
                "word": "four",
                "start": 350.2631,
                "end": 350.42258,
                "confidence": 0.99853516
              },
              {
                "word": "pm",
                "start": 350.58206,
                "end": 350.82132,
                "confidence": 0.98095703
              },
              {
                "word": "you",
                "start": 351.06055,
                "end": 351.29977,
                "confidence": 0.9975586
              },
              {
                "word": "haven't",
                "start": 351.29977,
                "end": 351.45926,
                "confidence": 0.97509766
              },
              {
                "word": "posted",
                "start": 351.45926,
                "end": 351.77826,
                "confidence": 0.9975586
              },
              {
                "word": "on",
                "start": 351.77826,
                "end": 351.93774,
                "confidence": 0.99902344
              },
              {
                "word": "instagram",
                "start": 352.2567,
                "end": 352.33646,
                "confidence": 1
              },
              {
                "word": "so",
                "start": 352.49594,
                "end": 352.65543,
                "confidence": 0.95996094
              },
              {
                "word": "you",
                "start": 352.65543,
                "end": 352.81494,
                "confidence": 0.9091797
              },
              {
                "word": "just",
                "start": 352.81494,
                "end": 353.31494,
                "confidence": 0.9980469
              },
              {
                "word": "grab",
                "start": 353.45288,
                "end": 353.61237,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 353.61237,
                "end": 353.85162,
                "confidence": 0.99902344
              },
              {
                "word": "random",
                "start": 353.85162,
                "end": 354.25034,
                "confidence": 0.9995117
              },
              {
                "word": "can",
                "start": 354.25034,
                "end": 354.64905,
                "confidence": 0.47583008
              },
              {
                "word": "template",
                "start": 354.64905,
                "end": 354.96805,
                "confidence": 0.99853516
              },
              {
                "word": "that",
                "start": 354.96805,
                "end": 355.12753,
                "confidence": 0.9975586
              },
              {
                "word": "looks",
                "start": 355.12753,
                "end": 355.36676,
                "confidence": 0.9995117
              },
              {
                "word": "nothing",
                "start": 355.36676,
                "end": 355.68576,
                "confidence": 1
              },
              {
                "word": "like",
                "start": 355.68576,
                "end": 355.84525,
                "confidence": 0.9995117
              },
              {
                "word": "your",
                "start": 355.84525,
                "end": 356.24396,
                "confidence": 0.9995117
              },
              {
                "word": "website",
                "start": 356.24396,
                "end": 356.72244,
                "confidence": 0.99365234
              },
              {
                "word": "and",
                "start": 356.72244,
                "end": 356.96167,
                "confidence": 0.99902344
              },
              {
                "word": "hit",
                "start": 356.96167,
                "end": 357.2009,
                "confidence": 0.99853516
              },
              {
                "word": "publish",
                "start": 357.2009,
                "end": 357.36038,
                "confidence": 0.63671875
              },
              {
                "word": "and",
                "start": 357.69424,
                "end": 357.85367,
                "confidence": 0.99853516
              },
              {
                "word": "every",
                "start": 357.85367,
                "end": 358.01306,
                "confidence": 0.9975586
              },
              {
                "word": "time",
                "start": 358.01306,
                "end": 358.2522,
                "confidence": 0.9941406
              },
              {
                "word": "you",
                "start": 358.2522,
                "end": 358.33188,
                "confidence": 0.99902344
              },
              {
                "word": "do",
                "start": 358.33188,
                "end": 358.4913,
                "confidence": 0.9995117
              },
              {
                "word": "that",
                "start": 358.4913,
                "end": 358.571,
                "confidence": 0.99853516
              },
              {
                "word": "you're",
                "start": 358.7304,
                "end": 359.12894,
                "confidence": 0.9946289
              },
              {
                "word": "confusing",
                "start": 359.12894,
                "end": 359.44775,
                "confidence": 0.99902344
              },
              {
                "word": "your",
                "start": 359.44775,
                "end": 359.60715,
                "confidence": 0.99902344
              },
              {
                "word": "customers",
                "start": 359.60715,
                "end": 359.92596,
                "confidence": 0.9975586
              },
              {
                "word": "you're",
                "start": 360.16507,
                "end": 360.5636,
                "confidence": 0.99121094
              },
              {
                "word": "diluting",
                "start": 360.5636,
                "end": 360.8027,
                "confidence": 0.88378906
              },
              {
                "word": "the",
                "start": 360.8027,
                "end": 361.04184,
                "confidence": 0.9995117
              },
              {
                "word": "brand",
                "start": 361.04184,
                "end": 361.28094,
                "confidence": 0.99853516
              },
              {
                "word": "this",
                "start": 361.52005,
                "end": 361.59976,
                "confidence": 1
              },
              {
                "word": "is",
                "start": 361.59976,
                "end": 361.75916,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 361.75916,
                "end": 361.9983,
                "confidence": 0.99902344
              },
              {
                "word": "problem",
                "start": 361.9983,
                "end": 362.15768,
                "confidence": 1
              },
              {
                "word": "is",
                "start": 362.63593,
                "end": 362.7156,
                "confidence": 0.8066406
              },
              {
                "word": "trying",
                "start": 362.7156,
                "end": 362.87503,
                "confidence": 0.99658203
              },
              {
                "word": "to",
                "start": 362.87503,
                "end": 363.03442,
                "confidence": 0.99853516
              },
              {
                "word": "solve",
                "start": 363.03442,
                "end": 363.11414,
                "confidence": 0.99853516
              },
              {
                "word": "they're",
                "start": 363.99088,
                "end": 364.3894,
                "confidence": 0.9897461
              },
              {
                "word": "pitching",
                "start": 364.3894,
                "end": 364.46912,
                "confidence": 1
              },
              {
                "word": "it",
                "start": 364.46912,
                "end": 364.70822,
                "confidence": 0.99658203
              },
              {
                "word": "as",
                "start": 364.70822,
                "end": 364.8676,
                "confidence": 0.9995117
              },
              {
                "word": "an",
                "start": 364.8676,
                "end": 365.34586,
                "confidence": 0.99853516
              },
              {
                "word": "automated",
                "start": 365.34586,
                "end": 365.7444,
                "confidence": 0.9995117
              },
              {
                "word": "marketing",
                "start": 365.7444,
                "end": 366.2226,
                "confidence": 0.9995117
              },
              {
                "word": "department",
                "start": 366.2226,
                "end": 366.5414,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 366.93994,
                "end": 367.09933,
                "confidence": 0.9975586
              },
              {
                "word": "in",
                "start": 367.09933,
                "end": 367.25876,
                "confidence": 0.99853516
              },
              {
                "word": "beta",
                "start": 367.25876,
                "end": 367.57758,
                "confidence": 0.9975586
              },
              {
                "word": "now",
                "start": 367.57758,
                "end": 367.81668,
                "confidence": 0.99853516
              },
              {
                "word": "in",
                "start": 367.81668,
                "end": 367.8964,
                "confidence": 0.9926758
              },
              {
                "word": "the",
                "start": 367.8964,
                "end": 368.0558,
                "confidence": 0.984375
              },
              {
                "word": "us",
                "start": 368.29492,
                "end": 368.4543,
                "confidence": 0.9848633
              },
              {
                "word": "canada",
                "start": 368.6137,
                "end": 369.01224,
                "confidence": 0.99560547
              },
              {
                "word": "australia",
                "start": 369.72958,
                "end": 369.9687,
                "confidence": 0.9760742
              },
              {
                "word": "new",
                "start": 370.2078,
                "end": 370.2875,
                "confidence": 0.99902344
              },
              {
                "word": "zealand",
                "start": 370.36722,
                "end": 370.68604,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 371.1794,
                "end": 371.41873,
                "confidence": 0.9868164
              },
              {
                "word": "setup",
                "start": 371.41873,
                "end": 371.73776,
                "confidence": 0.97314453
              },
              {
                "word": "process",
                "start": 371.73776,
                "end": 372.05682,
                "confidence": 0.99365234
              },
              {
                "word": "is",
                "start": 372.05682,
                "end": 372.21637,
                "confidence": 0.97558594
              },
              {
                "word": "what",
                "start": 372.21637,
                "end": 372.45566,
                "confidence": 0.9995117
              },
              {
                "word": "really",
                "start": 372.45566,
                "end": 372.69495,
                "confidence": 0.9995117
              },
              {
                "word": "struck",
                "start": 372.69495,
                "end": 372.8545,
                "confidence": 0.9975586
              },
              {
                "word": "me",
                "start": 372.8545,
                "end": 372.93423,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 373.17355,
                "end": 373.2533,
                "confidence": 0.9995117
              },
              {
                "word": "don't",
                "start": 373.2533,
                "end": 373.65213,
                "confidence": 0.9995117
              },
              {
                "word": "upload",
                "start": 373.65213,
                "end": 373.89142,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 373.89142,
                "end": 374.05096,
                "confidence": 0.9975586
              },
              {
                "word": "brand",
                "start": 374.05096,
                "end": 374.37003,
                "confidence": 0.99658203
              },
              {
                "word": "guide",
                "start": 374.37003,
                "end": 374.8486,
                "confidence": 0.9897461
              },
              {
                "word": "or",
                "start": 374.8486,
                "end": 375.32718,
                "confidence": 0.9995117
              },
              {
                "word": "type",
                "start": 375.32718,
                "end": 375.48672,
                "confidence": 0.9975586
              },
              {
                "word": "in",
                "start": 375.48672,
                "end": 375.64624,
                "confidence": 0.99560547
              },
              {
                "word": "your",
                "start": 375.64624,
                "end": 375.8058,
                "confidence": 0.99902344
              },
              {
                "word": "color",
                "start": 375.8058,
                "end": 376.12485,
                "confidence": 0.99853516
              },
              {
                "word": "codes",
                "start": 376.12485,
                "end": 376.28436,
                "confidence": 0.9975586
              },
              {
                "word": "nope",
                "start": 376.76294,
                "end": 376.9225,
                "confidence": 0.96484375
              },
              {
                "word": "it's",
                "start": 377.32132,
                "end": 377.5606,
                "confidence": 0.9863281
              },
              {
                "word": "much",
                "start": 377.5606,
                "end": 377.7999,
                "confidence": 0.9995117
              },
              {
                "word": "easier",
                "start": 377.7999,
                "end": 378.2999,
                "confidence": 0.99365234
              },
              {
                "word": "and",
                "start": 378.43802,
                "end": 378.59753,
                "confidence": 0.9873047
              },
              {
                "word": "a",
                "start": 378.59753,
                "end": 378.75708,
                "confidence": 0.99658203
              },
              {
                "word": "good",
                "start": 378.75708,
                "end": 378.9166,
                "confidence": 0.9995117
              },
              {
                "word": "way",
                "start": 378.9166,
                "end": 379.07614,
                "confidence": 0.99365234
              },
              {
                "word": "you",
                "start": 379.3952,
                "end": 379.55472,
                "confidence": 0.99853516
              },
              {
                "word": "just",
                "start": 379.55472,
                "end": 379.71423,
                "confidence": 0.99902344
              },
              {
                "word": "give",
                "start": 379.71423,
                "end": 379.794,
                "confidence": 0.97998047
              },
              {
                "word": "it",
                "start": 379.794,
                "end": 380.0333,
                "confidence": 0.9868164
              },
              {
                "word": "your",
                "start": 380.0333,
                "end": 380.43213,
                "confidence": 0.9980469
              },
              {
                "word": "website's",
                "start": 380.43213,
                "end": 380.59164,
                "confidence": 0.98339844
              },
              {
                "word": "url",
                "start": 380.7512,
                "end": 381.07025,
                "confidence": 0.99853516
              },
              {
                "word": "that's",
                "start": 381.30954,
                "end": 381.46906,
                "confidence": 0.9951172
              },
              {
                "word": "it",
                "start": 381.46906,
                "end": 381.54883,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 381.70837,
                "end": 381.78812,
                "confidence": 0.99658203
              },
              {
                "word": "goes",
                "start": 381.78812,
                "end": 381.94766,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 381.94766,
                "end": 382.10718,
                "confidence": 0.96875
              },
              {
                "word": "crawls",
                "start": 382.10718,
                "end": 382.3465,
                "confidence": 0.9375
              },
              {
                "word": "your",
                "start": 382.3465,
                "end": 382.506,
                "confidence": 0.9975586
              },
              {
                "word": "site",
                "start": 382.506,
                "end": 382.5858,
                "confidence": 0.95654297
              },
              {
                "word": "and",
                "start": 382.82507,
                "end": 382.90485,
                "confidence": 0.99365234
              },
              {
                "word": "it",
                "start": 382.90485,
                "end": 383.06436,
                "confidence": 0.9921875
              },
              {
                "word": "just",
                "start": 383.06436,
                "end": 383.22388,
                "confidence": 0.9995117
              },
              {
                "word": "figures",
                "start": 383.22388,
                "end": 383.4632,
                "confidence": 0.9951172
              },
              {
                "word": "it",
                "start": 383.4632,
                "end": 383.54294,
                "confidence": 0.99902344
              },
              {
                "word": "out",
                "start": 383.54294,
                "end": 383.70248,
                "confidence": 0.9921875
              },
              {
                "word": "it",
                "start": 383.94177,
                "end": 384.10132,
                "confidence": 0.9921875
              },
              {
                "word": "figures",
                "start": 384.10132,
                "end": 384.26083,
                "confidence": 0.8022461
              },
              {
                "word": "it",
                "start": 384.26083,
                "end": 384.3406,
                "confidence": 0.9970703
              },
              {
                "word": "out",
                "start": 384.3406,
                "end": 384.42035,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 384.6745,
                "end": 385.15256,
                "confidence": 0.9995117
              },
              {
                "word": "extracts",
                "start": 385.15256,
                "end": 385.55093,
                "confidence": 0.99560547
              },
              {
                "word": "your",
                "start": 385.55093,
                "end": 385.86963,
                "confidence": 0.99902344
              },
              {
                "word": "fonts",
                "start": 385.86963,
                "end": 386.10867,
                "confidence": 0.94189453
              },
              {
                "word": "your",
                "start": 386.268,
                "end": 386.5867,
                "confidence": 0.99902344
              },
              {
                "word": "exact",
                "start": 386.5867,
                "end": 386.90543,
                "confidence": 0.99902344
              },
              {
                "word": "color",
                "start": 386.90543,
                "end": 387.22412,
                "confidence": 0.9926758
              },
              {
                "word": "palette",
                "start": 387.22412,
                "end": 387.6225,
                "confidence": 0.9536133
              },
              {
                "word": "down",
                "start": 387.6225,
                "end": 387.9412,
                "confidence": 0.99902344
              },
              {
                "word": "to",
                "start": 387.9412,
                "end": 388.10056,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 388.10056,
                "end": 388.49893,
                "confidence": 0.9428711
              },
              {
                "word": "specific",
                "start": 388.49893,
                "end": 388.81763,
                "confidence": 1
              },
              {
                "word": "hex",
                "start": 388.81763,
                "end": 389.05664,
                "confidence": 0.99560547
              },
              {
                "word": "code",
                "start": 389.05664,
                "end": 389.2957,
                "confidence": 0.98535156
              },
              {
                "word": "like",
                "start": 389.7737,
                "end": 390.01276,
                "confidence": 0.99316406
              },
              {
                "word": "hashtag",
                "start": 390.01276,
                "end": 390.51276,
                "confidence": 0.98535156
              },
              {
                "word": "f",
                "start": 390.57047,
                "end": 390.96884,
                "confidence": 0.9975586
              },
              {
                "word": "six",
                "start": 390.96884,
                "end": 391.28757,
                "confidence": 0.9506836
              },
              {
                "word": "b",
                "start": 391.28757,
                "end": 391.4469,
                "confidence": 0.9692383
              },
              {
                "word": "three",
                "start": 391.4469,
                "end": 391.68594,
                "confidence": 0.9819336
              },
              {
                "word": "five",
                "start": 391.68594,
                "end": 391.92496,
                "confidence": 0.98876953
              },
              {
                "word": "and",
                "start": 392.164,
                "end": 392.32333,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 392.32333,
                "end": 392.4827,
                "confidence": 0.99902344
              },
              {
                "word": "even",
                "start": 392.4827,
                "end": 392.88107,
                "confidence": 0.99853516
              },
              {
                "word": "analyzes",
                "start": 392.88107,
                "end": 393.19977,
                "confidence": 0.99609375
              },
              {
                "word": "your",
                "start": 393.19977,
                "end": 393.35913,
                "confidence": 0.99902344
              },
              {
                "word": "tone",
                "start": 393.35913,
                "end": 393.51846,
                "confidence": 0.9902344
              },
              {
                "word": "of",
                "start": 393.51846,
                "end": 393.67783,
                "confidence": 0.99609375
              },
              {
                "word": "voice",
                "start": 393.67783,
                "end": 393.91684,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 394.31522,
                "end": 394.55426,
                "confidence": 0.9995117
              },
              {
                "word": "builds",
                "start": 394.55426,
                "end": 394.87296,
                "confidence": 0.9873047
              },
              {
                "word": "what",
                "start": 394.87296,
                "end": 394.95264,
                "confidence": 0.9980469
              },
              {
                "word": "it",
                "start": 394.95264,
                "end": 395.19165,
                "confidence": 0.9975586
              },
              {
                "word": "calls",
                "start": 395.19165,
                "end": 395.351,
                "confidence": 0.99121094
              },
              {
                "word": "your",
                "start": 395.351,
                "end": 395.82904,
                "confidence": 0.9980469
              },
              {
                "word": "business",
                "start": 395.82904,
                "end": 396.14777,
                "confidence": 0.99902344
              },
              {
                "word": "dna",
                "start": 396.3071,
                "end": 396.70547,
                "confidence": 0.99316406
              },
              {
                "word": "business",
                "start": 397.2793,
                "end": 397.67868,
                "confidence": 0.99902344
              },
              {
                "word": "dna",
                "start": 397.83844,
                "end": 398.07806,
                "confidence": 0.99560547
              },
              {
                "word": "it",
                "start": 398.3177,
                "end": 398.39755,
                "confidence": 0.99902344
              },
              {
                "word": "sounds",
                "start": 398.39755,
                "end": 398.5573,
                "confidence": 0.9980469
              },
              {
                "word": "like",
                "start": 398.5573,
                "end": 398.71707,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 398.71707,
                "end": 398.79694,
                "confidence": 0.98828125
              },
              {
                "word": "marketing",
                "start": 398.79694,
                "end": 399.27618,
                "confidence": 0.9995117
              },
              {
                "word": "buzz",
                "start": 399.27618,
                "end": 399.5158,
                "confidence": 1
              },
              {
                "word": "word",
                "start": 399.5158,
                "end": 399.67557,
                "confidence": 0.17993164
              },
              {
                "word": "but",
                "start": 399.75543,
                "end": 399.9152,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 399.9152,
                "end": 400.07492,
                "confidence": 0.99902344
              },
              {
                "word": "demos",
                "start": 400.07492,
                "end": 400.39444,
                "confidence": 0.9941406
              },
              {
                "word": "are",
                "start": 400.39444,
                "end": 400.55417,
                "confidence": 0.99609375
              },
              {
                "word": "actually",
                "start": 400.55417,
                "end": 400.79382,
                "confidence": 0.99853516
              },
              {
                "word": "pretty",
                "start": 400.79382,
                "end": 401.19318,
                "confidence": 1
              },
              {
                "word": "convincing",
                "start": 401.19318,
                "end": 401.4328,
                "confidence": 1
              },
              {
                "word": "they",
                "start": 401.67242,
                "end": 401.91205,
                "confidence": 0.9980469
              },
              {
                "word": "were",
                "start": 401.91205,
                "end": 401.99194,
                "confidence": 0.9916992
              },
              {
                "word": "they",
                "start": 402.3913,
                "end": 402.55106,
                "confidence": 0.99658203
              },
              {
                "word": "showed",
                "start": 402.55106,
                "end": 402.71082,
                "confidence": 0.9682617
              },
              {
                "word": "a",
                "start": 402.71082,
                "end": 402.87054,
                "confidence": 0.9838867
              },
              {
                "word": "local",
                "start": 402.87054,
                "end": 403.0303,
                "confidence": 0.9980469
              },
              {
                "word": "pizza",
                "start": 403.11017,
                "end": 403.34982,
                "confidence": 0.99853516
              },
              {
                "word": "shop",
                "start": 403.34982,
                "end": 403.4297,
                "confidence": 0.99316406
              },
              {
                "word": "the",
                "start": 403.58945,
                "end": 403.74918,
                "confidence": 0.9980469
              },
              {
                "word": "owner",
                "start": 403.74918,
                "end": 403.9888,
                "confidence": 0.9916992
              },
              {
                "word": "just",
                "start": 403.9888,
                "end": 404.14856,
                "confidence": 0.9995117
              },
              {
                "word": "typed",
                "start": 404.14856,
                "end": 404.38818,
                "confidence": 0.99853516
              },
              {
                "word": "in",
                "start": 404.38818,
                "end": 404.6278,
                "confidence": 0.99902344
              },
              {
                "word": "two",
                "start": 404.6278,
                "end": 404.78757,
                "confidence": 0.9975586
              },
              {
                "word": "for",
                "start": 404.78757,
                "end": 404.9473,
                "confidence": 0.99121094
              },
              {
                "word": "one",
                "start": 404.9473,
                "end": 405.10706,
                "confidence": 0.99902344
              },
              {
                "word": "pizza",
                "start": 405.18692,
                "end": 405.42654,
                "confidence": 0.9995117
              },
              {
                "word": "thursdays",
                "start": 405.50644,
                "end": 405.90582,
                "confidence": 0.9770508
              },
              {
                "word": "pamela",
                "start": 406.70456,
                "end": 406.86432,
                "confidence": 0.1977539
              },
              {
                "word": "mel",
                "start": 406.86432,
                "end": 407.1838,
                "confidence": 0.007785797
              },
              {
                "word": "generated",
                "start": 407.1838,
                "end": 407.6838,
                "confidence": 0.9995117
              },
              {
                "word": "instagram",
                "start": 407.98254,
                "end": 408.30206,
                "confidence": 1
              },
              {
                "word": "stories",
                "start": 408.30206,
                "end": 408.62155,
                "confidence": 0.9995117
              },
              {
                "word": "in",
                "start": 408.62155,
                "end": 408.70145,
                "confidence": 0.6826172
              },
              {
                "word": "facebook",
                "start": 408.86118,
                "end": 409.26056,
                "confidence": 0.99853516
              },
              {
                "word": "post",
                "start": 409.26056,
                "end": 409.635,
                "confidence": 0.8491211
              },
              {
                "word": "that",
                "start": 409.755,
                "end": 409.915,
                "confidence": 0.99658203
              },
              {
                "word": "look",
                "start": 409.915,
                "end": 410.075,
                "confidence": 0.65625
              },
              {
                "word": "like",
                "start": 410.075,
                "end": 410.23502,
                "confidence": 0.9995117
              },
              {
                "word": "his",
                "start": 410.23502,
                "end": 410.39502,
                "confidence": 0.99658203
              },
              {
                "word": "pizza",
                "start": 410.39502,
                "end": 410.715,
                "confidence": 0.9995117
              },
              {
                "word": "shop",
                "start": 410.715,
                "end": 410.875,
                "confidence": 0.97509766
              },
              {
                "word": "they",
                "start": 411.355,
                "end": 411.435,
                "confidence": 0.65527344
              },
              {
                "word": "had",
                "start": 411.435,
                "end": 411.515,
                "confidence": 0.48583984
              },
              {
                "word": "his",
                "start": 411.515,
                "end": 411.755,
                "confidence": 0.75146484
              },
              {
                "word": "font",
                "start": 411.755,
                "end": 411.915,
                "confidence": 0.80029297
              },
              {
                "word": "his",
                "start": 412.075,
                "end": 412.315,
                "confidence": 0.98046875
              },
              {
                "word": "casual",
                "start": 412.315,
                "end": 412.795,
                "confidence": 0.9926758
              },
              {
                "word": "you",
                "start": 413.195,
                "end": 413.355,
                "confidence": 0.9921875
              },
              {
                "word": "know",
                "start": 413.355,
                "end": 413.435,
                "confidence": 0.9863281
              },
              {
                "word": "slightly",
                "start": 413.67502,
                "end": 414.075,
                "confidence": 0.99902344
              },
              {
                "word": "greasy",
                "start": 414.075,
                "end": 414.315,
                "confidence": 1
              },
              {
                "word": "in",
                "start": 414.315,
                "end": 414.39502,
                "confidence": 0.8173828
              },
              {
                "word": "a",
                "start": 414.39502,
                "end": 414.55502,
                "confidence": 0.9951172
              },
              {
                "word": "good",
                "start": 414.55502,
                "end": 414.715,
                "confidence": 0.99853516
              },
              {
                "word": "way",
                "start": 414.715,
                "end": 414.95502,
                "confidence": 0.95410156
              },
              {
                "word": "tone",
                "start": 414.95502,
                "end": 415.11502,
                "confidence": 0.89501953
              },
              {
                "word": "right",
                "start": 415.435,
                "end": 415.515,
                "confidence": 0.99658203
              },
              {
                "word": "versus",
                "start": 415.67502,
                "end": 415.995,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 415.995,
                "end": 416.155,
                "confidence": 0.9995117
              },
              {
                "word": "other",
                "start": 416.155,
                "end": 416.475,
                "confidence": 0.99902344
              },
              {
                "word": "example",
                "start": 416.475,
                "end": 416.635,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 416.715,
                "end": 416.795,
                "confidence": 0.66064453
              },
              {
                "word": "the",
                "start": 416.795,
                "end": 417.195,
                "confidence": 0.984375
              },
              {
                "word": "skincare",
                "start": 417.195,
                "end": 417.435,
                "confidence": 0.5053711
              },
              {
                "word": "brand",
                "start": 417.435,
                "end": 417.515,
                "confidence": 0.99365234
              },
              {
                "word": "totally",
                "start": 417.755,
                "end": 418.075,
                "confidence": 0.9995117
              },
              {
                "word": "different",
                "start": 418.075,
                "end": 418.39502,
                "confidence": 0.9975586
              },
              {
                "word": "vibe",
                "start": 418.39502,
                "end": 418.55502,
                "confidence": 0.99853516
              },
              {
                "word": "clean",
                "start": 419.195,
                "end": 419.435,
                "confidence": 0.9970703
              },
              {
                "word": "minimal",
                "start": 419.83502,
                "end": 420.23502,
                "confidence": 0.9975586
              },
              {
                "word": "scientific",
                "start": 420.875,
                "end": 421.375,
                "confidence": 0.99902344
              },
              {
                "word": "p",
                "start": 421.9286,
                "end": 422.40622,
                "confidence": 0.25195312
              },
              {
                "word": "generated",
                "start": 422.40622,
                "end": 422.90622,
                "confidence": 1
              },
              {
                "word": "twelve",
                "start": 422.96344,
                "end": 423.36145,
                "confidence": 0.99902344
              },
              {
                "word": "different",
                "start": 423.36145,
                "end": 423.67984,
                "confidence": 0.99902344
              },
              {
                "word": "assets",
                "start": 423.67984,
                "end": 424.17984,
                "confidence": 0.9926758
              },
              {
                "word": "for",
                "start": 424.23706,
                "end": 424.39627,
                "confidence": 0.9980469
              },
              {
                "word": "their",
                "start": 424.39627,
                "end": 424.55548,
                "confidence": 0.9873047
              },
              {
                "word": "new",
                "start": 424.55548,
                "end": 424.79428,
                "confidence": 0.99902344
              },
              {
                "word": "serum",
                "start": 424.79428,
                "end": 425.1127,
                "confidence": 0.9921875
              },
              {
                "word": "launch",
                "start": 425.1127,
                "end": 425.2719,
                "confidence": 0.9980469
              },
              {
                "word": "at",
                "start": 425.66992,
                "end": 425.90872,
                "confidence": 0.67333984
              },
              {
                "word": "about",
                "start": 425.90872,
                "end": 426.14752,
                "confidence": 0.9980469
              },
              {
                "word": "ninety",
                "start": 426.14752,
                "end": 426.46594,
                "confidence": 0.9980469
              },
              {
                "word": "seconds",
                "start": 426.46594,
                "end": 426.70474,
                "confidence": 0.9980469
              },
              {
                "word": "ninety",
                "start": 426.94354,
                "end": 427.26196,
                "confidence": 0.9892578
              },
              {
                "word": "seconds",
                "start": 427.26196,
                "end": 427.42117,
                "confidence": 0.99658203
              },
              {
                "word": "that",
                "start": 427.58035,
                "end": 427.73956,
                "confidence": 0.99121094
              },
              {
                "word": "is",
                "start": 427.73956,
                "end": 427.81918,
                "confidence": 0.9863281
              },
              {
                "word": "that's",
                "start": 428.05798,
                "end": 428.2172,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 428.2172,
                "end": 428.37637,
                "confidence": 0.99609375
              },
              {
                "word": "whole",
                "start": 428.37637,
                "end": 428.6152,
                "confidence": 0.99902344
              },
              {
                "word": "week",
                "start": 428.6152,
                "end": 428.77438,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 428.77438,
                "end": 429.0132,
                "confidence": 0.99902344
              },
              {
                "word": "content",
                "start": 429.0132,
                "end": 429.41122,
                "confidence": 0.9980469
              },
              {
                "word": "for",
                "start": 429.41122,
                "end": 429.4908,
                "confidence": 0.9951172
              },
              {
                "word": "a",
                "start": 429.4908,
                "end": 429.65002,
                "confidence": 0.6845703
              },
              {
                "word": "social",
                "start": 429.65002,
                "end": 429.88882,
                "confidence": 1
              },
              {
                "word": "media",
                "start": 429.88882,
                "end": 430.28683,
                "confidence": 1
              },
              {
                "word": "manager",
                "start": 430.28683,
                "end": 430.52563,
                "confidence": 0.9926758
              },
              {
                "word": "but",
                "start": 430.68484,
                "end": 430.84406,
                "confidence": 0.9970703
              },
              {
                "word": "is",
                "start": 430.84406,
                "end": 430.92365,
                "confidence": 0.99560547
              },
              {
                "word": "it",
                "start": 430.92365,
                "end": 431.08286,
                "confidence": 0.9926758
              },
              {
                "word": "any",
                "start": 431.08286,
                "end": 431.32166,
                "confidence": 0.99902344
              },
              {
                "word": "good",
                "start": 431.32166,
                "end": 431.48087,
                "confidence": 0.99853516
              },
              {
                "word": "or",
                "start": 431.7993,
                "end": 432.0381,
                "confidence": 0.9921875
              },
              {
                "word": "is",
                "start": 432.0381,
                "end": 432.1973,
                "confidence": 0.9272461
              },
              {
                "word": "it",
                "start": 432.1973,
                "end": 432.2769,
                "confidence": 0.9902344
              },
              {
                "word": "just",
                "start": 432.2769,
                "end": 432.6749,
                "confidence": 0.99609375
              },
              {
                "word": "you",
                "start": 432.75452,
                "end": 432.91373,
                "confidence": 0.9848633
              },
              {
                "word": "know",
                "start": 432.91373,
                "end": 432.99332,
                "confidence": 0.9819336
              },
              {
                "word": "that",
                "start": 433.23212,
                "end": 433.47092,
                "confidence": 0.9951172
              },
              {
                "word": "generic",
                "start": 433.47092,
                "end": 433.78934,
                "confidence": 0.99902344
              },
              {
                "word": "ai",
                "start": 433.86896,
                "end": 434.34656,
                "confidence": 0.9584961
              },
              {
                "word": "s",
                "start": 434.34656,
                "end": 434.66498,
                "confidence": 0.34545898
              },
              {
                "word": "we",
                "start": 434.66498,
                "end": 434.82416,
                "confidence": 0.9995117
              },
              {
                "word": "see",
                "start": 434.82416,
                "end": 435.22217,
                "confidence": 0.9995117
              },
              {
                "word": "everywhere",
                "start": 435.22217,
                "end": 435.38138,
                "confidence": 0.9980469
              },
              {
                "word": "it's",
                "start": 435.7948,
                "end": 435.9546,
                "confidence": 0.8378906
              },
              {
                "word": "competent",
                "start": 435.9546,
                "end": 436.2741,
                "confidence": 0.7573242
              },
              {
                "word": "i'd",
                "start": 436.59366,
                "end": 436.8333,
                "confidence": 0.96484375
              },
              {
                "word": "call",
                "start": 436.8333,
                "end": 436.99307,
                "confidence": 0.99609375
              },
              {
                "word": "a",
                "start": 436.99307,
                "end": 437.15283,
                "confidence": 0.953125
              },
              {
                "word": "junior",
                "start": 437.15283,
                "end": 437.3925,
                "confidence": 0.92578125
              },
              {
                "word": "marketing",
                "start": 437.3925,
                "end": 437.7919,
                "confidence": 0.9980469
              },
              {
                "word": "team",
                "start": 437.7919,
                "end": 437.95166,
                "confidence": 0.97753906
              },
              {
                "word": "level",
                "start": 437.95166,
                "end": 438.11145,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 438.2712,
                "end": 438.43097,
                "confidence": 0.99609375
              },
              {
                "word": "follows",
                "start": 438.43097,
                "end": 438.59073,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 438.59073,
                "end": 438.75052,
                "confidence": 0.96972656
              },
              {
                "word": "rules",
                "start": 438.75052,
                "end": 439.07004,
                "confidence": 0.9975586
              },
              {
                "word": "perfectly",
                "start": 439.07004,
                "end": 439.3896,
                "confidence": 0.99853516
              },
              {
                "word": "but",
                "start": 439.8689,
                "end": 440.02866,
                "confidence": 0.9980469
              },
              {
                "word": "it",
                "start": 440.02866,
                "end": 440.2683,
                "confidence": 0.9980469
              },
              {
                "word": "definitely",
                "start": 440.2683,
                "end": 440.66772,
                "confidence": 0.99853516
              },
              {
                "word": "has",
                "start": 440.66772,
                "end": 441.16772,
                "confidence": 0.99853516
              },
              {
                "word": "limitations",
                "start": 441.3068,
                "end": 441.46655,
                "confidence": 0.9980469
              },
              {
                "word": "for",
                "start": 441.86597,
                "end": 442.10562,
                "confidence": 0.9995117
              },
              {
                "word": "one",
                "start": 442.10562,
                "end": 442.26538,
                "confidence": 0.9995117
              },
              {
                "word": "its",
                "start": 442.50504,
                "end": 442.7447,
                "confidence": 0.5942383
              },
              {
                "word": "static",
                "start": 442.7447,
                "end": 443.224,
                "confidence": 0.99853516
              },
              {
                "word": "images",
                "start": 443.224,
                "end": 443.46365,
                "confidence": 0.9848633
              },
              {
                "word": "only",
                "start": 443.46365,
                "end": 443.86307,
                "confidence": 1
              },
              {
                "word": "for",
                "start": 443.86307,
                "end": 444.02283,
                "confidence": 0.99853516
              },
              {
                "word": "now",
                "start": 444.02283,
                "end": 444.18262,
                "confidence": 0.99853516
              },
              {
                "word": "no",
                "start": 444.6619,
                "end": 444.90155,
                "confidence": 0.99658203
              },
              {
                "word": "video",
                "start": 444.90155,
                "end": 445.2211,
                "confidence": 0.99853516
              },
              {
                "word": "no",
                "start": 445.6205,
                "end": 445.86017,
                "confidence": 0.9975586
              },
              {
                "word": "reals",
                "start": 445.86017,
                "end": 446.1797,
                "confidence": 0.28149414
              },
              {
                "word": "which",
                "start": 446.49924,
                "end": 446.659,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 446.659,
                "end": 446.7389,
                "confidence": 0.99609375
              },
              {
                "word": "a",
                "start": 446.7389,
                "end": 446.89865,
                "confidence": 0.99560547
              },
              {
                "word": "big",
                "start": 446.89865,
                "end": 447.2182,
                "confidence": 0.9975586
              },
              {
                "word": "miss",
                "start": 447.2182,
                "end": 447.53772,
                "confidence": 0.9667969
              },
              {
                "word": "for",
                "start": 447.53772,
                "end": 447.77737,
                "confidence": 0.99902344
              },
              {
                "word": "twenty",
                "start": 447.77737,
                "end": 448.01703,
                "confidence": 0.99853516
              },
              {
                "word": "twenty",
                "start": 448.01703,
                "end": 448.1768,
                "confidence": 0.9980469
              },
              {
                "word": "six",
                "start": 448.1768,
                "end": 448.25668,
                "confidence": 0.97216797
              },
              {
                "word": "and",
                "start": 448.49634,
                "end": 448.5762,
                "confidence": 0.94873047
              },
              {
                "word": "it",
                "start": 448.5762,
                "end": 448.73596,
                "confidence": 0.9614258
              },
              {
                "word": "doesn't",
                "start": 448.73596,
                "end": 448.97562,
                "confidence": 0.9970703
              },
              {
                "word": "post",
                "start": 448.97562,
                "end": 449.21527,
                "confidence": 0.99609375
              },
              {
                "word": "for",
                "start": 449.21527,
                "end": 449.43,
                "confidence": 0.5756836
              },
              {
                "word": "you",
                "start": 449.46982,
                "end": 449.54944,
                "confidence": 0.96875
              },
              {
                "word": "right",
                "start": 449.78833,
                "end": 449.86795,
                "confidence": 0.9790039
              },
              {
                "word": "no",
                "start": 450.10684,
                "end": 450.2661,
                "confidence": 0.9951172
              },
              {
                "word": "which",
                "start": 450.42535,
                "end": 450.58463,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 450.58463,
                "end": 450.66425,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 450.66425,
                "end": 450.82352,
                "confidence": 0.99609375
              },
              {
                "word": "big",
                "start": 450.82352,
                "end": 451.22165,
                "confidence": 0.9975586
              },
              {
                "word": "point",
                "start": 451.22165,
                "end": 451.38092,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 451.38092,
                "end": 451.69943,
                "confidence": 0.9995117
              },
              {
                "word": "friction",
                "start": 451.69943,
                "end": 451.8587,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 452.17722,
                "end": 452.3365,
                "confidence": 0.9980469
              },
              {
                "word": "have",
                "start": 452.3365,
                "end": 452.4161,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 452.4161,
                "end": 452.57538,
                "confidence": 0.99902344
              },
              {
                "word": "download",
                "start": 452.57538,
                "end": 452.9735,
                "confidence": 0.9995117
              },
              {
                "word": "everything",
                "start": 452.9735,
                "end": 453.37167,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 453.37167,
                "end": 453.4513,
                "confidence": 0.9995117
              },
              {
                "word": "then",
                "start": 453.4513,
                "end": 453.84943,
                "confidence": 0.9980469
              },
              {
                "word": "upload",
                "start": 453.84943,
                "end": 454.0087,
                "confidence": 0.99560547
              },
              {
                "word": "it",
                "start": 454.0087,
                "end": 454.3272,
                "confidence": 0.98046875
              },
              {
                "word": "yourselves",
                "start": 454.3272,
                "end": 454.5661,
                "confidence": 0.68896484
              },
              {
                "word": "not",
                "start": 454.5661,
                "end": 454.96426,
                "confidence": 0.9970703
              },
              {
                "word": "fully",
                "start": 454.96426,
                "end": 455.44202,
                "confidence": 0.99853516
              },
              {
                "word": "autonomous",
                "start": 455.44202,
                "end": 455.76056,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 455.99945,
                "end": 456.1587,
                "confidence": 0.99658203
              },
              {
                "word": "what",
                "start": 456.1587,
                "end": 456.2383,
                "confidence": 0.9980469
              },
              {
                "word": "if",
                "start": 456.2383,
                "end": 456.39758,
                "confidence": 0.9848633
              },
              {
                "word": "your",
                "start": 456.39758,
                "end": 456.79575,
                "confidence": 0.9926758
              },
              {
                "word": "website",
                "start": 456.79575,
                "end": 457.11426,
                "confidence": 0.99658203
              },
              {
                "word": "is",
                "start": 457.11426,
                "end": 457.35315,
                "confidence": 0.99853516
              },
              {
                "word": "just",
                "start": 457.35315,
                "end": 457.85315,
                "confidence": 0.99902344
              },
              {
                "word": "bad",
                "start": 458.62723,
                "end": 458.94574,
                "confidence": 0.9980469
              },
              {
                "word": "well",
                "start": 459.34387,
                "end": 459.50314,
                "confidence": 0.9926758
              },
              {
                "word": "garbage",
                "start": 459.74203,
                "end": 460.06055,
                "confidence": 1
              },
              {
                "word": "in",
                "start": 460.06055,
                "end": 460.29944,
                "confidence": 0.5629883
              },
              {
                "word": "garbage",
                "start": 460.29944,
                "end": 460.61795,
                "confidence": 1
              },
              {
                "word": "out",
                "start": 460.61795,
                "end": 460.69757,
                "confidence": 0.99072266
              },
              {
                "word": "that's",
                "start": 460.93646,
                "end": 461.09573,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 461.09573,
                "end": 461.255,
                "confidence": 0.99853516
              },
              {
                "word": "first",
                "start": 461.255,
                "end": 461.4939,
                "confidence": 0.9995117
              },
              {
                "word": "rule",
                "start": 461.4939,
                "end": 461.65314,
                "confidence": 0.9970703
              },
              {
                "word": "of",
                "start": 461.65314,
                "end": 461.73276,
                "confidence": 0.9926758
              },
              {
                "word": "ai",
                "start": 461.8124,
                "end": 462.13092,
                "confidence": 0.95996094
              },
              {
                "word": "if",
                "start": 462.6235,
                "end": 462.78265,
                "confidence": 0.9995117
              },
              {
                "word": "your",
                "start": 462.78265,
                "end": 463.1805,
                "confidence": 0.99316406
              },
              {
                "word": "website",
                "start": 463.1805,
                "end": 463.41925,
                "confidence": 0.9975586
              },
              {
                "word": "is",
                "start": 463.41925,
                "end": 463.5784,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 463.5784,
                "end": 463.73752,
                "confidence": 0.99853516
              },
              {
                "word": "mess",
                "start": 463.73752,
                "end": 464.05582,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 464.05582,
                "end": 464.21497,
                "confidence": 0.99902344
              },
              {
                "word": "different",
                "start": 464.21497,
                "end": 464.61282,
                "confidence": 0.9995117
              },
              {
                "word": "fonts",
                "start": 464.61282,
                "end": 464.85156,
                "confidence": 0.9301758
              },
              {
                "word": "and",
                "start": 464.85156,
                "end": 465.09027,
                "confidence": 0.97998047
              },
              {
                "word": "colors",
                "start": 465.09027,
                "end": 465.329,
                "confidence": 0.99365234
              },
              {
                "word": "the",
                "start": 465.64728,
                "end": 465.80643,
                "confidence": 0.16638184
              },
              {
                "word": "melody",
                "start": 465.80643,
                "end": 466.04517,
                "confidence": 0.099243164
              },
              {
                "word": "is",
                "start": 466.04517,
                "end": 466.20428,
                "confidence": 0.82470703
              },
              {
                "word": "just",
                "start": 466.20428,
                "end": 466.28387,
                "confidence": 0.99853516
              },
              {
                "word": "gonna",
                "start": 466.28387,
                "end": 466.60217,
                "confidence": 0.9819336
              },
              {
                "word": "learn",
                "start": 466.60217,
                "end": 466.84088,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 466.84088,
                "end": 467.15918,
                "confidence": 0.99560547
              },
              {
                "word": "messi",
                "start": 467.15918,
                "end": 467.65918,
                "confidence": 0.73583984
              },
              {
                "word": "is",
                "start": 467.87534,
                "end": 468.11404,
                "confidence": 0.9995117
              },
              {
                "word": "your",
                "start": 468.11404,
                "end": 468.43234,
                "confidence": 0.9995117
              },
              {
                "word": "brand",
                "start": 468.43234,
                "end": 468.8302,
                "confidence": 0.99902344
              },
              {
                "word": "identity",
                "start": 468.8302,
                "end": 469.1485,
                "confidence": 0.9995117
              },
              {
                "word": "so",
                "start": 469.38724,
                "end": 469.7055,
                "confidence": 0.99902344
              },
              {
                "word": "it's",
                "start": 469.7055,
                "end": 469.94424,
                "confidence": 0.9995117
              },
              {
                "word": "not",
                "start": 469.94424,
                "end": 470.1034,
                "confidence": 1
              },
              {
                "word": "a",
                "start": 470.1034,
                "end": 470.26254,
                "confidence": 0.9980469
              },
              {
                "word": "chief",
                "start": 470.26254,
                "end": 470.50125,
                "confidence": 1
              },
              {
                "word": "marketing",
                "start": 470.50125,
                "end": 470.8991,
                "confidence": 1
              },
              {
                "word": "officer",
                "start": 470.8991,
                "end": 471.2174,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 471.37656,
                "end": 471.5357,
                "confidence": 0.99902344
              },
              {
                "word": "more",
                "start": 471.5357,
                "end": 471.7744,
                "confidence": 1
              },
              {
                "word": "like",
                "start": 471.7744,
                "end": 472.01315,
                "confidence": 0.99658203
              },
              {
                "word": "a",
                "start": 472.01315,
                "end": 472.1723,
                "confidence": 0.9970703
              },
              {
                "word": "really",
                "start": 472.1723,
                "end": 472.64972,
                "confidence": 0.9995117
              },
              {
                "word": "obedient",
                "start": 472.64972,
                "end": 473.14972,
                "confidence": 0.9970703
              },
              {
                "word": "intern",
                "start": 473.52502,
                "end": 474.02502,
                "confidence": 0.8901367
              },
              {
                "word": "who",
                "start": 474.08203,
                "end": 474.32077,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 474.32077,
                "end": 474.63907,
                "confidence": 0.99902344
              },
              {
                "word": "mimics",
                "start": 474.63907,
                "end": 474.95734,
                "confidence": 0.99658203
              },
              {
                "word": "your",
                "start": 474.95734,
                "end": 475.1165,
                "confidence": 0.9995117
              },
              {
                "word": "home",
                "start": 475.1165,
                "end": 475.41,
                "confidence": 0.9946289
              },
              {
                "word": "page",
                "start": 475.52982,
                "end": 475.6097,
                "confidence": 0.87890625
              },
              {
                "word": "that",
                "start": 475.9292,
                "end": 476.08896,
                "confidence": 0.9975586
              },
              {
                "word": "is",
                "start": 476.08896,
                "end": 476.24872,
                "confidence": 0.9926758
              },
              {
                "word": "a",
                "start": 476.24872,
                "end": 476.72797,
                "confidence": 0.9916992
              },
              {
                "word": "perfect",
                "start": 476.72797,
                "end": 477.20724,
                "confidence": 1
              },
              {
                "word": "analogy",
                "start": 477.20724,
                "end": 477.52676,
                "confidence": 0.99658203
              },
              {
                "word": "but",
                "start": 478.0859,
                "end": 478.16577,
                "confidence": 0.9946289
              },
              {
                "word": "for",
                "start": 478.16577,
                "end": 478.4054,
                "confidence": 0.99316406
              },
              {
                "word": "that",
                "start": 478.4054,
                "end": 478.64502,
                "confidence": 0.9951172
              },
              {
                "word": "local",
                "start": 478.64502,
                "end": 479.04443,
                "confidence": 0.99902344
              },
              {
                "word": "pizza",
                "start": 479.04443,
                "end": 479.36392,
                "confidence": 0.8125
              },
              {
                "word": "shop",
                "start": 479.36392,
                "end": 479.52368,
                "confidence": 0.9941406
              },
              {
                "word": "owner",
                "start": 479.52368,
                "end": 479.68344,
                "confidence": 0.9667969
              },
              {
                "word": "yeah",
                "start": 479.8432,
                "end": 480.00296,
                "confidence": 0.96777344
              },
              {
                "word": "it's",
                "start": 480.24258,
                "end": 480.32245,
                "confidence": 0.99658203
              },
              {
                "word": "a",
                "start": 480.32245,
                "end": 480.4822,
                "confidence": 0.9975586
              },
              {
                "word": "game",
                "start": 480.4822,
                "end": 480.64197,
                "confidence": 1
              },
              {
                "word": "changer",
                "start": 480.64197,
                "end": 480.80173,
                "confidence": 1
              },
              {
                "word": "alright",
                "start": 480.9615,
                "end": 481.12122,
                "confidence": 0.9604492
              },
              {
                "word": "let's",
                "start": 481.28098,
                "end": 481.44073,
                "confidence": 0.99658203
              },
              {
                "word": "go",
                "start": 481.44073,
                "end": 481.52063,
                "confidence": 0.9916992
              },
              {
                "word": "a",
                "start": 481.52063,
                "end": 481.76025,
                "confidence": 0.7944336
              },
              {
                "word": "layer",
                "start": 481.76025,
                "end": 482.07977,
                "confidence": 0.95703125
              },
              {
                "word": "deeper",
                "start": 482.07977,
                "end": 482.3194,
                "confidence": 0.99853516
              },
              {
                "word": "we",
                "start": 482.47916,
                "end": 482.6389,
                "confidence": 0.99365234
              },
              {
                "word": "have",
                "start": 482.6389,
                "end": 482.79865,
                "confidence": 0.9946289
              },
              {
                "word": "the",
                "start": 482.79865,
                "end": 482.9584,
                "confidence": 0.9916992
              },
              {
                "word": "code",
                "start": 482.9584,
                "end": 483.0383,
                "confidence": 0.99902344
              },
              {
                "word": "we",
                "start": 483.19803,
                "end": 483.27792,
                "confidence": 0.99560547
              },
              {
                "word": "have",
                "start": 483.27792,
                "end": 483.43768,
                "confidence": 0.99121094
              },
              {
                "word": "the",
                "start": 483.43768,
                "end": 483.5974,
                "confidence": 0.9970703
              },
              {
                "word": "branding",
                "start": 483.5974,
                "end": 483.91693,
                "confidence": 0.9975586
              },
              {
                "word": "but",
                "start": 484.23645,
                "end": 484.47607,
                "confidence": 0.99658203
              },
              {
                "word": "what's",
                "start": 484.47607,
                "end": 484.7956,
                "confidence": 0.9970703
              },
              {
                "word": "actually",
                "start": 484.7956,
                "end": 485.19498,
                "confidence": 0.9970703
              },
              {
                "word": "powering",
                "start": 485.19498,
                "end": 485.69498,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 485.75412,
                "end": 486.25412,
                "confidence": 0.9926758
              },
              {
                "word": "images",
                "start": 486.47302,
                "end": 486.71265,
                "confidence": 1
              },
              {
                "word": "behind",
                "start": 486.71265,
                "end": 486.8724,
                "confidence": 1
              },
              {
                "word": "all",
                "start": 486.8724,
                "end": 487.03217,
                "confidence": 0.9951172
              },
              {
                "word": "this",
                "start": 487.03217,
                "end": 487.11203,
                "confidence": 0.9863281
              },
              {
                "word": "we",
                "start": 487.2718,
                "end": 487.35165,
                "confidence": 0.9897461
              },
              {
                "word": "have",
                "start": 487.35165,
                "end": 487.5114,
                "confidence": 0.96484375
              },
              {
                "word": "to",
                "start": 487.5114,
                "end": 487.59128,
                "confidence": 0.9160156
              },
              {
                "word": "talk",
                "start": 487.59128,
                "end": 487.83093,
                "confidence": 0.8442383
              },
              {
                "word": "about",
                "start": 487.83093,
                "end": 487.9907,
                "confidence": 0.98779297
              },
              {
                "word": "the",
                "start": 487.9907,
                "end": 488.445,
                "confidence": 0.81884766
              },
              {
                "word": "the",
                "start": 488.88327,
                "end": 489.1223,
                "confidence": 0.9814453
              },
              {
                "word": "fruit",
                "start": 489.1223,
                "end": 489.202,
                "confidence": 0.98583984
              },
              {
                "word": "in",
                "start": 489.202,
                "end": 489.36136,
                "confidence": 0.95996094
              },
              {
                "word": "the",
                "start": 489.36136,
                "end": 489.44104,
                "confidence": 0.93066406
              },
              {
                "word": "room",
                "start": 489.44104,
                "end": 489.6004,
                "confidence": 0.99658203
              },
              {
                "word": "nano",
                "start": 489.91913,
                "end": 490.15817,
                "confidence": 0.93847656
              },
              {
                "word": "banana",
                "start": 490.39722,
                "end": 490.63626,
                "confidence": 0.9501953
              },
              {
                "word": "i",
                "start": 490.955,
                "end": 491.11435,
                "confidence": 0.99853516
              },
              {
                "word": "still",
                "start": 491.11435,
                "end": 491.3534,
                "confidence": 0.99902344
              },
              {
                "word": "can't",
                "start": 491.3534,
                "end": 491.51276,
                "confidence": 0.99853516
              },
              {
                "word": "say",
                "start": 491.51276,
                "end": 491.59244,
                "confidence": 0.7832031
              },
              {
                "word": "it",
                "start": 491.59244,
                "end": 491.7518,
                "confidence": 0.9770508
              },
              {
                "word": "with",
                "start": 491.7518,
                "end": 491.83148,
                "confidence": 0.9951172
              },
              {
                "word": "a",
                "start": 491.83148,
                "end": 491.99084,
                "confidence": 0.7739258
              },
              {
                "word": "straight",
                "start": 491.99084,
                "end": 492.1502,
                "confidence": 0.99560547
              },
              {
                "word": "face",
                "start": 492.1502,
                "end": 492.30957,
                "confidence": 0.75439453
              },
              {
                "word": "it's",
                "start": 492.5486,
                "end": 492.70798,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 492.70798,
                "end": 492.86734,
                "confidence": 0.9873047
              },
              {
                "word": "very",
                "start": 492.86734,
                "end": 493.10638,
                "confidence": 0.99853516
              },
              {
                "word": "google",
                "start": 493.18607,
                "end": 493.5048,
                "confidence": 0.99609375
              },
              {
                "word": "name",
                "start": 493.5048,
                "end": 493.58447,
                "confidence": 0.99609375
              },
              {
                "word": "isn't",
                "start": 493.74384,
                "end": 493.98288,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 493.98288,
                "end": 494.06256,
                "confidence": 0.99902344
              },
              {
                "word": "but",
                "start": 494.22192,
                "end": 494.46097,
                "confidence": 0.9355469
              },
              {
                "word": "yeah",
                "start": 494.46097,
                "end": 494.7797,
                "confidence": 0.4675293
              },
              {
                "word": "name",
                "start": 494.7797,
                "end": 495.09842,
                "confidence": 0.9897461
              },
              {
                "word": "aside",
                "start": 495.09842,
                "end": 495.25778,
                "confidence": 0.99658203
              },
              {
                "word": "this",
                "start": 495.49683,
                "end": 495.6562,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 495.6562,
                "end": 495.81555,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 495.81555,
                "end": 496.13428,
                "confidence": 0.9970703
              },
              {
                "word": "core",
                "start": 496.13428,
                "end": 496.53268,
                "confidence": 0.99560547
              },
              {
                "word": "image",
                "start": 496.53268,
                "end": 497.03268,
                "confidence": 1
              },
              {
                "word": "generation",
                "start": 497.24982,
                "end": 497.48886,
                "confidence": 0.99658203
              },
              {
                "word": "model",
                "start": 497.48886,
                "end": 497.7279,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 498.04663,
                "end": 498.28568,
                "confidence": 0.99316406
              },
              {
                "word": "is",
                "start": 498.28568,
                "end": 498.44504,
                "confidence": 0.9951172
              },
              {
                "word": "it's",
                "start": 498.84344,
                "end": 499.0825,
                "confidence": 0.99609375
              },
              {
                "word": "based",
                "start": 499.0825,
                "end": 499.24185,
                "confidence": 0.99853516
              },
              {
                "word": "on",
                "start": 499.24185,
                "end": 499.4012,
                "confidence": 0.99902344
              },
              {
                "word": "gemini",
                "start": 499.4809,
                "end": 499.8793,
                "confidence": 0.9980469
              },
              {
                "word": "two",
                "start": 499.8793,
                "end": 500.03867,
                "confidence": 0.98828125
              },
              {
                "word": "point",
                "start": 500.03867,
                "end": 500.2777,
                "confidence": 0.9941406
              },
              {
                "word": "five",
                "start": 500.2777,
                "end": 500.51675,
                "confidence": 0.9926758
              },
              {
                "word": "flash",
                "start": 500.51675,
                "end": 500.7558,
                "confidence": 0.9160156
              },
              {
                "word": "and",
                "start": 501.17,
                "end": 501.33,
                "confidence": 0.9970703
              },
              {
                "word": "just",
                "start": 501.33,
                "end": 501.57,
                "confidence": 0.9975586
              },
              {
                "word": "like",
                "start": 501.57,
                "end": 501.81,
                "confidence": 0.9975586
              },
              {
                "word": "stitch",
                "start": 501.81,
                "end": 501.89,
                "confidence": 0.9897461
              },
              {
                "word": "it",
                "start": 501.97,
                "end": 502.21,
                "confidence": 0.9355469
              },
              {
                "word": "has",
                "start": 502.21,
                "end": 502.45,
                "confidence": 0.9975586
              },
              {
                "word": "tiers",
                "start": 502.45,
                "end": 502.69,
                "confidence": 0.90283203
              },
              {
                "word": "there's",
                "start": 503.17,
                "end": 503.41,
                "confidence": 0.9838867
              },
              {
                "word": "the",
                "start": 503.41,
                "end": 503.57,
                "confidence": 0.9970703
              },
              {
                "word": "standard",
                "start": 503.57,
                "end": 503.97,
                "confidence": 0.9995117
              },
              {
                "word": "fast",
                "start": 503.97,
                "end": 504.45,
                "confidence": 0.99560547
              },
              {
                "word": "version",
                "start": 504.45,
                "end": 504.61002,
                "confidence": 0.99902344
              },
              {
                "word": "but",
                "start": 505.09,
                "end": 505.25,
                "confidence": 0.9975586
              },
              {
                "word": "the",
                "start": 505.25,
                "end": 505.49,
                "confidence": 0.9980469
              },
              {
                "word": "pro",
                "start": 505.49,
                "end": 505.89,
                "confidence": 0.9838867
              },
              {
                "word": "version",
                "start": 505.89,
                "end": 506.37,
                "confidence": 0.9970703
              },
              {
                "word": "uses",
                "start": 506.37,
                "end": 506.77,
                "confidence": 0.9995117
              },
              {
                "word": "what",
                "start": 506.77,
                "end": 506.93,
                "confidence": 1
              },
              {
                "word": "they",
                "start": 506.93,
                "end": 507.17,
                "confidence": 0.99658203
              },
              {
                "word": "call",
                "start": 507.17,
                "end": 507.49,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 507.49,
                "end": 507.73,
                "confidence": 0.99658203
              },
              {
                "word": "thinking",
                "start": 507.73,
                "end": 508.13,
                "confidence": 0.9970703
              },
              {
                "word": "model",
                "start": 508.13,
                "end": 508.37,
                "confidence": 0.99902344
              },
              {
                "word": "we",
                "start": 508.61002,
                "end": 508.77,
                "confidence": 0.99902344
              },
              {
                "word": "keep",
                "start": 508.77,
                "end": 509.01,
                "confidence": 1
              },
              {
                "word": "hearing",
                "start": 509.01,
                "end": 509.25,
                "confidence": 0.9848633
              },
              {
                "word": "that",
                "start": 509.25,
                "end": 509.49,
                "confidence": 0.99853516
              },
              {
                "word": "phrase",
                "start": 509.49,
                "end": 509.99,
                "confidence": 1
              },
              {
                "word": "thinking",
                "start": 510.05,
                "end": 510.53,
                "confidence": 0.99853516
              },
              {
                "word": "model",
                "start": 510.53,
                "end": 510.85,
                "confidence": 0.99902344
              },
              {
                "word": "i",
                "start": 511.41,
                "end": 511.65,
                "confidence": 0.9902344
              },
              {
                "word": "usually",
                "start": 511.65,
                "end": 512.05,
                "confidence": 0.9995117
              },
              {
                "word": "associate",
                "start": 512.05,
                "end": 512.45,
                "confidence": 0.9970703
              },
              {
                "word": "that",
                "start": 512.45,
                "end": 512.61,
                "confidence": 0.99853516
              },
              {
                "word": "with",
                "start": 512.61,
                "end": 512.85,
                "confidence": 0.99902344
              },
              {
                "word": "logic",
                "start": 512.85,
                "end": 513.25,
                "confidence": 0.9995117
              },
              {
                "word": "or",
                "start": 513.25,
                "end": 513.49,
                "confidence": 0.99853516
              },
              {
                "word": "math",
                "start": 513.49,
                "end": 513.73,
                "confidence": 0.99316406
              },
              {
                "word": "why",
                "start": 514.05,
                "end": 514.21,
                "confidence": 0.9824219
              },
              {
                "word": "does",
                "start": 514.21,
                "end": 514.37,
                "confidence": 0.98339844
              },
              {
                "word": "an",
                "start": 514.37,
                "end": 514.53,
                "confidence": 0.9946289
              },
              {
                "word": "image",
                "start": 514.53,
                "end": 514.77,
                "confidence": 1
              },
              {
                "word": "generator",
                "start": 514.77,
                "end": 515.25,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 515.25,
                "end": 515.41,
                "confidence": 0.99853516
              },
              {
                "word": "to",
                "start": 515.41,
                "end": 515.57,
                "confidence": 0.9980469
              },
              {
                "word": "think",
                "start": 515.57,
                "end": 515.81,
                "confidence": 0.9980469
              },
              {
                "word": "because",
                "start": 516.38385,
                "end": 516.54315,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 516.54315,
                "end": 516.7025,
                "confidence": 0.9980469
              },
              {
                "word": "real",
                "start": 516.7025,
                "end": 516.8618,
                "confidence": 1
              },
              {
                "word": "world",
                "start": 516.8618,
                "end": 517.1805,
                "confidence": 1
              },
              {
                "word": "has",
                "start": 517.1805,
                "end": 517.4195,
                "confidence": 0.9980469
              },
              {
                "word": "logic",
                "start": 517.4195,
                "end": 517.7382,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 518.2959,
                "end": 518.53485,
                "confidence": 0.9946289
              },
              {
                "word": "most",
                "start": 518.53485,
                "end": 518.77386,
                "confidence": 0.99902344
              },
              {
                "word": "image",
                "start": 518.77386,
                "end": 518.9332,
                "confidence": 0.9951172
              },
              {
                "word": "ais",
                "start": 519.0129,
                "end": 519.4909,
                "confidence": 0.42944336
              },
              {
                "word": "don't",
                "start": 519.4909,
                "end": 519.7299,
                "confidence": 0.99902344
              },
              {
                "word": "get",
                "start": 519.7299,
                "end": 519.96893,
                "confidence": 0.9980469
              },
              {
                "word": "that",
                "start": 519.96893,
                "end": 520.12823,
                "confidence": 0.9951172
              },
              {
                "word": "think",
                "start": 520.7656,
                "end": 521.00464,
                "confidence": 0.99121094
              },
              {
                "word": "about",
                "start": 521.00464,
                "end": 521.24365,
                "confidence": 0.99853516
              },
              {
                "word": "trying",
                "start": 521.24365,
                "end": 521.40295,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 521.40295,
                "end": 521.5623,
                "confidence": 0.9975586
              },
              {
                "word": "generate",
                "start": 521.5623,
                "end": 522.0403,
                "confidence": 0.99853516
              },
              {
                "word": "text",
                "start": 522.0403,
                "end": 522.2793,
                "confidence": 0.9785156
              },
              {
                "word": "on",
                "start": 522.2793,
                "end": 522.43866,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 522.43866,
                "end": 522.598,
                "confidence": 0.99609375
              },
              {
                "word": "image",
                "start": 522.598,
                "end": 522.837,
                "confidence": 0.9995117
              },
              {
                "word": "how",
                "start": 523.554,
                "end": 523.63367,
                "confidence": 0.9995117
              },
              {
                "word": "many",
                "start": 523.63367,
                "end": 523.793,
                "confidence": 0.9995117
              },
              {
                "word": "times",
                "start": 523.793,
                "end": 524.03204,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 524.03204,
                "end": 524.1117,
                "confidence": 0.9560547
              },
              {
                "word": "you",
                "start": 524.1117,
                "end": 524.3507,
                "confidence": 0.9951172
              },
              {
                "word": "asked",
                "start": 524.3507,
                "end": 524.5101,
                "confidence": 0.69189453
              },
              {
                "word": "for",
                "start": 524.5101,
                "end": 524.5897,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 524.5897,
                "end": 524.749,
                "confidence": 0.7524414
              },
              {
                "word": "stock",
                "start": 524.749,
                "end": 524.98804,
                "confidence": 0.43041992
              },
              {
                "word": "sign",
                "start": 524.98804,
                "end": 525.22705,
                "confidence": 0.9472656
              },
              {
                "word": "and",
                "start": 525.46606,
                "end": 525.5457,
                "confidence": 0.99316406
              },
              {
                "word": "it",
                "start": 525.5457,
                "end": 525.7847,
                "confidence": 0.9921875
              },
              {
                "word": "spells",
                "start": 525.7847,
                "end": 525.9441,
                "confidence": 0.98291016
              },
              {
                "word": "it",
                "start": 525.9441,
                "end": 526.26276,
                "confidence": 0.96972656
              },
              {
                "word": "s",
                "start": 526.26276,
                "end": 526.76276,
                "confidence": 0.6879883
              },
              {
                "word": "t",
                "start": 526.82043,
                "end": 527.1391,
                "confidence": 0.5761719
              },
              {
                "word": "o",
                "start": 527.1391,
                "end": 527.5375,
                "confidence": 0.8095703
              },
              {
                "word": "p",
                "start": 527.5375,
                "end": 527.7765,
                "confidence": 0.7416992
              },
              {
                "word": "p",
                "start": 527.7765,
                "end": 527.9358,
                "confidence": 0.53564453
              },
              {
                "word": "or",
                "start": 528.35004,
                "end": 528.59,
                "confidence": 0.99609375
              },
              {
                "word": "it's",
                "start": 528.59,
                "end": 528.83,
                "confidence": 0.9897461
              },
              {
                "word": "just",
                "start": 528.83,
                "end": 529.15,
                "confidence": 0.9980469
              },
              {
                "word": "weird",
                "start": 529.15,
                "end": 529.55005,
                "confidence": 0.99902344
              },
              {
                "word": "alien",
                "start": 529.55005,
                "end": 529.95,
                "confidence": 0.9916992
              },
              {
                "word": "symbols",
                "start": 529.95,
                "end": 530.27,
                "confidence": 0.9350586
              },
              {
                "word": "exactly",
                "start": 530.75,
                "end": 531.07,
                "confidence": 0.9970703
              },
              {
                "word": "because",
                "start": 531.71,
                "end": 531.95,
                "confidence": 0.9995117
              },
              {
                "word": "standard",
                "start": 531.95,
                "end": 532.27,
                "confidence": 0.99902344
              },
              {
                "word": "models",
                "start": 532.27,
                "end": 532.59,
                "confidence": 0.99902344
              },
              {
                "word": "are",
                "start": 532.59,
                "end": 532.75,
                "confidence": 0.99853516
              },
              {
                "word": "just",
                "start": 532.75,
                "end": 533.07,
                "confidence": 0.9975586
              },
              {
                "word": "predicting",
                "start": 533.07,
                "end": 533.55005,
                "confidence": 0.99902344
              },
              {
                "word": "pixels",
                "start": 533.55005,
                "end": 533.71,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 534.27,
                "end": 534.43005,
                "confidence": 0.9848633
              },
              {
                "word": "thinking",
                "start": 534.43005,
                "end": 534.83,
                "confidence": 0.9980469
              },
              {
                "word": "model",
                "start": 534.83,
                "end": 535.31,
                "confidence": 0.99902344
              },
              {
                "word": "actually",
                "start": 535.31,
                "end": 535.79004,
                "confidence": 0.99902344
              },
              {
                "word": "understands",
                "start": 535.79004,
                "end": 536.03,
                "confidence": 0.99072266
              },
              {
                "word": "the",
                "start": 536.03,
                "end": 536.19,
                "confidence": 0.99902344
              },
              {
                "word": "concept",
                "start": 536.19,
                "end": 536.51,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 536.51,
                "end": 536.75,
                "confidence": 0.9980469
              },
              {
                "word": "spelling",
                "start": 536.75,
                "end": 536.99005,
                "confidence": 0.9995117
              },
              {
                "word": "nano",
                "start": 537.79004,
                "end": 538.27,
                "confidence": 0.98876953
              },
              {
                "word": "banana",
                "start": 538.27,
                "end": 538.51,
                "confidence": 0.9472656
              },
              {
                "word": "pro",
                "start": 538.51,
                "end": 538.83,
                "confidence": 0.90478516
              },
              {
                "word": "can",
                "start": 538.83,
                "end": 538.99005,
                "confidence": 0.9975586
              },
              {
                "word": "create",
                "start": 538.99005,
                "end": 539.31,
                "confidence": 0.9970703
              },
              {
                "word": "a",
                "start": 539.31,
                "end": 539.47003,
                "confidence": 0.99560547
              },
              {
                "word": "movie",
                "start": 539.47003,
                "end": 539.87,
                "confidence": 0.9995117
              },
              {
                "word": "poster",
                "start": 539.87,
                "end": 540.37,
                "confidence": 0.984375
              },
              {
                "word": "where",
                "start": 540.51,
                "end": 540.67004,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 540.67004,
                "end": 540.91003,
                "confidence": 0.9980469
              },
              {
                "word": "title",
                "start": 540.91003,
                "end": 541.15,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 541.15,
                "end": 541.47003,
                "confidence": 0.9995117
              },
              {
                "word": "actually",
                "start": 541.47003,
                "end": 541.79004,
                "confidence": 0.9975586
              },
              {
                "word": "readable",
                "start": 541.79004,
                "end": 542.11005,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 542.445,
                "end": 542.525,
                "confidence": 0.72021484
              },
              {
                "word": "can",
                "start": 542.525,
                "end": 542.685,
                "confidence": 0.99365234
              },
              {
                "word": "draw",
                "start": 542.685,
                "end": 542.84503,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 542.84503,
                "end": 543.005,
                "confidence": 0.9941406
              },
              {
                "word": "diagram",
                "start": 543.005,
                "end": 543.405,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 543.405,
                "end": 543.485,
                "confidence": 0.9975586
              },
              {
                "word": "a",
                "start": 543.485,
                "end": 543.645,
                "confidence": 0.9926758
              },
              {
                "word": "bike",
                "start": 543.645,
                "end": 544.125,
                "confidence": 0.99902344
              },
              {
                "word": "where",
                "start": 544.125,
                "end": 544.28503,
                "confidence": 0.8432617
              },
              {
                "word": "the",
                "start": 544.28503,
                "end": 544.525,
                "confidence": 0.72021484
              },
              {
                "word": "chain",
                "start": 544.525,
                "end": 545.005,
                "confidence": 0.99853516
              },
              {
                "word": "connects",
                "start": 545.005,
                "end": 545.16504,
                "confidence": 0.99365234
              },
              {
                "word": "to",
                "start": 545.16504,
                "end": 545.245,
                "confidence": 0.9941406
              },
              {
                "word": "the",
                "start": 545.245,
                "end": 545.405,
                "confidence": 0.99560547
              },
              {
                "word": "pedals",
                "start": 545.405,
                "end": 545.805,
                "confidence": 0.93115234
              },
              {
                "word": "because",
                "start": 545.805,
                "end": 545.965,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 545.965,
                "end": 546.28503,
                "confidence": 0.99902344
              },
              {
                "word": "thinks",
                "start": 546.28503,
                "end": 546.78503,
                "confidence": 0.99658203
              },
              {
                "word": "about",
                "start": 546.925,
                "end": 547.085,
                "confidence": 0.99902344
              },
              {
                "word": "how",
                "start": 547.085,
                "end": 547.245,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 547.245,
                "end": 547.405,
                "confidence": 0.9819336
              },
              {
                "word": "bike",
                "start": 547.405,
                "end": 547.645,
                "confidence": 0.9980469
              },
              {
                "word": "works",
                "start": 547.645,
                "end": 548.145,
                "confidence": 1
              },
              {
                "word": "before",
                "start": 548.205,
                "end": 548.365,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 548.365,
                "end": 548.525,
                "confidence": 0.8833008
              },
              {
                "word": "draws",
                "start": 548.525,
                "end": 548.765,
                "confidence": 0.99658203
              },
              {
                "word": "it",
                "start": 548.765,
                "end": 548.84503,
                "confidence": 0.9951172
              },
              {
                "word": "and",
                "start": 549.005,
                "end": 549.16504,
                "confidence": 0.57910156
              },
              {
                "word": "the",
                "start": 549.16504,
                "end": 549.245,
                "confidence": 0.9980469
              },
              {
                "word": "way",
                "start": 549.245,
                "end": 549.405,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 549.405,
                "end": 549.72504,
                "confidence": 0.99853516
              },
              {
                "word": "interact",
                "start": 549.72504,
                "end": 549.885,
                "confidence": 1
              },
              {
                "word": "with",
                "start": 549.885,
                "end": 550.045,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 550.045,
                "end": 550.205,
                "confidence": 0.97998047
              },
              {
                "word": "is",
                "start": 550.205,
                "end": 550.365,
                "confidence": 0.97998047
              },
              {
                "word": "me",
                "start": 550.365,
                "end": 550.60504,
                "confidence": 0.49975586
              },
              {
                "word": "too",
                "start": 550.60504,
                "end": 550.685,
                "confidence": 0.96777344
              },
              {
                "word": "this",
                "start": 550.925,
                "end": 551.16504,
                "confidence": 0.98046875
              },
              {
                "word": "doodle",
                "start": 551.16504,
                "end": 551.405,
                "confidence": 0.99658203
              },
              {
                "word": "your",
                "start": 551.405,
                "end": 551.645,
                "confidence": 0.95703125
              },
              {
                "word": "edits",
                "start": 551.645,
                "end": 552.145,
                "confidence": 0.99658203
              },
              {
                "word": "feature",
                "start": 552.205,
                "end": 552.28503,
                "confidence": 0.88720703
              },
              {
                "word": "this",
                "start": 552.525,
                "end": 552.685,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 552.685,
                "end": 552.84503,
                "confidence": 0.9951172
              },
              {
                "word": "my",
                "start": 552.84503,
                "end": 553.005,
                "confidence": 0.99853516
              },
              {
                "word": "favorite",
                "start": 553.005,
                "end": 553.325,
                "confidence": 0.9970703
              },
              {
                "word": "part",
                "start": 553.325,
                "end": 553.405,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 553.405,
                "end": 553.485,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 553.485,
                "end": 553.645,
                "confidence": 0.99316406
              },
              {
                "word": "whole",
                "start": 553.645,
                "end": 553.805,
                "confidence": 0.99902344
              },
              {
                "word": "suite",
                "start": 553.805,
                "end": 553.965,
                "confidence": 0.98095703
              },
              {
                "word": "writing",
                "start": 554.205,
                "end": 554.525,
                "confidence": 0.9692383
              },
              {
                "word": "prompts",
                "start": 554.525,
                "end": 554.82,
                "confidence": 0.9970703
              },
              {
                "word": "is",
                "start": 554.8598,
                "end": 555.0189,
                "confidence": 0.9291992
              },
              {
                "word": "hard",
                "start": 555.0189,
                "end": 555.2576,
                "confidence": 0.9980469
              },
              {
                "word": "trying",
                "start": 555.57587,
                "end": 555.735,
                "confidence": 0.97509766
              },
              {
                "word": "to",
                "start": 555.735,
                "end": 556.1328,
                "confidence": 0.99853516
              },
              {
                "word": "describe",
                "start": 556.1328,
                "end": 556.4511,
                "confidence": 0.9980469
              },
              {
                "word": "make",
                "start": 556.84894,
                "end": 557.00806,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 557.00806,
                "end": 557.24677,
                "confidence": 0.9980469
              },
              {
                "word": "cat",
                "start": 557.24677,
                "end": 557.4854,
                "confidence": 0.97216797
              },
              {
                "word": "a",
                "start": 557.4854,
                "end": 557.6446,
                "confidence": 0.99560547
              },
              {
                "word": "bit",
                "start": 557.6446,
                "end": 557.88324,
                "confidence": 0.9975586
              },
              {
                "word": "smaller",
                "start": 557.88324,
                "end": 558.28107,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 558.28107,
                "end": 558.44025,
                "confidence": 0.9980469
              },
              {
                "word": "put",
                "start": 558.44025,
                "end": 558.59937,
                "confidence": 0.9926758
              },
              {
                "word": "sunglasses",
                "start": 558.59937,
                "end": 559.09937,
                "confidence": 1
              },
              {
                "word": "on",
                "start": 559.1563,
                "end": 559.3154,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 559.3154,
                "end": 559.55414,
                "confidence": 0.99658203
              },
              {
                "word": "is",
                "start": 559.55414,
                "end": 559.95197,
                "confidence": 0.9941406
              },
              {
                "word": "so",
                "start": 559.95197,
                "end": 560.2702,
                "confidence": 0.9980469
              },
              {
                "word": "frustrated",
                "start": 560.2702,
                "end": 560.668,
                "confidence": 0.6904297
              },
              {
                "word": "so",
                "start": 560.90674,
                "end": 560.9863,
                "confidence": 0.72314453
              },
              {
                "word": "what",
                "start": 560.9863,
                "end": 561.06586,
                "confidence": 0.9941406
              },
              {
                "word": "do",
                "start": 561.06586,
                "end": 561.14545,
                "confidence": 0.8154297
              },
              {
                "word": "you",
                "start": 561.14545,
                "end": 561.22504,
                "confidence": 0.9970703
              },
              {
                "word": "do",
                "start": 561.22504,
                "end": 561.5433,
                "confidence": 0.8964844
              },
              {
                "word": "instead",
                "start": 561.5433,
                "end": 561.7024,
                "confidence": 0.9848633
              },
              {
                "word": "you",
                "start": 561.9411,
                "end": 562.1002,
                "confidence": 0.9980469
              },
              {
                "word": "just",
                "start": 562.1002,
                "end": 562.3389,
                "confidence": 0.99853516
              },
              {
                "word": "click",
                "start": 562.3389,
                "end": 562.65717,
                "confidence": 0.99560547
              },
              {
                "word": "into",
                "start": 562.65717,
                "end": 562.73676,
                "confidence": 0.9921875
              },
              {
                "word": "the",
                "start": 562.73676,
                "end": 562.8959,
                "confidence": 0.9970703
              },
              {
                "word": "image",
                "start": 562.8959,
                "end": 563.1346,
                "confidence": 0.9995117
              },
              {
                "word": "draw",
                "start": 563.7711,
                "end": 564.00977,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 564.00977,
                "end": 564.2485,
                "confidence": 0.99853516
              },
              {
                "word": "really",
                "start": 564.2485,
                "end": 564.6463,
                "confidence": 0.9980469
              },
              {
                "word": "crude",
                "start": 564.6463,
                "end": 565.1463,
                "confidence": 0.99072266
              },
              {
                "word": "outline",
                "start": 565.20325,
                "end": 565.3624,
                "confidence": 0.9975586
              },
              {
                "word": "of",
                "start": 565.3624,
                "end": 565.6011,
                "confidence": 0.99853516
              },
              {
                "word": "sunglasses",
                "start": 565.6011,
                "end": 566.1011,
                "confidence": 0.9995117
              },
              {
                "word": "over",
                "start": 566.4763,
                "end": 566.715,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 566.715,
                "end": 566.9537,
                "confidence": 0.99902344
              },
              {
                "word": "cat's",
                "start": 566.9537,
                "end": 567.1924,
                "confidence": 0.9663086
              },
              {
                "word": "size",
                "start": 567.1924,
                "end": 567.4311,
                "confidence": 0.515625
              },
              {
                "word": "and",
                "start": 568.08356,
                "end": 568.4025,
                "confidence": 0.99902344
              },
              {
                "word": "type",
                "start": 568.4025,
                "end": 568.8809,
                "confidence": 0.9975586
              },
              {
                "word": "add",
                "start": 568.8809,
                "end": 569.1999,
                "confidence": 0.93896484
              },
              {
                "word": "sunglasses",
                "start": 569.1999,
                "end": 569.6999,
                "confidence": 0.9980469
              },
              {
                "word": "here",
                "start": 569.91754,
                "end": 570.07697,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 570.5554,
                "end": 570.7946,
                "confidence": 0.9995117
              },
              {
                "word": "anchor",
                "start": 570.7946,
                "end": 571.0338,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 571.0338,
                "end": 571.1136,
                "confidence": 0.9980469
              },
              {
                "word": "ai",
                "start": 571.2731,
                "end": 571.7731,
                "confidence": 0.95214844
              },
              {
                "word": "attention",
                "start": 571.91095,
                "end": 572.07043,
                "confidence": 0.99902344
              },
              {
                "word": "so",
                "start": 572.38934,
                "end": 572.5488,
                "confidence": 0.984375
              },
              {
                "word": "you're",
                "start": 572.5488,
                "end": 572.8678,
                "confidence": 0.9926758
              },
              {
                "word": "combining",
                "start": 572.8678,
                "end": 573.1867,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 573.1867,
                "end": 573.42596,
                "confidence": 0.9995117
              },
              {
                "word": "user's",
                "start": 573.42596,
                "end": 573.92596,
                "confidence": 0.9223633
              },
              {
                "word": "direct",
                "start": 574.14355,
                "end": 574.622,
                "confidence": 0.99902344
              },
              {
                "word": "visual",
                "start": 574.622,
                "end": 575.0207,
                "confidence": 0.99658203
              },
              {
                "word": "intent",
                "start": 575.0207,
                "end": 575.4194,
                "confidence": 0.99560547
              },
              {
                "word": "with",
                "start": 575.4194,
                "end": 575.65857,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 575.65857,
                "end": 575.81805,
                "confidence": 0.9970703
              },
              {
                "word": "ai",
                "start": 575.89777,
                "end": 576.39777,
                "confidence": 0.9448242
              },
              {
                "word": "ability",
                "start": 576.45593,
                "end": 576.7749,
                "confidence": 1
              },
              {
                "word": "to",
                "start": 576.7749,
                "end": 577.0938,
                "confidence": 0.99658203
              },
              {
                "word": "execute",
                "start": 577.0938,
                "end": 577.2533,
                "confidence": 1
              },
              {
                "word": "yes",
                "start": 577.4925,
                "end": 577.652,
                "confidence": 0.99560547
              },
              {
                "word": "it",
                "start": 578.3696,
                "end": 578.6088,
                "confidence": 0.9946289
              },
              {
                "word": "stops",
                "start": 578.6088,
                "end": 578.7683,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 578.7683,
                "end": 578.9278,
                "confidence": 0.98779297
              },
              {
                "word": "ai",
                "start": 579.0075,
                "end": 579.2467,
                "confidence": 0.9975586
              },
              {
                "word": "from",
                "start": 579.2467,
                "end": 579.48596,
                "confidence": 0.99853516
              },
              {
                "word": "hall",
                "start": 579.48596,
                "end": 579.98596,
                "confidence": 0.9453125
              },
              {
                "word": "or",
                "start": 580.0441,
                "end": 580.2833,
                "confidence": 0.9970703
              },
              {
                "word": "changing",
                "start": 580.2833,
                "end": 580.5225,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 580.5225,
                "end": 580.682,
                "confidence": 0.9980469
              },
              {
                "word": "whole",
                "start": 580.682,
                "end": 580.8415,
                "confidence": 0.99902344
              },
              {
                "word": "image",
                "start": 580.8415,
                "end": 581.0009,
                "confidence": 1
              },
              {
                "word": "you're",
                "start": 581.3199,
                "end": 581.4794,
                "confidence": 0.99560547
              },
              {
                "word": "giving",
                "start": 581.4794,
                "end": 581.71857,
                "confidence": 0.9980469
              },
              {
                "word": "it",
                "start": 581.71857,
                "end": 581.79834,
                "confidence": 0.9824219
              },
              {
                "word": "a",
                "start": 581.79834,
                "end": 581.95776,
                "confidence": 0.99658203
              },
              {
                "word": "map",
                "start": 581.95776,
                "end": 582.03754,
                "confidence": 0.9897461
              },
              {
                "word": "and",
                "start": 582.197,
                "end": 582.35645,
                "confidence": 0.9892578
              },
              {
                "word": "what",
                "start": 582.35645,
                "end": 582.5957,
                "confidence": 0.99853516
              },
              {
                "word": "about",
                "start": 582.5957,
                "end": 582.81,
                "confidence": 1
              },
              {
                "word": "safety",
                "start": 583.0095,
                "end": 583.24896,
                "confidence": 0.99902344
              },
              {
                "word": "i",
                "start": 583.40857,
                "end": 583.48834,
                "confidence": 0.99658203
              },
              {
                "word": "mean",
                "start": 583.48834,
                "end": 583.5682,
                "confidence": 0.9980469
              },
              {
                "word": "these",
                "start": 583.7278,
                "end": 583.8076,
                "confidence": 0.99560547
              },
              {
                "word": "are",
                "start": 583.8076,
                "end": 583.9672,
                "confidence": 0.99658203
              },
              {
                "word": "getting",
                "start": 583.9672,
                "end": 584.2066,
                "confidence": 0.9995117
              },
              {
                "word": "so",
                "start": 584.2066,
                "end": 584.60565,
                "confidence": 0.9970703
              },
              {
                "word": "realistic",
                "start": 584.60565,
                "end": 584.9249,
                "confidence": 0.9946289
              },
              {
                "word": "yeah",
                "start": 585.08453,
                "end": 585.24414,
                "confidence": 0.97753906
              },
              {
                "word": "and",
                "start": 585.40375,
                "end": 585.4836,
                "confidence": 0.9638672
              },
              {
                "word": "google",
                "start": 585.56335,
                "end": 585.8028,
                "confidence": 1
              },
              {
                "word": "is",
                "start": 585.8028,
                "end": 585.9624,
                "confidence": 0.99560547
              },
              {
                "word": "pushing",
                "start": 585.9624,
                "end": 586.36145,
                "confidence": 0.99853516
              },
              {
                "word": "sent",
                "start": 586.36145,
                "end": 586.86145,
                "confidence": 0.578125
              },
              {
                "word": "really",
                "start": 587.0797,
                "end": 587.47876,
                "confidence": 0.99853516
              },
              {
                "word": "hard",
                "start": 587.47876,
                "end": 587.798,
                "confidence": 0.99853516
              },
              {
                "word": "here",
                "start": 587.798,
                "end": 587.9576,
                "confidence": 0.9975586
              },
              {
                "word": "every",
                "start": 588.43646,
                "end": 588.7557,
                "confidence": 0.99658203
              },
              {
                "word": "image",
                "start": 588.7557,
                "end": 589.0749,
                "confidence": 1
              },
              {
                "word": "it",
                "start": 589.0749,
                "end": 589.31433,
                "confidence": 0.96240234
              },
              {
                "word": "generates",
                "start": 589.31433,
                "end": 589.81433,
                "confidence": 0.9995117
              },
              {
                "word": "has",
                "start": 589.95276,
                "end": 590.1124,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 590.1124,
                "end": 590.5114,
                "confidence": 0.99853516
              },
              {
                "word": "invisible",
                "start": 590.5114,
                "end": 591.0114,
                "confidence": 0.9970703
              },
              {
                "word": "watermark",
                "start": 591.07007,
                "end": 591.57007,
                "confidence": 0.99121094
              },
              {
                "word": "baked",
                "start": 591.7884,
                "end": 592.1874,
                "confidence": 0.96533203
              },
              {
                "word": "into",
                "start": 592.1874,
                "end": 592.2672,
                "confidence": 0.9951172
              },
              {
                "word": "the",
                "start": 592.2672,
                "end": 592.5864,
                "confidence": 0.99658203
              },
              {
                "word": "pixels",
                "start": 592.5864,
                "end": 592.74603,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 593.0653,
                "end": 593.2249,
                "confidence": 0.99902344
              },
              {
                "word": "can't",
                "start": 593.2249,
                "end": 593.4643,
                "confidence": 0.9970703
              },
              {
                "word": "see",
                "start": 593.4643,
                "end": 593.62396,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 593.62396,
                "end": 593.70374,
                "confidence": 0.9995117
              },
              {
                "word": "but",
                "start": 594.02295,
                "end": 594.1826,
                "confidence": 0.9970703
              },
              {
                "word": "a",
                "start": 594.1826,
                "end": 594.50183,
                "confidence": 0.9916992
              },
              {
                "word": "machine",
                "start": 594.50183,
                "end": 594.7413,
                "confidence": 0.99853516
              },
              {
                "word": "can",
                "start": 594.7413,
                "end": 594.9009,
                "confidence": 0.9975586
              },
              {
                "word": "so",
                "start": 595.3946,
                "end": 595.6338,
                "confidence": 0.9975586
              },
              {
                "word": "least",
                "start": 595.6338,
                "end": 595.7135,
                "confidence": 0.875
              },
              {
                "word": "there's",
                "start": 595.7135,
                "end": 595.8729,
                "confidence": 0.92041016
              },
              {
                "word": "a",
                "start": 595.8729,
                "end": 596.03235,
                "confidence": 0.9941406
              },
              {
                "word": "layer",
                "start": 596.03235,
                "end": 596.1918,
                "confidence": 0.99853516
              },
              {
                "word": "of",
                "start": 596.1918,
                "end": 596.6701,
                "confidence": 0.9995117
              },
              {
                "word": "transparency",
                "start": 596.6701,
                "end": 596.989,
                "confidence": 1
              },
              {
                "word": "which",
                "start": 597.22815,
                "end": 597.3876,
                "confidence": 0.9995117
              },
              {
                "word": "is",
                "start": 597.3876,
                "end": 597.8876,
                "confidence": 0.99902344
              },
              {
                "word": "necessary",
                "start": 597.9456,
                "end": 598.0253,
                "confidence": 1
              },
              {
                "word": "okay",
                "start": 598.34424,
                "end": 598.42395,
                "confidence": 0.9980469
              },
              {
                "word": "so",
                "start": 598.6631,
                "end": 599.1631,
                "confidence": 0.99853516
              },
              {
                "word": "sometimes",
                "start": 599.69946,
                "end": 600.17773,
                "confidence": 0.9995117
              },
              {
                "word": "creativity",
                "start": 600.17773,
                "end": 600.65607,
                "confidence": 0.9995117
              },
              {
                "word": "isn't",
                "start": 600.65607,
                "end": 600.9749,
                "confidence": 0.9995117
              },
              {
                "word": "about",
                "start": 600.9749,
                "end": 601.2141,
                "confidence": 1
              },
              {
                "word": "making",
                "start": 601.2141,
                "end": 601.45325,
                "confidence": 0.99902344
              },
              {
                "word": "something",
                "start": 601.45325,
                "end": 601.6924,
                "confidence": 0.9995117
              },
              {
                "word": "from",
                "start": 601.6924,
                "end": 602.0113,
                "confidence": 0.9995117
              },
              {
                "word": "scratch",
                "start": 602.0113,
                "end": 602.1707,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 602.33014,
                "end": 602.4896,
                "confidence": 0.9970703
              },
              {
                "word": "about",
                "start": 602.4896,
                "end": 602.8882,
                "confidence": 0.9995117
              },
              {
                "word": "combining",
                "start": 602.8882,
                "end": 603.2868,
                "confidence": 0.9995117
              },
              {
                "word": "things",
                "start": 603.2868,
                "end": 603.52594,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 603.92456,
                "end": 604.084,
                "confidence": 0.99853516
              },
              {
                "word": "seems",
                "start": 604.084,
                "end": 604.3231,
                "confidence": 0.99853516
              },
              {
                "word": "to",
                "start": 604.3231,
                "end": 604.40283,
                "confidence": 0.99902344
              },
              {
                "word": "be",
                "start": 604.40283,
                "end": 604.5623,
                "confidence": 0.9995117
              },
              {
                "word": "where",
                "start": 604.5623,
                "end": 604.80145,
                "confidence": 0.9970703
              },
              {
                "word": "wi",
                "start": 604.80145,
                "end": 605.12036,
                "confidence": 0.7182617
              },
              {
                "word": "and",
                "start": 605.12036,
                "end": 605.2798,
                "confidence": 0.9995117
              },
              {
                "word": "mixed",
                "start": 605.2798,
                "end": 605.59863,
                "confidence": 0.68115234
              },
              {
                "word": "board",
                "start": 605.59863,
                "end": 605.8378,
                "confidence": 0.9291992
              },
              {
                "word": "come",
                "start": 605.8378,
                "end": 605.91754,
                "confidence": 0.9926758
              },
              {
                "word": "in",
                "start": 605.91754,
                "end": 605.99725,
                "confidence": 0.9946289
              },
              {
                "word": "these",
                "start": 606.3161,
                "end": 606.3958,
                "confidence": 0.99902344
              },
              {
                "word": "are",
                "start": 606.3958,
                "end": 606.5553,
                "confidence": 0.9980469
              },
              {
                "word": "for",
                "start": 606.5553,
                "end": 606.7147,
                "confidence": 0.99853516
              },
              {
                "word": "that",
                "start": 606.7147,
                "end": 607.1133,
                "confidence": 0.99609375
              },
              {
                "word": "messy",
                "start": 607.1133,
                "end": 607.5916,
                "confidence": 0.99560547
              },
              {
                "word": "early",
                "start": 607.5916,
                "end": 607.99023,
                "confidence": 0.9995117
              },
              {
                "word": "stage",
                "start": 607.99023,
                "end": 608.2294,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 608.2294,
                "end": 608.3888,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 608.3888,
                "end": 608.5483,
                "confidence": 0.99902344
              },
              {
                "word": "creative",
                "start": 608.5483,
                "end": 609.02655,
                "confidence": 0.99902344
              },
              {
                "word": "process",
                "start": 609.02655,
                "end": 609.34546,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 609.5999,
                "end": 609.75977,
                "confidence": 0.97509766
              },
              {
                "word": "whisk",
                "start": 609.75977,
                "end": 609.9196,
                "confidence": 0.86816406
              },
              {
                "word": "is",
                "start": 609.9196,
                "end": 610.1594,
                "confidence": 0.9897461
              },
              {
                "word": "fascinating",
                "start": 610.1594,
                "end": 610.6594,
                "confidence": 0.9995117
              },
              {
                "word": "because",
                "start": 610.719,
                "end": 610.79895,
                "confidence": 0.99902344
              },
              {
                "word": "it",
                "start": 610.79895,
                "end": 611.03876,
                "confidence": 0.99853516
              },
              {
                "word": "almost",
                "start": 611.03876,
                "end": 611.53876,
                "confidence": 0.99902344
              },
              {
                "word": "completely",
                "start": 611.6783,
                "end": 611.99805,
                "confidence": 0.9995117
              },
              {
                "word": "gets",
                "start": 611.99805,
                "end": 612.1579,
                "confidence": 0.9814453
              },
              {
                "word": "rid",
                "start": 612.1579,
                "end": 612.31775,
                "confidence": 0.9951172
              },
              {
                "word": "of",
                "start": 612.31775,
                "end": 612.5576,
                "confidence": 0.9980469
              },
              {
                "word": "text",
                "start": 612.5576,
                "end": 612.71747,
                "confidence": 0.9970703
              },
              {
                "word": "prompts",
                "start": 612.71747,
                "end": 612.9573,
                "confidence": 0.98583984
              },
              {
                "word": "it",
                "start": 613.4369,
                "end": 613.5968,
                "confidence": 0.80566406
              },
              {
                "word": "uses",
                "start": 613.5968,
                "end": 613.9165,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 613.9165,
                "end": 614.0764,
                "confidence": 0.9951172
              },
              {
                "word": "three",
                "start": 614.0764,
                "end": 614.3162,
                "confidence": 0.9916992
              },
              {
                "word": "image",
                "start": 614.3162,
                "end": 614.71594,
                "confidence": 0.99121094
              },
              {
                "word": "input",
                "start": 614.71594,
                "end": 614.8758,
                "confidence": 0.9794922
              },
              {
                "word": "subject",
                "start": 615.19556,
                "end": 615.6752,
                "confidence": 0.99853516
              },
              {
                "word": "seen",
                "start": 616.0748,
                "end": 616.3147,
                "confidence": 0.5292969
              },
              {
                "word": "and",
                "start": 616.3147,
                "end": 616.6344,
                "confidence": 0.9272461
              },
              {
                "word": "style",
                "start": 616.6344,
                "end": 616.7943,
                "confidence": 0.9897461
              },
              {
                "word": "right",
                "start": 617.1141,
                "end": 617.194,
                "confidence": 0.99560547
              },
              {
                "word": "you",
                "start": 617.3539,
                "end": 617.5937,
                "confidence": 0.99853516
              },
              {
                "word": "drag",
                "start": 617.5937,
                "end": 617.8335,
                "confidence": 0.98583984
              },
              {
                "word": "in",
                "start": 617.8335,
                "end": 617.91345,
                "confidence": 0.9604492
              },
              {
                "word": "a",
                "start": 617.91345,
                "end": 618.15326,
                "confidence": 0.9970703
              },
              {
                "word": "picture",
                "start": 618.15326,
                "end": 618.3131,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 618.3131,
                "end": 618.39307,
                "confidence": 0.99902344
              },
              {
                "word": "your",
                "start": 618.39307,
                "end": 618.6329,
                "confidence": 0.99853516
              },
              {
                "word": "coffee",
                "start": 618.6329,
                "end": 618.8727,
                "confidence": 0.9995117
              },
              {
                "word": "mug",
                "start": 618.8727,
                "end": 619.03253,
                "confidence": 0.9995117
              },
              {
                "word": "that's",
                "start": 619.19244,
                "end": 619.3523,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 619.3523,
                "end": 619.5122,
                "confidence": 0.99365234
              },
              {
                "word": "subject",
                "start": 619.5122,
                "end": 619.752,
                "confidence": 0.9995117
              },
              {
                "word": "mh",
                "start": 619.91187,
                "end": 620.0718,
                "confidence": 0.90625
              },
              {
                "word": "that",
                "start": 620.3116,
                "end": 620.3915,
                "confidence": 0.67626953
              },
              {
                "word": "a",
                "start": 620.3915,
                "end": 620.6313,
                "confidence": 0.75927734
              },
              {
                "word": "picture",
                "start": 620.6313,
                "end": 620.71124,
                "confidence": 0.9633789
              },
              {
                "word": "of",
                "start": 620.71124,
                "end": 620.7912,
                "confidence": 0.94970703
              },
              {
                "word": "a",
                "start": 620.7912,
                "end": 620.95105,
                "confidence": 0.6801758
              },
              {
                "word": "sunset",
                "start": 620.95105,
                "end": 621.2708,
                "confidence": 0.9946289
              },
              {
                "word": "that's",
                "start": 621.5106,
                "end": 621.7504,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 621.7504,
                "end": 621.99023,
                "confidence": 0.9863281
              },
              {
                "word": "scene",
                "start": 621.99023,
                "end": 622.15015,
                "confidence": 0.98828125
              },
              {
                "word": "and",
                "start": 622.7235,
                "end": 622.8828,
                "confidence": 0.99853516
              },
              {
                "word": "then",
                "start": 622.8828,
                "end": 623.1218,
                "confidence": 0.99560547
              },
              {
                "word": "maybe",
                "start": 623.1218,
                "end": 623.2812,
                "confidence": 0.98535156
              },
              {
                "word": "a",
                "start": 623.2812,
                "end": 623.4405,
                "confidence": 0.51953125
              },
              {
                "word": "van",
                "start": 623.4405,
                "end": 623.6795,
                "confidence": 0.9394531
              },
              {
                "word": "go",
                "start": 623.6795,
                "end": 623.9982,
                "confidence": 0.86328125
              },
              {
                "word": "painting",
                "start": 623.9982,
                "end": 624.3169,
                "confidence": 0.9975586
              },
              {
                "word": "for",
                "start": 624.3169,
                "end": 624.4762,
                "confidence": 0.9975586
              },
              {
                "word": "the",
                "start": 624.4762,
                "end": 624.63556,
                "confidence": 0.99316406
              },
              {
                "word": "style",
                "start": 624.63556,
                "end": 624.79486,
                "confidence": 0.98291016
              },
              {
                "word": "and",
                "start": 624.9542,
                "end": 625.1136,
                "confidence": 0.98583984
              },
              {
                "word": "it",
                "start": 625.1136,
                "end": 625.2729,
                "confidence": 0.99902344
              },
              {
                "word": "blends",
                "start": 625.2729,
                "end": 625.43225,
                "confidence": 0.9980469
              },
              {
                "word": "them",
                "start": 625.43225,
                "end": 625.67126,
                "confidence": 0.8305664
              },
              {
                "word": "together",
                "start": 625.67126,
                "end": 625.83057,
                "confidence": 1
              },
              {
                "word": "it's",
                "start": 625.9899,
                "end": 626.1493,
                "confidence": 0.9975586
              },
              {
                "word": "not",
                "start": 626.1493,
                "end": 626.22894,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 626.22894,
                "end": 626.46796,
                "confidence": 0.99609375
              },
              {
                "word": "collage",
                "start": 626.46796,
                "end": 626.7866,
                "confidence": 0.9995117
              },
              {
                "word": "no",
                "start": 627.1053,
                "end": 627.26465,
                "confidence": 0.9902344
              },
              {
                "word": "it's",
                "start": 627.50366,
                "end": 627.5833,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 627.5833,
                "end": 627.7426,
                "confidence": 0.99365234
              },
              {
                "word": "true",
                "start": 627.7426,
                "end": 627.9816,
                "confidence": 0.8535156
              },
              {
                "word": "synthesis",
                "start": 627.9816,
                "end": 628.4816,
                "confidence": 0.97753906
              },
              {
                "word": "under",
                "start": 630.05304,
                "end": 630.3717,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 630.3717,
                "end": 630.53107,
                "confidence": 0.99853516
              },
              {
                "word": "hood",
                "start": 630.53107,
                "end": 630.7701,
                "confidence": 1
              },
              {
                "word": "gemini",
                "start": 631.32776,
                "end": 631.7261,
                "confidence": 0.99853516
              },
              {
                "word": "rides",
                "start": 631.7261,
                "end": 631.88544,
                "confidence": 0.94873047
              },
              {
                "word": "a",
                "start": 631.88544,
                "end": 632.04474,
                "confidence": 0.98828125
              },
              {
                "word": "really",
                "start": 632.04474,
                "end": 632.54474,
                "confidence": 0.9941406
              },
              {
                "word": "detailed",
                "start": 632.6024,
                "end": 633.08044,
                "confidence": 1
              },
              {
                "word": "description",
                "start": 633.08044,
                "end": 633.2398,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 633.2398,
                "end": 633.4788,
                "confidence": 0.99658203
              },
              {
                "word": "all",
                "start": 633.4788,
                "end": 633.6381,
                "confidence": 0.9995117
              },
              {
                "word": "three",
                "start": 633.6381,
                "end": 634.11615,
                "confidence": 0.99902344
              },
              {
                "word": "images",
                "start": 634.11615,
                "end": 634.1958,
                "confidence": 0.9975586
              },
              {
                "word": "and",
                "start": 634.84845,
                "end": 634.92816,
                "confidence": 0.9975586
              },
              {
                "word": "then",
                "start": 634.92816,
                "end": 635.247,
                "confidence": 0.90966797
              },
              {
                "word": "image",
                "start": 635.247,
                "end": 635.4862,
                "confidence": 0.9868164
              },
              {
                "word": "and",
                "start": 635.4862,
                "end": 635.72534,
                "confidence": 0.31811523
              },
              {
                "word": "three",
                "start": 635.72534,
                "end": 636.22534,
                "confidence": 0.99560547
              },
              {
                "word": "generates",
                "start": 636.92114,
                "end": 637.24,
                "confidence": 0.9975586
              },
              {
                "word": "a",
                "start": 637.24,
                "end": 637.3994,
                "confidence": 0.9980469
              },
              {
                "word": "brand",
                "start": 637.3994,
                "end": 637.5589,
                "confidence": 0.99365234
              },
              {
                "word": "new",
                "start": 637.5589,
                "end": 637.79803,
                "confidence": 0.99902344
              },
              {
                "word": "image",
                "start": 637.79803,
                "end": 638.0372,
                "confidence": 1
              },
              {
                "word": "from",
                "start": 638.0372,
                "end": 638.19666,
                "confidence": 0.9975586
              },
              {
                "word": "that",
                "start": 638.19666,
                "end": 638.6749,
                "confidence": 0.9926758
              },
              {
                "word": "description",
                "start": 638.6749,
                "end": 638.8344,
                "confidence": 0.9995117
              },
              {
                "word": "they",
                "start": 639.7113,
                "end": 639.95044,
                "confidence": 0.99609375
              },
              {
                "word": "showed",
                "start": 639.95044,
                "end": 640.18964,
                "confidence": 0.9941406
              },
              {
                "word": "an",
                "start": 640.18964,
                "end": 640.4288,
                "confidence": 1
              },
              {
                "word": "example",
                "start": 640.4288,
                "end": 640.7476,
                "confidence": 0.9995117
              },
              {
                "word": "where",
                "start": 640.7476,
                "end": 640.9071,
                "confidence": 0.9970703
              },
              {
                "word": "they",
                "start": 640.9071,
                "end": 641.14624,
                "confidence": 0.9921875
              },
              {
                "word": "turn",
                "start": 641.14624,
                "end": 641.30566,
                "confidence": 0.6767578
              },
              {
                "word": "a",
                "start": 641.30566,
                "end": 641.54486,
                "confidence": 0.9980469
              },
              {
                "word": "photo",
                "start": 641.54486,
                "end": 642.04486,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 642.10284,
                "end": 642.2623,
                "confidence": 0.9975586
              },
              {
                "word": "a",
                "start": 642.2623,
                "end": 642.42175,
                "confidence": 0.9916992
              },
              {
                "word": "glazed",
                "start": 642.42175,
                "end": 642.7406,
                "confidence": 0.89501953
              },
              {
                "word": "donut",
                "start": 642.7406,
                "end": 643.2406,
                "confidence": 0.55126953
              },
              {
                "word": "into",
                "start": 643.37836,
                "end": 643.45807,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 643.45807,
                "end": 643.777,
                "confidence": 0.9975586
              },
              {
                "word": "shiny",
                "start": 643.777,
                "end": 644.277,
                "confidence": 1
              },
              {
                "word": "enamel",
                "start": 644.49445,
                "end": 644.893,
                "confidence": 1
              },
              {
                "word": "pin",
                "start": 644.893,
                "end": 645.0525,
                "confidence": 0.95166016
              },
              {
                "word": "wow",
                "start": 645.37134,
                "end": 645.8497,
                "confidence": 0.9926758
              },
              {
                "word": "it",
                "start": 646.1685,
                "end": 646.4077,
                "confidence": 0.99853516
              },
              {
                "word": "captured",
                "start": 646.4077,
                "end": 646.72656,
                "confidence": 0.89990234
              },
              {
                "word": "the",
                "start": 646.72656,
                "end": 646.886,
                "confidence": 0.99902344
              },
              {
                "word": "texture",
                "start": 646.886,
                "end": 647.1252,
                "confidence": 0.9892578
              },
              {
                "word": "at",
                "start": 647.1252,
                "end": 647.2049,
                "confidence": 0.86279297
              },
              {
                "word": "the",
                "start": 647.2049,
                "end": 647.3643,
                "confidence": 0.99609375
              },
              {
                "word": "pin",
                "start": 647.3643,
                "end": 647.60345,
                "confidence": 0.65478516
              },
              {
                "word": "the",
                "start": 647.60345,
                "end": 647.76294,
                "confidence": 0.99316406
              },
              {
                "word": "metal",
                "start": 647.76294,
                "end": 648.1615,
                "confidence": 0.99658203
              },
              {
                "word": "edges",
                "start": 648.1615,
                "end": 648.615,
                "confidence": 0.9995117
              },
              {
                "word": "but",
                "start": 648.8144,
                "end": 648.9739,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 648.9739,
                "end": 649.21313,
                "confidence": 0.9086914
              },
              {
                "word": "still",
                "start": 649.21313,
                "end": 649.45245,
                "confidence": 0.9995117
              },
              {
                "word": "had",
                "start": 649.45245,
                "end": 649.53217,
                "confidence": 0.8178711
              },
              {
                "word": "the",
                "start": 649.53217,
                "end": 649.7714,
                "confidence": 0.9995117
              },
              {
                "word": "essence",
                "start": 649.7714,
                "end": 650.09045,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 650.09045,
                "end": 650.25,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 650.25,
                "end": 650.4095,
                "confidence": 0.99902344
              },
              {
                "word": "doughnut",
                "start": 650.4095,
                "end": 650.56903,
                "confidence": 0.69677734
              },
              {
                "word": "it's",
                "start": 650.7285,
                "end": 650.8083,
                "confidence": 0.9892578
              },
              {
                "word": "like",
                "start": 650.8083,
                "end": 650.9678,
                "confidence": 0.98046875
              },
              {
                "word": "a",
                "start": 650.9678,
                "end": 651.1273,
                "confidence": 0.98876953
              },
              {
                "word": "vibe",
                "start": 651.1273,
                "end": 651.44635,
                "confidence": 0.57177734
              },
              {
                "word": "engine",
                "start": 651.44635,
                "end": 651.52606,
                "confidence": 0.99316406
              },
              {
                "word": "a",
                "start": 651.6856,
                "end": 652.00464,
                "confidence": 0.9716797
              },
              {
                "word": "vibe",
                "start": 652.00464,
                "end": 652.4034,
                "confidence": 0.75097656
              },
              {
                "word": "engine",
                "start": 652.4034,
                "end": 652.5629,
                "confidence": 0.9946289
              },
              {
                "word": "and",
                "start": 652.88196,
                "end": 653.1212,
                "confidence": 0.99658203
              },
              {
                "word": "mix",
                "start": 653.1212,
                "end": 653.3605,
                "confidence": 0.55078125
              },
              {
                "word": "board",
                "start": 653.3605,
                "end": 653.44025,
                "confidence": 0.66552734
              },
              {
                "word": "mixed",
                "start": 653.6795,
                "end": 653.839,
                "confidence": 0.51464844
              },
              {
                "word": "board",
                "start": 653.839,
                "end": 653.99854,
                "confidence": 0.63916016
              },
              {
                "word": "is",
                "start": 653.99854,
                "end": 654.158,
                "confidence": 0.953125
              },
              {
                "word": "an",
                "start": 654.158,
                "end": 654.47705,
                "confidence": 0.9980469
              },
              {
                "word": "infinite",
                "start": 654.47705,
                "end": 654.7961,
                "confidence": 1
              },
              {
                "word": "mood",
                "start": 654.7961,
                "end": 655.03534,
                "confidence": 0.9995117
              },
              {
                "word": "board",
                "start": 655.03534,
                "end": 655.1949,
                "confidence": 0.6621094
              },
              {
                "word": "but",
                "start": 655.5936,
                "end": 655.7532,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 655.7532,
                "end": 656.0722,
                "confidence": 0.9980469
              },
              {
                "word": "alive",
                "start": 656.0722,
                "end": 656.31146,
                "confidence": 0.9580078
              },
              {
                "word": "you",
                "start": 656.6305,
                "end": 656.79,
                "confidence": 0.99902344
              },
              {
                "word": "could",
                "start": 656.79,
                "end": 656.86975,
                "confidence": 0.5600586
              },
              {
                "word": "put",
                "start": 656.86975,
                "end": 657.26855,
                "confidence": 0.9995117
              },
              {
                "word": "images",
                "start": 657.26855,
                "end": 657.5078,
                "confidence": 1
              },
              {
                "word": "on",
                "start": 657.5078,
                "end": 657.5875,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 657.5875,
                "end": 657.9863,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 657.9863,
                "end": 658.0661,
                "confidence": 0.99902344
              },
              {
                "word": "then",
                "start": 658.0661,
                "end": 658.30536,
                "confidence": 0.9946289
              },
              {
                "word": "just",
                "start": 658.30536,
                "end": 658.5446,
                "confidence": 0.99902344
              },
              {
                "word": "talk",
                "start": 658.5446,
                "end": 658.70416,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 658.70416,
                "end": 658.86365,
                "confidence": 0.9941406
              },
              {
                "word": "them",
                "start": 658.86365,
                "end": 658.9434,
                "confidence": 0.88916016
              },
              {
                "word": "you",
                "start": 659.1827,
                "end": 659.34216,
                "confidence": 0.9995117
              },
              {
                "word": "can",
                "start": 659.34216,
                "end": 659.5815,
                "confidence": 0.99658203
              },
              {
                "word": "literally",
                "start": 659.5815,
                "end": 659.90045,
                "confidence": 0.99902344
              },
              {
                "word": "type",
                "start": 659.90045,
                "end": 660.379,
                "confidence": 0.9970703
              },
              {
                "word": "make",
                "start": 660.379,
                "end": 660.5385,
                "confidence": 0.9980469
              },
              {
                "word": "this",
                "start": 660.5385,
                "end": 660.7778,
                "confidence": 0.99853516
              },
              {
                "word": "kitchen",
                "start": 660.7778,
                "end": 661.0171,
                "confidence": 1
              },
              {
                "word": "more",
                "start": 661.0171,
                "end": 661.1766,
                "confidence": 0.9921875
              },
              {
                "word": "modern",
                "start": 661.1766,
                "end": 661.6766,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 661.8299,
                "end": 661.9897,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 661.9897,
                "end": 662.1495,
                "confidence": 0.99902344
              },
              {
                "word": "image",
                "start": 662.1495,
                "end": 662.62885,
                "confidence": 1
              },
              {
                "word": "updates",
                "start": 662.62885,
                "end": 663.0283,
                "confidence": 0.99902344
              },
              {
                "word": "itself",
                "start": 663.0283,
                "end": 663.1082,
                "confidence": 0.9995117
              },
              {
                "word": "in",
                "start": 663.3479,
                "end": 663.5077,
                "confidence": 0.99902344
              },
              {
                "word": "context",
                "start": 663.5077,
                "end": 663.90717,
                "confidence": 0.9770508
              },
              {
                "word": "with",
                "start": 663.90717,
                "end": 664.06696,
                "confidence": 0.99902344
              },
              {
                "word": "everything",
                "start": 664.06696,
                "end": 664.38654,
                "confidence": 0.99902344
              },
              {
                "word": "else",
                "start": 664.38654,
                "end": 664.5463,
                "confidence": 0.99853516
              },
              {
                "word": "on",
                "start": 664.5463,
                "end": 664.6262,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 664.6262,
                "end": 664.7061,
                "confidence": 0.99560547
              },
              {
                "word": "board",
                "start": 664.7061,
                "end": 664.786,
                "confidence": 0.60546875
              },
              {
                "word": "so",
                "start": 665.0257,
                "end": 665.1855,
                "confidence": 0.99853516
              },
              {
                "word": "it's",
                "start": 665.1855,
                "end": 665.5051,
                "confidence": 0.99121094
              },
              {
                "word": "aware",
                "start": 665.5051,
                "end": 665.8247,
                "confidence": 0.9819336
              },
              {
                "word": "of",
                "start": 665.8247,
                "end": 665.9845,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 665.9845,
                "end": 666.1443,
                "confidence": 0.9975586
              },
              {
                "word": "other",
                "start": 666.1443,
                "end": 666.384,
                "confidence": 0.9970703
              },
              {
                "word": "image",
                "start": 666.384,
                "end": 666.54376,
                "confidence": 0.88378906
              },
              {
                "word": "images",
                "start": 666.54376,
                "end": 666.62366,
                "confidence": 0.9995117
              },
              {
                "word": "yes",
                "start": 666.86334,
                "end": 667.02313,
                "confidence": 0.93408203
              },
              {
                "word": "exactly",
                "start": 667.4226,
                "end": 667.5824,
                "confidence": 0.9995117
              },
              {
                "word": "it's",
                "start": 667.7422,
                "end": 667.902,
                "confidence": 0.91259766
              },
              {
                "word": "context",
                "start": 667.902,
                "end": 668.30145,
                "confidence": 0.99560547
              },
              {
                "word": "to",
                "start": 668.30145,
                "end": 668.38135,
                "confidence": 0.8955078
              },
              {
                "word": "where",
                "start": 668.38135,
                "end": 668.54114,
                "confidence": 0.60498047
              },
              {
                "word": "it",
                "start": 668.7808,
                "end": 668.9407,
                "confidence": 0.97314453
              },
              {
                "word": "can",
                "start": 668.9407,
                "end": 669.10046,
                "confidence": 0.9663086
              },
              {
                "word": "even",
                "start": 669.10046,
                "end": 669.34015,
                "confidence": 0.9995117
              },
              {
                "word": "start",
                "start": 669.34015,
                "end": 669.57983,
                "confidence": 0.9995117
              },
              {
                "word": "drafting",
                "start": 669.57983,
                "end": 669.9793,
                "confidence": 0.9995117
              },
              {
                "word": "ad",
                "start": 669.9793,
                "end": 670.219,
                "confidence": 0.90234375
              },
              {
                "word": "copy",
                "start": 670.219,
                "end": 670.5386,
                "confidence": 0.99072266
              },
              {
                "word": "or",
                "start": 670.5386,
                "end": 670.69836,
                "confidence": 0.9736328
              },
              {
                "word": "headlines",
                "start": 670.69836,
                "end": 671.17773,
                "confidence": 0.9819336
              },
              {
                "word": "for",
                "start": 671.17773,
                "end": 671.3375,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 671.3375,
                "end": 671.5772,
                "confidence": 0.99902344
              },
              {
                "word": "based",
                "start": 671.5772,
                "end": 671.8169,
                "confidence": 0.99902344
              },
              {
                "word": "on",
                "start": 671.8169,
                "end": 671.9767,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 671.9767,
                "end": 672.2164,
                "confidence": 0.99853516
              },
              {
                "word": "visual",
                "start": 672.2164,
                "end": 672.45605,
                "confidence": 0.9995117
              },
              {
                "word": "mood",
                "start": 672.45605,
                "end": 672.7757,
                "confidence": 0.9477539
              },
              {
                "word": "you've",
                "start": 672.7757,
                "end": 672.9355,
                "confidence": 0.98583984
              },
              {
                "word": "created",
                "start": 672.9355,
                "end": 673.25507,
                "confidence": 1
              },
              {
                "word": "okay",
                "start": 673.73444,
                "end": 673.81433,
                "confidence": 0.99853516
              },
              {
                "word": "so",
                "start": 674.1339,
                "end": 674.2937,
                "confidence": 0.9970703
              },
              {
                "word": "we've",
                "start": 674.2937,
                "end": 674.5334,
                "confidence": 0.9838867
              },
              {
                "word": "built",
                "start": 674.5334,
                "end": 674.6932,
                "confidence": 0.9921875
              },
              {
                "word": "the",
                "start": 674.6932,
                "end": 674.85297,
                "confidence": 0.99560547
              },
              {
                "word": "app",
                "start": 674.85297,
                "end": 675.01276,
                "confidence": 0.99609375
              },
              {
                "word": "we've",
                "start": 675.17255,
                "end": 675.41223,
                "confidence": 0.9946289
              },
              {
                "word": "branded",
                "start": 675.41223,
                "end": 675.6519,
                "confidence": 0.9897461
              },
              {
                "word": "the",
                "start": 675.6519,
                "end": 675.8916,
                "confidence": 0.99658203
              },
              {
                "word": "company",
                "start": 675.8916,
                "end": 676.0514,
                "confidence": 0.99853516
              },
              {
                "word": "we've",
                "start": 676.21124,
                "end": 676.4509,
                "confidence": 0.99121094
              },
              {
                "word": "generated",
                "start": 676.4509,
                "end": 676.7705,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 676.7705,
                "end": 676.9303,
                "confidence": 0.9892578
              },
              {
                "word": "image",
                "start": 676.9303,
                "end": 677.145,
                "confidence": 0.99365234
              },
              {
                "word": "but",
                "start": 677.4246,
                "end": 677.58435,
                "confidence": 0.9921875
              },
              {
                "word": "the",
                "start": 677.58435,
                "end": 677.74414,
                "confidence": 0.98876953
              },
              {
                "word": "final",
                "start": 677.74414,
                "end": 678.24414,
                "confidence": 0.98876953
              },
              {
                "word": "frontier",
                "start": 678.3033,
                "end": 678.4631,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 678.6228,
                "end": 678.7027,
                "confidence": 0.99121094
              },
              {
                "word": "thing",
                "start": 678.7027,
                "end": 679.1021,
                "confidence": 0.94970703
              },
              {
                "word": "everyone",
                "start": 679.1021,
                "end": 679.2619,
                "confidence": 0.99609375
              },
              {
                "word": "is",
                "start": 679.2619,
                "end": 679.42163,
                "confidence": 0.9941406
              },
              {
                "word": "chasing",
                "start": 679.42163,
                "end": 679.6613,
                "confidence": 0.99902344
              },
              {
                "word": "in",
                "start": 679.6613,
                "end": 679.90094,
                "confidence": 0.9902344
              },
              {
                "word": "twenty",
                "start": 679.90094,
                "end": 680.0607,
                "confidence": 0.9902344
              },
              {
                "word": "twenty",
                "start": 680.0607,
                "end": 680.38025,
                "confidence": 0.99609375
              },
              {
                "word": "six",
                "start": 680.38025,
                "end": 680.54,
                "confidence": 0.96435547
              },
              {
                "word": "is",
                "start": 680.54,
                "end": 680.9394,
                "confidence": 0.9794922
              },
              {
                "word": "video",
                "start": 680.9394,
                "end": 681.2589,
                "confidence": 0.99072266
              },
              {
                "word": "v",
                "start": 681.7382,
                "end": 681.97784,
                "confidence": 0.8466797
              },
              {
                "word": "three",
                "start": 681.97784,
                "end": 682.2175,
                "confidence": 0.9824219
              },
              {
                "word": "and",
                "start": 682.2175,
                "end": 682.45715,
                "confidence": 0.95214844
              },
              {
                "word": "flow",
                "start": 682.45715,
                "end": 682.61694,
                "confidence": 0.93652344
              },
              {
                "word": "this",
                "start": 682.93646,
                "end": 683.0962,
                "confidence": 0.99560547
              },
              {
                "word": "is",
                "start": 683.0962,
                "end": 683.256,
                "confidence": 0.9897461
              },
              {
                "word": "the",
                "start": 683.256,
                "end": 683.4157,
                "confidence": 0.9814453
              },
              {
                "word": "big",
                "start": 683.4157,
                "end": 683.5755,
                "confidence": 0.9916992
              },
              {
                "word": "one",
                "start": 683.5755,
                "end": 683.7352,
                "confidence": 0.99658203
              },
              {
                "word": "v",
                "start": 684.13464,
                "end": 684.45416,
                "confidence": 0.4855957
              },
              {
                "word": "three",
                "start": 684.45416,
                "end": 684.69385,
                "confidence": 0.97216797
              },
              {
                "word": "is",
                "start": 684.69385,
                "end": 684.8536,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 684.8536,
                "end": 685.01337,
                "confidence": 0.984375
              },
              {
                "word": "new",
                "start": 685.01337,
                "end": 685.1731,
                "confidence": 0.9941406
              },
              {
                "word": "model",
                "start": 685.1731,
                "end": 685.4927,
                "confidence": 0.99072266
              },
              {
                "word": "from",
                "start": 685.4927,
                "end": 685.7323,
                "confidence": 0.99316406
              },
              {
                "word": "deep",
                "start": 685.7323,
                "end": 685.9719,
                "confidence": 0.99609375
              },
              {
                "word": "mind",
                "start": 685.9719,
                "end": 686.2116,
                "confidence": 0.7314453
              },
              {
                "word": "and",
                "start": 686.77075,
                "end": 686.93054,
                "confidence": 0.9741211
              },
              {
                "word": "if",
                "start": 686.93054,
                "end": 687.0104,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 687.0104,
                "end": 687.17017,
                "confidence": 0.9970703
              },
              {
                "word": "take",
                "start": 687.17017,
                "end": 687.4098,
                "confidence": 0.99853516
              },
              {
                "word": "one",
                "start": 687.4098,
                "end": 687.6495,
                "confidence": 0.9980469
              },
              {
                "word": "thing",
                "start": 687.6495,
                "end": 687.8891,
                "confidence": 0.9941406
              },
              {
                "word": "away",
                "start": 687.8891,
                "end": 688.0489,
                "confidence": 0.9980469
              },
              {
                "word": "from",
                "start": 688.0489,
                "end": 688.2086,
                "confidence": 0.99853516
              },
              {
                "word": "our",
                "start": 688.2086,
                "end": 688.4483,
                "confidence": 0.9926758
              },
              {
                "word": "deep",
                "start": 688.4483,
                "end": 688.60803,
                "confidence": 0.99853516
              },
              {
                "word": "dive",
                "start": 688.60803,
                "end": 689.08734,
                "confidence": 0.7626953
              },
              {
                "word": "today",
                "start": 689.08734,
                "end": 689.32697,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 689.32697,
                "end": 689.40686,
                "confidence": 0.5419922
              },
              {
                "word": "should",
                "start": 689.40686,
                "end": 689.5666,
                "confidence": 0.99072266
              },
              {
                "word": "be",
                "start": 689.5666,
                "end": 689.8063,
                "confidence": 0.99316406
              },
              {
                "word": "this",
                "start": 689.8063,
                "end": 690.0459,
                "confidence": 0.9946289
              },
              {
                "word": "phrase",
                "start": 690.0459,
                "end": 690.2855,
                "confidence": 0.99853516
              },
              {
                "word": "native",
                "start": 691.25775,
                "end": 691.75775,
                "confidence": 0.99658203
              },
              {
                "word": "audio",
                "start": 691.8157,
                "end": 692.3157,
                "confidence": 0.9975586
              },
              {
                "word": "generation",
                "start": 692.61273,
                "end": 692.77216,
                "confidence": 0.99560547
              },
              {
                "word": "explain",
                "start": 693.3301,
                "end": 693.56915,
                "confidence": 0.9926758
              },
              {
                "word": "that",
                "start": 693.56915,
                "end": 694.0474,
                "confidence": 0.99853516
              },
              {
                "word": "because",
                "start": 694.0474,
                "end": 694.2865,
                "confidence": 1
              },
              {
                "word": "we've",
                "start": 694.2865,
                "end": 694.52563,
                "confidence": 0.99609375
              },
              {
                "word": "had",
                "start": 694.52563,
                "end": 694.7647,
                "confidence": 0.9995117
              },
              {
                "word": "tools",
                "start": 694.7647,
                "end": 695.08356,
                "confidence": 1
              },
              {
                "word": "that",
                "start": 695.08356,
                "end": 695.40234,
                "confidence": 0.9995117
              },
              {
                "word": "add",
                "start": 695.40234,
                "end": 695.7212,
                "confidence": 0.99365234
              },
              {
                "word": "audio",
                "start": 695.7212,
                "end": 696.1197,
                "confidence": 0.9951172
              },
              {
                "word": "to",
                "start": 696.1197,
                "end": 696.2791,
                "confidence": 0.94970703
              },
              {
                "word": "video",
                "start": 696.2791,
                "end": 696.7573,
                "confidence": 0.9980469
              },
              {
                "word": "before",
                "start": 696.7573,
                "end": 696.91675,
                "confidence": 0.9995117
              },
              {
                "word": "we",
                "start": 697.2356,
                "end": 697.39496,
                "confidence": 0.9995117
              },
              {
                "word": "have",
                "start": 697.39496,
                "end": 697.5544,
                "confidence": 0.99853516
              },
              {
                "word": "but",
                "start": 697.7935,
                "end": 697.9529,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 697.9529,
                "end": 698.0326,
                "confidence": 0.99365234
              },
              {
                "word": "was",
                "start": 698.0326,
                "end": 698.192,
                "confidence": 0.9941406
              },
              {
                "word": "always",
                "start": 698.192,
                "end": 698.43115,
                "confidence": 0.9995117
              },
              {
                "word": "post",
                "start": 698.43115,
                "end": 698.6702,
                "confidence": 0.99853516
              },
              {
                "word": "processing",
                "start": 698.6702,
                "end": 699.1702,
                "confidence": 0.9926758
              },
              {
                "word": "a",
                "start": 699.7064,
                "end": 699.9455,
                "confidence": 0.9980469
              },
              {
                "word": "separate",
                "start": 699.9455,
                "end": 700.18463,
                "confidence": 1
              },
              {
                "word": "ai",
                "start": 700.26434,
                "end": 700.66284,
                "confidence": 0.9873047
              },
              {
                "word": "would",
                "start": 700.66284,
                "end": 700.902,
                "confidence": 0.9975586
              },
              {
                "word": "look",
                "start": 700.902,
                "end": 700.9817,
                "confidence": 0.9995117
              },
              {
                "word": "at",
                "start": 700.9817,
                "end": 701.06134,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 701.06134,
                "end": 701.22076,
                "confidence": 0.9975586
              },
              {
                "word": "video",
                "start": 701.22076,
                "end": 701.5396,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 701.5396,
                "end": 701.7787,
                "confidence": 0.9995117
              },
              {
                "word": "try",
                "start": 701.7787,
                "end": 701.8584,
                "confidence": 0.9941406
              },
              {
                "word": "to",
                "start": 701.8584,
                "end": 702.0178,
                "confidence": 0.99560547
              },
              {
                "word": "guess",
                "start": 702.0178,
                "end": 702.2569,
                "confidence": 0.97265625
              },
              {
                "word": "the",
                "start": 702.2569,
                "end": 702.4163,
                "confidence": 0.9980469
              },
              {
                "word": "sounds",
                "start": 702.4163,
                "end": 702.65546,
                "confidence": 0.99560547
              },
              {
                "word": "v",
                "start": 703.2134,
                "end": 703.6119,
                "confidence": 0.98339844
              },
              {
                "word": "three",
                "start": 703.6119,
                "end": 703.851,
                "confidence": 0.99365234
              },
              {
                "word": "generates",
                "start": 704.5043,
                "end": 704.8236,
                "confidence": 0.98339844
              },
              {
                "word": "the",
                "start": 704.8236,
                "end": 705.06305,
                "confidence": 0.99902344
              },
              {
                "word": "audio",
                "start": 705.06305,
                "end": 705.3824,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 705.3824,
                "end": 705.54205,
                "confidence": 0.9580078
              },
              {
                "word": "the",
                "start": 705.54205,
                "end": 705.78156,
                "confidence": 0.99121094
              },
              {
                "word": "pixels",
                "start": 705.78156,
                "end": 705.9412,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 705.9412,
                "end": 706.1807,
                "confidence": 0.8676758
              },
              {
                "word": "same",
                "start": 706.1807,
                "end": 706.34033,
                "confidence": 0.9980469
              },
              {
                "word": "time",
                "start": 706.34033,
                "end": 706.57983,
                "confidence": 0.9970703
              },
              {
                "word": "it",
                "start": 706.8992,
                "end": 707.3782,
                "confidence": 0.9995117
              },
              {
                "word": "understands",
                "start": 707.3782,
                "end": 707.53784,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 707.53784,
                "end": 707.69745,
                "confidence": 0.9980469
              },
              {
                "word": "physics",
                "start": 707.69745,
                "end": 707.93695,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 707.93695,
                "end": 708.0966,
                "confidence": 0.99365234
              },
              {
                "word": "the",
                "start": 708.0966,
                "end": 708.2563,
                "confidence": 0.9970703
              },
              {
                "word": "scene",
                "start": 708.2563,
                "end": 708.41595,
                "confidence": 0.99853516
              },
              {
                "word": "so",
                "start": 708.5756,
                "end": 708.7353,
                "confidence": 0.96777344
              },
              {
                "word": "if",
                "start": 708.7353,
                "end": 708.8151,
                "confidence": 0.99853516
              },
              {
                "word": "i",
                "start": 708.9748,
                "end": 709.1344,
                "confidence": 0.9921875
              },
              {
                "word": "prompt",
                "start": 709.1344,
                "end": 709.45374,
                "confidence": 0.9970703
              },
              {
                "word": "for",
                "start": 709.45374,
                "end": 709.53357,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 709.53357,
                "end": 709.7731,
                "confidence": 0.9975586
              },
              {
                "word": "video",
                "start": 709.7731,
                "end": 710.2731,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 710.3319,
                "end": 710.4915,
                "confidence": 0.98876953
              },
              {
                "word": "a",
                "start": 710.4915,
                "end": 710.57135,
                "confidence": 0.69091797
              },
              {
                "word": "rain",
                "start": 710.57135,
                "end": 710.9705,
                "confidence": 0.7270508
              },
              {
                "word": "storm",
                "start": 710.9705,
                "end": 711.1302,
                "confidence": 0.45336914
              },
              {
                "word": "you",
                "start": 711.3697,
                "end": 711.4495,
                "confidence": 0.99902344
              },
              {
                "word": "don't",
                "start": 711.4495,
                "end": 711.6092,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 711.6092,
                "end": 711.76886,
                "confidence": 0.9873047
              },
              {
                "word": "see",
                "start": 711.76886,
                "end": 711.92847,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 711.92847,
                "end": 712.08813,
                "confidence": 0.99853516
              },
              {
                "word": "lightning",
                "start": 712.08813,
                "end": 712.4075,
                "confidence": 0.9897461
              },
              {
                "word": "you",
                "start": 712.647,
                "end": 712.80664,
                "confidence": 0.9975586
              },
              {
                "word": "hear",
                "start": 712.80664,
                "end": 713.04614,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 713.04614,
                "end": 713.2856,
                "confidence": 0.9970703
              },
              {
                "word": "thunder",
                "start": 713.2856,
                "end": 713.68475,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 713.68475,
                "end": 713.8444,
                "confidence": 0.9975586
              },
              {
                "word": "moment",
                "start": 713.8444,
                "end": 714.2436,
                "confidence": 0.99902344
              },
              {
                "word": "later",
                "start": 714.2436,
                "end": 714.4831,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 715.1217,
                "end": 715.2814,
                "confidence": 0.9980469
              },
              {
                "word": "hear",
                "start": 715.2814,
                "end": 715.3612,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 715.3612,
                "end": 715.5209,
                "confidence": 0.99902344
              },
              {
                "word": "sound",
                "start": 715.5209,
                "end": 715.68054,
                "confidence": 0.9975586
              },
              {
                "word": "of",
                "start": 715.68054,
                "end": 715.92004,
                "confidence": 0.99853516
              },
              {
                "word": "rain",
                "start": 715.92004,
                "end": 716.2393,
                "confidence": 0.99658203
              },
              {
                "word": "hitting",
                "start": 716.2393,
                "end": 716.399,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 716.399,
                "end": 716.6385,
                "confidence": 0.99658203
              },
              {
                "word": "metal",
                "start": 716.6385,
                "end": 716.878,
                "confidence": 0.97558594
              },
              {
                "word": "roof",
                "start": 716.878,
                "end": 717.03766,
                "confidence": 0.9838867
              },
              {
                "word": "versus",
                "start": 717.03766,
                "end": 717.357,
                "confidence": 0.9980469
              },
              {
                "word": "hitting",
                "start": 717.357,
                "end": 717.6763,
                "confidence": 0.99902344
              },
              {
                "word": "grass",
                "start": 717.6763,
                "end": 717.9956,
                "confidence": 0.99316406
              },
              {
                "word": "the",
                "start": 718.6488,
                "end": 718.88806,
                "confidence": 0.99853516
              },
              {
                "word": "main",
                "start": 718.88806,
                "end": 719.20703,
                "confidence": 0.99853516
              },
              {
                "word": "demo",
                "start": 719.20703,
                "end": 719.6057,
                "confidence": 0.9995117
              },
              {
                "word": "was",
                "start": 719.6057,
                "end": 719.845,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 719.845,
                "end": 720.345,
                "confidence": 0.99853516
              },
              {
                "word": "wise",
                "start": 720.40314,
                "end": 720.8018,
                "confidence": 0.93603516
              },
              {
                "word": "old",
                "start": 720.8018,
                "end": 721.1208,
                "confidence": 0.86035156
              },
              {
                "word": "owl",
                "start": 721.1208,
                "end": 721.36005,
                "confidence": 0.99658203
              },
              {
                "word": "talking",
                "start": 722.0777,
                "end": 722.31696,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 722.31696,
                "end": 722.47644,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 722.47644,
                "end": 722.71564,
                "confidence": 0.99658203
              },
              {
                "word": "nervous",
                "start": 722.71564,
                "end": 723.0346,
                "confidence": 0.9941406
              },
              {
                "word": "badger",
                "start": 723.0346,
                "end": 723.43335,
                "confidence": 0.9970703
              },
              {
                "word": "on",
                "start": 723.43335,
                "end": 723.59283,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 723.59283,
                "end": 723.83203,
                "confidence": 0.99609375
              },
              {
                "word": "path",
                "start": 723.83203,
                "end": 723.9118,
                "confidence": 0.97216797
              },
              {
                "word": "a",
                "start": 724.151,
                "end": 724.47,
                "confidence": 0.99316406
              },
              {
                "word": "classic",
                "start": 724.47,
                "end": 724.97,
                "confidence": 0.99853516
              },
              {
                "word": "setup",
                "start": 725.1079,
                "end": 725.4269,
                "confidence": 0.8925781
              },
              {
                "word": "but",
                "start": 725.82556,
                "end": 725.98505,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 725.98505,
                "end": 726.3838,
                "confidence": 0.9995117
              },
              {
                "word": "details",
                "start": 726.3838,
                "end": 726.70276,
                "confidence": 0.9995117
              },
              {
                "word": "were",
                "start": 726.70276,
                "end": 726.94196,
                "confidence": 0.99560547
              },
              {
                "word": "incredible",
                "start": 726.94196,
                "end": 727.2609,
                "confidence": 0.99853516
              },
              {
                "word": "yeah",
                "start": 727.4204,
                "end": 727.5799,
                "confidence": 0.98291016
              },
              {
                "word": "you",
                "start": 727.7394,
                "end": 727.81915,
                "confidence": 0.99853516
              },
              {
                "word": "could",
                "start": 727.81915,
                "end": 727.97864,
                "confidence": 0.8203125
              },
              {
                "word": "hear",
                "start": 727.97864,
                "end": 728.1381,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 728.1381,
                "end": 728.21783,
                "confidence": 0.9980469
              },
              {
                "word": "owl",
                "start": 728.3773,
                "end": 728.6963,
                "confidence": 0.84277344
              },
              {
                "word": "feathers",
                "start": 728.6963,
                "end": 729.01526,
                "confidence": 0.98876953
              },
              {
                "word": "russell",
                "start": 729.09503,
                "end": 729.414,
                "confidence": 0.984375
              },
              {
                "word": "you",
                "start": 729.8127,
                "end": 730.05194,
                "confidence": 0.9980469
              },
              {
                "word": "heard",
                "start": 730.05194,
                "end": 730.29114,
                "confidence": 0.9995117
              },
              {
                "word": "twig",
                "start": 730.29114,
                "end": 730.665,
                "confidence": 0.9873047
              },
              {
                "word": "snapping",
                "start": 731.02405,
                "end": 731.34326,
                "confidence": 0.9980469
              },
              {
                "word": "onto",
                "start": 731.34326,
                "end": 731.58264,
                "confidence": 0.6928711
              },
              {
                "word": "the",
                "start": 731.58264,
                "end": 731.74225,
                "confidence": 0.99658203
              },
              {
                "word": "badger",
                "start": 731.74225,
                "end": 732.14124,
                "confidence": 0.9995117
              },
              {
                "word": "feet",
                "start": 732.14124,
                "end": 732.30084,
                "confidence": 0.67285156
              },
              {
                "word": "and",
                "start": 732.8594,
                "end": 733.019,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 733.019,
                "end": 733.25836,
                "confidence": 0.99853516
              },
              {
                "word": "dialogue",
                "start": 733.25836,
                "end": 733.65735,
                "confidence": 0.86621094
              },
              {
                "word": "was",
                "start": 733.65735,
                "end": 733.8967,
                "confidence": 0.9941406
              },
              {
                "word": "perfectly",
                "start": 733.8967,
                "end": 734.2957,
                "confidence": 0.99853516
              },
              {
                "word": "lip",
                "start": 734.2957,
                "end": 734.4553,
                "confidence": 0.9921875
              },
              {
                "word": "synced",
                "start": 734.4553,
                "end": 734.6149,
                "confidence": 0.47314453
              },
              {
                "word": "it's",
                "start": 734.8543,
                "end": 735.0139,
                "confidence": 0.9970703
              },
              {
                "word": "not",
                "start": 735.0139,
                "end": 735.1735,
                "confidence": 0.99853516
              },
              {
                "word": "a",
                "start": 735.1735,
                "end": 735.3331,
                "confidence": 0.99609375
              },
              {
                "word": "silent",
                "start": 735.3331,
                "end": 735.6523,
                "confidence": 0.9995117
              },
              {
                "word": "movie",
                "start": 735.6523,
                "end": 735.89166,
                "confidence": 0.9926758
              },
              {
                "word": "with",
                "start": 735.89166,
                "end": 735.9715,
                "confidence": 0.77197266
              },
              {
                "word": "a",
                "start": 735.9715,
                "end": 736.13104,
                "confidence": 0.54248047
              },
              {
                "word": "soundtrack",
                "start": 736.13104,
                "end": 736.63104,
                "confidence": 0.9941406
              },
              {
                "word": "slapped",
                "start": 736.68964,
                "end": 736.929,
                "confidence": 0.8208008
              },
              {
                "word": "on",
                "start": 736.929,
                "end": 737.0886,
                "confidence": 0.99365234
              },
              {
                "word": "top",
                "start": 737.0886,
                "end": 737.2482,
                "confidence": 0.9897461
              },
              {
                "word": "and",
                "start": 737.4876,
                "end": 737.8068,
                "confidence": 0.99121094
              },
              {
                "word": "flow",
                "start": 737.8068,
                "end": 738.126,
                "confidence": 0.9511719
              },
              {
                "word": "is",
                "start": 738.126,
                "end": 738.2856,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 738.2856,
                "end": 738.4452,
                "confidence": 0.99902344
              },
              {
                "word": "tool",
                "start": 738.4452,
                "end": 738.6048,
                "confidence": 0.9980469
              },
              {
                "word": "you",
                "start": 738.6048,
                "end": 738.76434,
                "confidence": 0.9951172
              },
              {
                "word": "use",
                "start": 738.76434,
                "end": 738.92395,
                "confidence": 0.8022461
              },
              {
                "word": "to",
                "start": 738.92395,
                "end": 739.1633,
                "confidence": 0.9980469
              },
              {
                "word": "direct",
                "start": 739.1633,
                "end": 739.4028,
                "confidence": 0.9970703
              },
              {
                "word": "all",
                "start": 739.4028,
                "end": 739.5623,
                "confidence": 0.99609375
              },
              {
                "word": "this",
                "start": 739.5623,
                "end": 739.64215,
                "confidence": 0.9638672
              },
              {
                "word": "yeah",
                "start": 739.88153,
                "end": 739.9613,
                "confidence": 0.9589844
              },
              {
                "word": "view",
                "start": 740.2007,
                "end": 740.3603,
                "confidence": 0.68310547
              },
              {
                "word": "of",
                "start": 740.3603,
                "end": 740.4401,
                "confidence": 0.75927734
              },
              {
                "word": "the",
                "start": 740.4401,
                "end": 740.6795,
                "confidence": 0.98046875
              },
              {
                "word": "engine",
                "start": 740.6795,
                "end": 741.0785,
                "confidence": 0.99853516
              },
              {
                "word": "flows",
                "start": 741.0785,
                "end": 741.3179,
                "confidence": 0.96435547
              },
              {
                "word": "the",
                "start": 741.3179,
                "end": 741.55725,
                "confidence": 0.99609375
              },
              {
                "word": "cockpit",
                "start": 741.55725,
                "end": 742.05725,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 742.11584,
                "end": 742.43506,
                "confidence": 0.9975586
              },
              {
                "word": "flow",
                "start": 742.43506,
                "end": 742.9138,
                "confidence": 0.91845703
              },
              {
                "word": "solves",
                "start": 742.9138,
                "end": 743.233,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 743.233,
                "end": 743.3926,
                "confidence": 0.9975586
              },
              {
                "word": "single",
                "start": 743.3926,
                "end": 743.7118,
                "confidence": 0.9995117
              },
              {
                "word": "biggest",
                "start": 743.7118,
                "end": 744.03094,
                "confidence": 0.9995117
              },
              {
                "word": "problem",
                "start": 744.03094,
                "end": 744.2704,
                "confidence": 0.99902344
              },
              {
                "word": "in",
                "start": 744.2704,
                "end": 744.35016,
                "confidence": 0.8149414
              },
              {
                "word": "ai",
                "start": 744.42993,
                "end": 744.74915,
                "confidence": 0.98046875
              },
              {
                "word": "video",
                "start": 744.74915,
                "end": 745.06836,
                "confidence": 0.94189453
              },
              {
                "word": "so",
                "start": 745.06836,
                "end": 745.14813,
                "confidence": 0.99072266
              },
              {
                "word": "far",
                "start": 745.14813,
                "end": 745.30774,
                "confidence": 0.9980469
              },
              {
                "word": "which",
                "start": 745.3875,
                "end": 745.5471,
                "confidence": 0.99902344
              },
              {
                "word": "is",
                "start": 745.5471,
                "end": 745.8663,
                "confidence": 0.99560547
              },
              {
                "word": "consistency",
                "start": 745.8663,
                "end": 746.26526,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 746.5991,
                "end": 746.75836,
                "confidence": 0.9941406
              },
              {
                "word": "flickering",
                "start": 746.75836,
                "end": 747.25836,
                "confidence": 0.9970703
              },
              {
                "word": "face",
                "start": 747.31573,
                "end": 747.6343,
                "confidence": 0.94628906
              },
              {
                "word": "problem",
                "start": 747.6343,
                "end": 747.8731,
                "confidence": 0.99560547
              },
              {
                "word": "that's",
                "start": 748.2713,
                "end": 748.51013,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 748.51013,
                "end": 748.66943,
                "confidence": 0.99902344
              },
              {
                "word": "one",
                "start": 748.66943,
                "end": 748.8287,
                "confidence": 0.99902344
              },
              {
                "word": "your",
                "start": 749.14716,
                "end": 749.38605,
                "confidence": 0.99902344
              },
              {
                "word": "character",
                "start": 749.38605,
                "end": 749.7046,
                "confidence": 1
              },
              {
                "word": "looks",
                "start": 749.7046,
                "end": 749.9435,
                "confidence": 1
              },
              {
                "word": "great",
                "start": 749.9435,
                "end": 750.1027,
                "confidence": 0.9868164
              },
              {
                "word": "in",
                "start": 750.1027,
                "end": 750.26196,
                "confidence": 0.97509766
              },
              {
                "word": "one",
                "start": 750.26196,
                "end": 750.50085,
                "confidence": 0.9970703
              },
              {
                "word": "shot",
                "start": 750.50085,
                "end": 750.6601,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 750.81934,
                "end": 750.899,
                "confidence": 0.99658203
              },
              {
                "word": "then",
                "start": 750.899,
                "end": 751.0582,
                "confidence": 0.9838867
              },
              {
                "word": "in",
                "start": 751.0582,
                "end": 751.1379,
                "confidence": 0.99609375
              },
              {
                "word": "the",
                "start": 751.1379,
                "end": 751.2971,
                "confidence": 0.99560547
              },
              {
                "word": "next",
                "start": 751.2971,
                "end": 751.45636,
                "confidence": 0.99853516
              },
              {
                "word": "shot",
                "start": 751.45636,
                "end": 751.61566,
                "confidence": 0.99853516
              },
              {
                "word": "they",
                "start": 751.69525,
                "end": 751.8545,
                "confidence": 0.9951172
              },
              {
                "word": "have",
                "start": 751.8545,
                "end": 751.93414,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 751.93414,
                "end": 752.0138,
                "confidence": 0.9975586
              },
              {
                "word": "different",
                "start": 752.0138,
                "end": 752.3323,
                "confidence": 0.99902344
              },
              {
                "word": "nose",
                "start": 752.3323,
                "end": 752.57117,
                "confidence": 0.9941406
              },
              {
                "word": "flow",
                "start": 753.2082,
                "end": 753.5267,
                "confidence": 0.9819336
              },
              {
                "word": "has",
                "start": 753.5267,
                "end": 753.686,
                "confidence": 0.99902344
              },
              {
                "word": "asset",
                "start": 753.686,
                "end": 754.0841,
                "confidence": 0.99609375
              },
              {
                "word": "management",
                "start": 754.0841,
                "end": 754.48224,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 754.8007,
                "end": 755.0396,
                "confidence": 0.9980469
              },
              {
                "word": "define",
                "start": 755.0396,
                "end": 755.2785,
                "confidence": 0.99365234
              },
              {
                "word": "your",
                "start": 755.2785,
                "end": 755.43774,
                "confidence": 0.9980469
              },
              {
                "word": "character",
                "start": 755.43774,
                "end": 755.7563,
                "confidence": 0.9995117
              },
              {
                "word": "wants",
                "start": 755.7563,
                "end": 756.2563,
                "confidence": 0.50634766
              },
              {
                "word": "and",
                "start": 756.31366,
                "end": 756.4729,
                "confidence": 0.9995117
              },
              {
                "word": "it",
                "start": 756.4729,
                "end": 756.6322,
                "confidence": 0.9980469
              },
              {
                "word": "locks",
                "start": 756.6322,
                "end": 757.03033,
                "confidence": 0.9736328
              },
              {
                "word": "that",
                "start": 757.03033,
                "end": 757.3488,
                "confidence": 0.99902344
              },
              {
                "word": "identity",
                "start": 757.3488,
                "end": 757.8266,
                "confidence": 0.9995117
              },
              {
                "word": "across",
                "start": 757.8266,
                "end": 757.98584,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 757.98584,
                "end": 758.1451,
                "confidence": 0.9975586
              },
              {
                "word": "whole",
                "start": 758.1451,
                "end": 758.3044,
                "confidence": 0.99902344
              },
              {
                "word": "project",
                "start": 758.3044,
                "end": 758.62286,
                "confidence": 0.99902344
              },
              {
                "word": "that's",
                "start": 758.9414,
                "end": 759.10065,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 759.10065,
                "end": 759.2599,
                "confidence": 0.9995117
              },
              {
                "word": "difference",
                "start": 759.2599,
                "end": 759.5784,
                "confidence": 1
              },
              {
                "word": "between",
                "start": 759.5784,
                "end": 759.81726,
                "confidence": 1
              },
              {
                "word": "making",
                "start": 759.81726,
                "end": 759.97656,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 759.97656,
                "end": 760.1358,
                "confidence": 0.99658203
              },
              {
                "word": "short",
                "start": 760.1358,
                "end": 760.4543,
                "confidence": 0.9980469
              },
              {
                "word": "clip",
                "start": 760.4543,
                "end": 760.6932,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 760.6932,
                "end": 760.93207,
                "confidence": 0.99658203
              },
              {
                "word": "making",
                "start": 760.93207,
                "end": 761.17096,
                "confidence": 0.9970703
              },
              {
                "word": "an",
                "start": 761.17096,
                "end": 761.385,
                "confidence": 0.98779297
              },
              {
                "word": "actual",
                "start": 761.50494,
                "end": 761.82465,
                "confidence": 0.99560547
              },
              {
                "word": "movie",
                "start": 761.82465,
                "end": 762.06445,
                "confidence": 0.9946289
              },
              {
                "word": "it",
                "start": 762.3842,
                "end": 762.4642,
                "confidence": 0.99853516
              },
              {
                "word": "is",
                "start": 762.4642,
                "end": 762.624,
                "confidence": 0.9970703
              },
              {
                "word": "and",
                "start": 763.10364,
                "end": 763.26355,
                "confidence": 0.9848633
              },
              {
                "word": "flow",
                "start": 763.4234,
                "end": 763.6632,
                "confidence": 0.7524414
              },
              {
                "word": "gives",
                "start": 763.6632,
                "end": 763.82306,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 763.82306,
                "end": 764.06287,
                "confidence": 0.9975586
              },
              {
                "word": "direct",
                "start": 764.06287,
                "end": 764.2228,
                "confidence": 0.71484375
              },
              {
                "word": "your",
                "start": 764.2228,
                "end": 764.5425,
                "confidence": 0.8461914
              },
              {
                "word": "controls",
                "start": 764.5425,
                "end": 764.7024,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 765.02216,
                "end": 765.182,
                "confidence": 0.99853516
              },
              {
                "word": "can",
                "start": 765.182,
                "end": 765.34186,
                "confidence": 0.9980469
              },
              {
                "word": "ask",
                "start": 765.34186,
                "end": 765.5018,
                "confidence": 0.99902344
              },
              {
                "word": "for",
                "start": 765.5018,
                "end": 765.6616,
                "confidence": 0.9975586
              },
              {
                "word": "a",
                "start": 765.6616,
                "end": 765.8215,
                "confidence": 0.9921875
              },
              {
                "word": "dolly",
                "start": 765.8215,
                "end": 766.0613,
                "confidence": 0.9975586
              },
              {
                "word": "zoom",
                "start": 766.14124,
                "end": 766.38104,
                "confidence": 0.9770508
              },
              {
                "word": "a",
                "start": 766.54095,
                "end": 766.78076,
                "confidence": 0.9770508
              },
              {
                "word": "pan",
                "start": 766.78076,
                "end": 767.02057,
                "confidence": 0.9423828
              },
              {
                "word": "a",
                "start": 767.1804,
                "end": 767.4202,
                "confidence": 0.9824219
              },
              {
                "word": "crane",
                "start": 767.4202,
                "end": 767.8199,
                "confidence": 0.94384766
              },
              {
                "word": "shot",
                "start": 767.8199,
                "end": 768.05975,
                "confidence": 0.9863281
              },
              {
                "word": "it",
                "start": 768.53937,
                "end": 768.7792,
                "confidence": 0.99560547
              },
              {
                "word": "even",
                "start": 768.7792,
                "end": 769.019,
                "confidence": 0.99902344
              },
              {
                "word": "has",
                "start": 769.019,
                "end": 769.41864,
                "confidence": 0.99902344
              },
              {
                "word": "object",
                "start": 769.41864,
                "end": 769.7384,
                "confidence": 0.99560547
              },
              {
                "word": "removal",
                "start": 769.7384,
                "end": 769.89825,
                "confidence": 1
              },
              {
                "word": "so",
                "start": 770.05817,
                "end": 770.13806,
                "confidence": 0.9921875
              },
              {
                "word": "you",
                "start": 770.13806,
                "end": 770.218,
                "confidence": 0.92578125
              },
              {
                "word": "can",
                "start": 770.218,
                "end": 770.298,
                "confidence": 0.9975586
              },
              {
                "word": "just",
                "start": 770.298,
                "end": 770.4578,
                "confidence": 0.9794922
              },
              {
                "word": "draw",
                "start": 770.4578,
                "end": 770.6177,
                "confidence": 0.99316406
              },
              {
                "word": "a",
                "start": 770.6177,
                "end": 770.7776,
                "confidence": 0.9873047
              },
              {
                "word": "circle",
                "start": 770.7776,
                "end": 771.0973,
                "confidence": 1
              },
              {
                "word": "around",
                "start": 771.0973,
                "end": 771.2572,
                "confidence": 0.99365234
              },
              {
                "word": "the",
                "start": 771.2572,
                "end": 771.41705,
                "confidence": 0.9140625
              },
              {
                "word": "coffee",
                "start": 771.41705,
                "end": 771.65686,
                "confidence": 1
              },
              {
                "word": "cup",
                "start": 771.65686,
                "end": 772.15686,
                "confidence": 0.9921875
              },
              {
                "word": "in",
                "start": 772.21643,
                "end": 772.3763,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 772.3763,
                "end": 772.5362,
                "confidence": 0.99902344
              },
              {
                "word": "background",
                "start": 772.5362,
                "end": 772.85596,
                "confidence": 0.9980469
              },
              {
                "word": "of",
                "start": 772.85596,
                "end": 772.93585,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 772.93585,
                "end": 773.09576,
                "confidence": 0.98828125
              },
              {
                "word": "shot",
                "start": 773.09576,
                "end": 773.41547,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 773.41547,
                "end": 773.4954,
                "confidence": 0.9980469
              },
              {
                "word": "it's",
                "start": 773.4954,
                "end": 773.6553,
                "confidence": 0.98583984
              },
              {
                "word": "gone",
                "start": 773.6553,
                "end": 773.8152,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 774.1498,
                "end": 774.3892,
                "confidence": 0.9970703
              },
              {
                "word": "all",
                "start": 774.3892,
                "end": 774.5489,
                "confidence": 0.98779297
              },
              {
                "word": "sounds",
                "start": 774.5489,
                "end": 774.70856,
                "confidence": 0.9980469
              },
              {
                "word": "like",
                "start": 774.70856,
                "end": 774.86816,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 774.86816,
                "end": 775.02783,
                "confidence": 0.9926758
              },
              {
                "word": "full",
                "start": 775.02783,
                "end": 775.5068,
                "confidence": 0.99121094
              },
              {
                "word": "production",
                "start": 775.5068,
                "end": 775.7463,
                "confidence": 0.99658203
              },
              {
                "word": "studio",
                "start": 775.7463,
                "end": 776.1454,
                "confidence": 0.9995117
              },
              {
                "word": "in",
                "start": 776.1454,
                "end": 776.2252,
                "confidence": 0.89160156
              },
              {
                "word": "a",
                "start": 776.2252,
                "end": 776.3848,
                "confidence": 0.98583984
              },
              {
                "word": "browser",
                "start": 776.3848,
                "end": 776.70416,
                "confidence": 1
              },
              {
                "word": "which",
                "start": 777.1033,
                "end": 777.3428,
                "confidence": 1
              },
              {
                "word": "brings",
                "start": 777.3428,
                "end": 777.5822,
                "confidence": 0.9995117
              },
              {
                "word": "us",
                "start": 777.5822,
                "end": 777.7419,
                "confidence": 0.9975586
              },
              {
                "word": "to",
                "start": 777.7419,
                "end": 777.90155,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 777.90155,
                "end": 778.2208,
                "confidence": 0.984375
              },
              {
                "word": "reality",
                "start": 778.2208,
                "end": 778.5401,
                "confidence": 0.9995117
              },
              {
                "word": "check",
                "start": 778.5401,
                "end": 778.69977,
                "confidence": 0.8520508
              },
              {
                "word": "access",
                "start": 779.4182,
                "end": 779.5778,
                "confidence": 0.98828125
              },
              {
                "word": "this",
                "start": 780.1366,
                "end": 780.45593,
                "confidence": 0.99658203
              },
              {
                "word": "can't",
                "start": 780.45593,
                "end": 780.6954,
                "confidence": 0.61816406
              },
              {
                "word": "all",
                "start": 780.6954,
                "end": 780.85504,
                "confidence": 0.98583984
              },
              {
                "word": "be",
                "start": 780.85504,
                "end": 781.01465,
                "confidence": 0.99853516
              },
              {
                "word": "free",
                "start": 781.01465,
                "end": 781.1743,
                "confidence": 0.9995117
              },
              {
                "word": "definitely",
                "start": 781.65326,
                "end": 782.05237,
                "confidence": 0.9848633
              },
              {
                "word": "not",
                "start": 782.05237,
                "end": 782.1322,
                "confidence": 0.98876953
              },
              {
                "word": "we",
                "start": 782.45154,
                "end": 782.61115,
                "confidence": 0.9194336
              },
              {
                "word": "are",
                "start": 782.61115,
                "end": 782.7708,
                "confidence": 0.9584961
              },
              {
                "word": "well",
                "start": 782.7708,
                "end": 783.0103,
                "confidence": 0.98779297
              },
              {
                "word": "into",
                "start": 783.0103,
                "end": 783.1699,
                "confidence": 0.9892578
              },
              {
                "word": "the",
                "start": 783.1699,
                "end": 783.64886,
                "confidence": 0.67529297
              },
              {
                "word": "subscription",
                "start": 783.64886,
                "end": 783.88837,
                "confidence": 0.9995117
              },
              {
                "word": "era",
                "start": 783.88837,
                "end": 784.04803,
                "confidence": 0.9550781
              },
              {
                "word": "google",
                "start": 784.527,
                "end": 784.84625,
                "confidence": 0.99902344
              },
              {
                "word": "has",
                "start": 784.84625,
                "end": 785.0059,
                "confidence": 0.9995117
              },
              {
                "word": "a",
                "start": 785.0059,
                "end": 785.1655,
                "confidence": 0.9975586
              },
              {
                "word": "few",
                "start": 785.1655,
                "end": 785.405,
                "confidence": 0.9995117
              },
              {
                "word": "tiers",
                "start": 785.405,
                "end": 785.64453,
                "confidence": 0.97509766
              },
              {
                "word": "now",
                "start": 785.64453,
                "end": 785.80414,
                "confidence": 0.9980469
              },
              {
                "word": "the",
                "start": 785.9638,
                "end": 786.20325,
                "confidence": 0.99609375
              },
              {
                "word": "main",
                "start": 786.20325,
                "end": 786.3629,
                "confidence": 0.99902344
              },
              {
                "word": "one",
                "start": 786.3629,
                "end": 786.6024,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 786.6024,
                "end": 786.68225,
                "confidence": 0.99853516
              },
              {
                "word": "google",
                "start": 786.762,
                "end": 787.0015,
                "confidence": 0.9980469
              },
              {
                "word": "ai",
                "start": 787.08136,
                "end": 787.40063,
                "confidence": 0.9375
              },
              {
                "word": "pro",
                "start": 787.40063,
                "end": 787.5603,
                "confidence": 0.96875
              },
              {
                "word": "okay",
                "start": 787.8945,
                "end": 787.9743,
                "confidence": 0.99560547
              },
              {
                "word": "what",
                "start": 788.1339,
                "end": 788.29346,
                "confidence": 0.99121094
              },
              {
                "word": "does",
                "start": 788.29346,
                "end": 788.3733,
                "confidence": 0.71972656
              },
              {
                "word": "that",
                "start": 788.45306,
                "end": 788.5329,
                "confidence": 0.7138672
              },
              {
                "word": "get",
                "start": 788.5329,
                "end": 788.69244,
                "confidence": 0.9394531
              },
              {
                "word": "yet",
                "start": 788.69244,
                "end": 788.7723,
                "confidence": 0.26367188
              },
              {
                "word": "that's",
                "start": 789.01166,
                "end": 789.09143,
                "confidence": 0.9926758
              },
              {
                "word": "your",
                "start": 789.09143,
                "end": 789.25104,
                "confidence": 0.9951172
              },
              {
                "word": "basic",
                "start": 789.25104,
                "end": 789.57025,
                "confidence": 0.9980469
              },
              {
                "word": "creator",
                "start": 789.57025,
                "end": 789.8894,
                "confidence": 0.80566406
              },
              {
                "word": "package",
                "start": 789.8894,
                "end": 790.2086,
                "confidence": 0.99902344
              },
              {
                "word": "two",
                "start": 790.847,
                "end": 791.08636,
                "confidence": 0.95458984
              },
              {
                "word": "t",
                "start": 791.08636,
                "end": 791.246,
                "confidence": 0.26098633
              },
              {
                "word": "of",
                "start": 791.246,
                "end": 791.48535,
                "confidence": 0.98583984
              },
              {
                "word": "storage",
                "start": 791.48535,
                "end": 791.72473,
                "confidence": 1
              },
              {
                "word": "you",
                "start": 791.88434,
                "end": 792.04395,
                "confidence": 0.99902344
              },
              {
                "word": "get",
                "start": 792.04395,
                "end": 792.36316,
                "confidence": 0.99902344
              },
              {
                "word": "access",
                "start": 792.36316,
                "end": 792.5227,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 792.5227,
                "end": 792.60254,
                "confidence": 0.99609375
              },
              {
                "word": "gemini",
                "start": 792.7621,
                "end": 793.1611,
                "confidence": 0.9980469
              },
              {
                "word": "three",
                "start": 793.1611,
                "end": 793.3207,
                "confidence": 0.9941406
              },
              {
                "word": "pro",
                "start": 793.3207,
                "end": 793.56006,
                "confidence": 0.98095703
              },
              {
                "word": "v",
                "start": 793.95905,
                "end": 794.11865,
                "confidence": 0.9746094
              },
              {
                "word": "o",
                "start": 794.11865,
                "end": 794.35803,
                "confidence": 0.6611328
              },
              {
                "word": "three",
                "start": 794.35803,
                "end": 794.5975,
                "confidence": 0.9980469
              },
              {
                "word": "point",
                "start": 794.5975,
                "end": 794.9166,
                "confidence": 0.9951172
              },
              {
                "word": "one",
                "start": 794.9166,
                "end": 795.156,
                "confidence": 0.9946289
              },
              {
                "word": "fast",
                "start": 795.7146,
                "end": 795.954,
                "confidence": 0.9746094
              },
              {
                "word": "notice",
                "start": 795.954,
                "end": 796.35297,
                "confidence": 0.81152344
              },
              {
                "word": "this",
                "start": 796.35297,
                "end": 796.5126,
                "confidence": 0.34814453
              },
              {
                "word": "the",
                "start": 796.5126,
                "end": 796.75195,
                "confidence": 0.9941406
              },
              {
                "word": "fast",
                "start": 796.75195,
                "end": 797.15094,
                "confidence": 0.98779297
              },
              {
                "word": "version",
                "start": 797.15094,
                "end": 797.2307,
                "confidence": 0.9897461
              },
              {
                "word": "not",
                "start": 797.3903,
                "end": 797.6297,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 797.6297,
                "end": 798.1085,
                "confidence": 0.9975586
              },
              {
                "word": "absolute",
                "start": 798.1085,
                "end": 798.3479,
                "confidence": 0.9946289
              },
              {
                "word": "highest",
                "start": 798.3479,
                "end": 798.6671,
                "confidence": 0.99902344
              },
              {
                "word": "quality",
                "start": 798.6671,
                "end": 799.1671,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 799.38525,
                "end": 799.62463,
                "confidence": 0.93408203
              },
              {
                "word": "nano",
                "start": 799.70447,
                "end": 800.10345,
                "confidence": 0.96777344
              },
              {
                "word": "banana",
                "start": 800.10345,
                "end": 800.34283,
                "confidence": 0.94677734
              },
              {
                "word": "pro",
                "start": 800.34283,
                "end": 800.50244,
                "confidence": 0.8696289
              },
              {
                "word": "and",
                "start": 800.9812,
                "end": 801.1408,
                "confidence": 0.99365234
              },
              {
                "word": "this",
                "start": 801.1408,
                "end": 801.3004,
                "confidence": 0.9995117
              },
              {
                "word": "plan",
                "start": 801.3004,
                "end": 801.61957,
                "confidence": 0.9824219
              },
              {
                "word": "also",
                "start": 801.61957,
                "end": 802.01855,
                "confidence": 1
              },
              {
                "word": "includes",
                "start": 802.01855,
                "end": 802.41754,
                "confidence": 0.99853516
              },
              {
                "word": "joules",
                "start": 802.41754,
                "end": 802.6569,
                "confidence": 0.3684082
              },
              {
                "word": "joules",
                "start": 802.97614,
                "end": 803.2155,
                "confidence": 0.48242188
              },
              {
                "word": "the",
                "start": 803.6291,
                "end": 803.7884,
                "confidence": 0.9921875
              },
              {
                "word": "coding",
                "start": 803.7884,
                "end": 804.18665,
                "confidence": 0.72216797
              },
              {
                "word": "that",
                "start": 804.18665,
                "end": 804.34595,
                "confidence": 0.47436523
              },
              {
                "word": "we",
                "start": 804.34595,
                "end": 804.5849,
                "confidence": 0.9794922
              },
              {
                "word": "mentioned",
                "start": 804.5849,
                "end": 804.66455,
                "confidence": 0.9975586
              },
              {
                "word": "right",
                "start": 805.0628,
                "end": 805.2221,
                "confidence": 0.9902344
              },
              {
                "word": "it's",
                "start": 805.46106,
                "end": 805.62036,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 805.62036,
                "end": 805.8593,
                "confidence": 0.9453125
              },
              {
                "word": "developer",
                "start": 805.8593,
                "end": 806.2575,
                "confidence": 0.9716797
              },
              {
                "word": "sitting",
                "start": 806.2575,
                "end": 806.49646,
                "confidence": 0.9995117
              },
              {
                "word": "next",
                "start": 806.49646,
                "end": 806.65576,
                "confidence": 1
              },
              {
                "word": "to",
                "start": 806.65576,
                "end": 806.7354,
                "confidence": 0.9633789
              },
              {
                "word": "you",
                "start": 806.7354,
                "end": 806.8947,
                "confidence": 0.98876953
              },
              {
                "word": "while",
                "start": 807.6116,
                "end": 807.7709,
                "confidence": 0.9995117
              },
              {
                "word": "you're",
                "start": 807.7709,
                "end": 807.9302,
                "confidence": 0.99316406
              },
              {
                "word": "in",
                "start": 807.9302,
                "end": 808.1691,
                "confidence": 0.9453125
              },
              {
                "word": "stitch",
                "start": 808.1691,
                "end": 808.5674,
                "confidence": 0.93408203
              },
              {
                "word": "designing",
                "start": 808.5674,
                "end": 808.80634,
                "confidence": 0.9921875
              },
              {
                "word": "jewels",
                "start": 809.0452,
                "end": 809.2842,
                "confidence": 0.5917969
              },
              {
                "word": "can",
                "start": 809.2842,
                "end": 809.4435,
                "confidence": 0.9975586
              },
              {
                "word": "be",
                "start": 809.4435,
                "end": 809.52313,
                "confidence": 0.9975586
              },
              {
                "word": "in",
                "start": 809.52313,
                "end": 809.6028,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 809.6028,
                "end": 809.7621,
                "confidence": 0.9980469
              },
              {
                "word": "background",
                "start": 809.7621,
                "end": 810.24,
                "confidence": 0.99902344
              },
              {
                "word": "fixing",
                "start": 810.24,
                "end": 810.5586,
                "confidence": 0.99902344
              },
              {
                "word": "bugs",
                "start": 810.5586,
                "end": 810.79755,
                "confidence": 0.9995117
              },
              {
                "word": "in",
                "start": 810.79755,
                "end": 810.95685,
                "confidence": 0.96533203
              },
              {
                "word": "your",
                "start": 810.95685,
                "end": 811.11615,
                "confidence": 0.9975586
              },
              {
                "word": "code",
                "start": 811.11615,
                "end": 811.43475,
                "confidence": 0.9941406
              },
              {
                "word": "repository",
                "start": 811.43475,
                "end": 811.93475,
                "confidence": 0.9995117
              },
              {
                "word": "or",
                "start": 812.3905,
                "end": 812.62946,
                "confidence": 0.99560547
              },
              {
                "word": "writing",
                "start": 812.62946,
                "end": 813.0277,
                "confidence": 0.99365234
              },
              {
                "word": "test",
                "start": 813.0277,
                "end": 813.26666,
                "confidence": 0.9926758
              },
              {
                "word": "cases",
                "start": 813.26666,
                "end": 813.58527,
                "confidence": 0.99658203
              },
              {
                "word": "it's",
                "start": 813.9039,
                "end": 813.9835,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 813.9835,
                "end": 814.2225,
                "confidence": 0.99853516
              },
              {
                "word": "agent",
                "start": 814.2225,
                "end": 814.3818,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 814.3818,
                "end": 814.62067,
                "confidence": 0.9995117
              },
              {
                "word": "handles",
                "start": 814.62067,
                "end": 814.9393,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 814.9393,
                "end": 815.0986,
                "confidence": 0.99658203
              },
              {
                "word": "grunt",
                "start": 815.0986,
                "end": 815.3375,
                "confidence": 0.7363281
              },
              {
                "word": "works",
                "start": 815.3375,
                "end": 815.4172,
                "confidence": 0.9267578
              },
              {
                "word": "and",
                "start": 815.6561,
                "end": 815.8154,
                "confidence": 0.99365234
              },
              {
                "word": "then",
                "start": 815.8154,
                "end": 815.97473,
                "confidence": 0.99609375
              },
              {
                "word": "for",
                "start": 815.97473,
                "end": 816.13403,
                "confidence": 0.99658203
              },
              {
                "word": "the",
                "start": 816.13403,
                "end": 816.29333,
                "confidence": 0.99658203
              },
              {
                "word": "real",
                "start": 816.29333,
                "end": 816.5323,
                "confidence": 0.9975586
              },
              {
                "word": "power",
                "start": 816.5323,
                "end": 816.77124,
                "confidence": 0.87939453
              },
              {
                "word": "use",
                "start": 816.77124,
                "end": 816.93054,
                "confidence": 0.3881836
              },
              {
                "word": "that's",
                "start": 817.58466,
                "end": 817.7445,
                "confidence": 0.9946289
              },
              {
                "word": "google",
                "start": 817.9044,
                "end": 818.2242,
                "confidence": 0.98583984
              },
              {
                "word": "ai",
                "start": 818.30414,
                "end": 818.6239,
                "confidence": 0.87109375
              },
              {
                "word": "ultra",
                "start": 818.70386,
                "end": 819.0237,
                "confidence": 0.9868164
              },
              {
                "word": "this",
                "start": 819.18353,
                "end": 819.34344,
                "confidence": 0.9921875
              },
              {
                "word": "is",
                "start": 819.34344,
                "end": 819.5033,
                "confidence": 0.9873047
              },
              {
                "word": "the",
                "start": 819.5033,
                "end": 819.6632,
                "confidence": 0.98535156
              },
              {
                "word": "heavy",
                "start": 819.6632,
                "end": 819.9031,
                "confidence": 0.9980469
              },
              {
                "word": "duty",
                "start": 819.9031,
                "end": 820.22284,
                "confidence": 0.9975586
              },
              {
                "word": "plan",
                "start": 820.22284,
                "end": 820.38275,
                "confidence": 0.99853516
              },
              {
                "word": "thirty",
                "start": 820.86237,
                "end": 821.0223,
                "confidence": 0.9902344
              },
              {
                "word": "tb",
                "start": 821.1822,
                "end": 821.5819,
                "confidence": 0.8232422
              },
              {
                "word": "storage",
                "start": 821.5819,
                "end": 821.74176,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 821.9816,
                "end": 822.0616,
                "confidence": 0.99121094
              },
              {
                "word": "get",
                "start": 822.0616,
                "end": 822.22144,
                "confidence": 0.98291016
              },
              {
                "word": "the",
                "start": 822.22144,
                "end": 822.38135,
                "confidence": 0.96777344
              },
              {
                "word": "deep",
                "start": 822.38135,
                "end": 822.62115,
                "confidence": 0.9941406
              },
              {
                "word": "think",
                "start": 822.62115,
                "end": 822.861,
                "confidence": 0.75390625
              },
              {
                "word": "reasoning",
                "start": 822.861,
                "end": 823.3407,
                "confidence": 0.9980469
              },
              {
                "word": "models",
                "start": 823.3407,
                "end": 823.5805,
                "confidence": 0.99121094
              },
              {
                "word": "the",
                "start": 824.0602,
                "end": 824.30005,
                "confidence": 0.9916992
              },
              {
                "word": "highest",
                "start": 824.30005,
                "end": 824.6198,
                "confidence": 0.9995117
              },
              {
                "word": "limits",
                "start": 824.6198,
                "end": 824.8596,
                "confidence": 0.98095703
              },
              {
                "word": "on",
                "start": 824.8596,
                "end": 825.01953,
                "confidence": 0.9868164
              },
              {
                "word": "v",
                "start": 825.0995,
                "end": 825.41925,
                "confidence": 0.8774414
              },
              {
                "word": "and",
                "start": 825.8989,
                "end": 826.05884,
                "confidence": 0.9916992
              },
              {
                "word": "you",
                "start": 826.05884,
                "end": 826.2187,
                "confidence": 0.97998047
              },
              {
                "word": "get",
                "start": 826.2187,
                "end": 826.5385,
                "confidence": 0.9970703
              },
              {
                "word": "access",
                "start": 826.5385,
                "end": 826.69836,
                "confidence": 0.9970703
              },
              {
                "word": "to",
                "start": 826.69836,
                "end": 826.8583,
                "confidence": 0.9916992
              },
              {
                "word": "project",
                "start": 826.8583,
                "end": 827.258,
                "confidence": 0.99658203
              },
              {
                "word": "mariner",
                "start": 827.258,
                "end": 827.4978,
                "confidence": 0.9946289
              },
              {
                "word": "mariner",
                "start": 827.8976,
                "end": 828.3976,
                "confidence": 0.99365234
              },
              {
                "word": "it's",
                "start": 828.697,
                "end": 828.8569,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 828.8569,
                "end": 829.09674,
                "confidence": 0.99853516
              },
              {
                "word": "agent",
                "start": 829.09674,
                "end": 829.2566,
                "confidence": 0.99902344
              },
              {
                "word": "that",
                "start": 829.2566,
                "end": 829.5764,
                "confidence": 0.99902344
              },
              {
                "word": "actually",
                "start": 829.5764,
                "end": 829.8162,
                "confidence": 0.9995117
              },
              {
                "word": "leaves",
                "start": 829.8162,
                "end": 830.0561,
                "confidence": 0.9897461
              },
              {
                "word": "the",
                "start": 830.0561,
                "end": 830.2959,
                "confidence": 0.9975586
              },
              {
                "word": "chat",
                "start": 830.2959,
                "end": 830.4558,
                "confidence": 0.9946289
              },
              {
                "word": "box",
                "start": 830.4558,
                "end": 830.8555,
                "confidence": 0.8881836
              },
              {
                "word": "and",
                "start": 830.8555,
                "end": 831.01544,
                "confidence": 0.99316406
              },
              {
                "word": "uses",
                "start": 831.01544,
                "end": 831.3352,
                "confidence": 0.99316406
              },
              {
                "word": "your",
                "start": 831.3352,
                "end": 831.63,
                "confidence": 0.9716797
              },
              {
                "word": "browser",
                "start": 831.75,
                "end": 831.83,
                "confidence": 0.94433594
              },
              {
                "word": "yeah",
                "start": 831.99,
                "end": 832.15,
                "confidence": 0.79003906
              },
              {
                "word": "it",
                "start": 832.31,
                "end": 832.47003,
                "confidence": 0.9555664
              },
              {
                "word": "can",
                "start": 832.47003,
                "end": 832.55,
                "confidence": 0.99853516
              },
              {
                "word": "go",
                "start": 832.55,
                "end": 832.71,
                "confidence": 0.99853516
              },
              {
                "word": "out",
                "start": 832.71,
                "end": 832.79,
                "confidence": 0.9970703
              },
              {
                "word": "and",
                "start": 832.79,
                "end": 832.95,
                "confidence": 0.9814453
              },
              {
                "word": "book",
                "start": 832.95,
                "end": 833.19,
                "confidence": 0.99609375
              },
              {
                "word": "flights",
                "start": 833.19,
                "end": 833.51,
                "confidence": 0.9824219
              },
              {
                "word": "for",
                "start": 833.51,
                "end": 833.67,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 833.67,
                "end": 833.83,
                "confidence": 0.9975586
              },
              {
                "word": "navigate",
                "start": 834.07,
                "end": 834.57,
                "confidence": 1
              },
              {
                "word": "complex",
                "start": 834.63,
                "end": 835.13,
                "confidence": 0.9995117
              },
              {
                "word": "websites",
                "start": 835.35,
                "end": 835.59,
                "confidence": 0.99658203
              },
              {
                "word": "to",
                "start": 835.59,
                "end": 835.75,
                "confidence": 0.9970703
              },
              {
                "word": "do",
                "start": 835.75,
                "end": 836.07,
                "confidence": 0.99853516
              },
              {
                "word": "research",
                "start": 836.07,
                "end": 836.23,
                "confidence": 0.99902344
              },
              {
                "word": "sure",
                "start": 836.47003,
                "end": 836.55,
                "confidence": 0.93847656
              },
              {
                "word": "it's",
                "start": 836.87,
                "end": 836.95,
                "confidence": 0.99902344
              },
              {
                "word": "an",
                "start": 836.95,
                "end": 837.27,
                "confidence": 0.99902344
              },
              {
                "word": "agent",
                "start": 837.27,
                "end": 837.43,
                "confidence": 0.9980469
              },
              {
                "word": "that",
                "start": 837.43,
                "end": 837.67,
                "confidence": 0.9995117
              },
              {
                "word": "does",
                "start": 837.67,
                "end": 837.83,
                "confidence": 0.9970703
              },
              {
                "word": "things",
                "start": 837.83,
                "end": 838.07,
                "confidence": 1
              },
              {
                "word": "in",
                "start": 838.07,
                "end": 838.23,
                "confidence": 0.9946289
              },
              {
                "word": "the",
                "start": 838.23,
                "end": 838.39,
                "confidence": 0.9970703
              },
              {
                "word": "real",
                "start": 838.39,
                "end": 838.71,
                "confidence": 0.9995117
              },
              {
                "word": "world",
                "start": 838.71,
                "end": 838.95,
                "confidence": 1
              },
              {
                "word": "so",
                "start": 839.27,
                "end": 839.59,
                "confidence": 0.99902344
              },
              {
                "word": "when",
                "start": 839.59,
                "end": 839.75,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 839.75,
                "end": 839.99,
                "confidence": 0.9995117
              },
              {
                "word": "zoom",
                "start": 839.99,
                "end": 840.15,
                "confidence": 0.9995117
              },
              {
                "word": "out",
                "start": 840.15,
                "end": 840.39,
                "confidence": 1
              },
              {
                "word": "and",
                "start": 840.39,
                "end": 840.55,
                "confidence": 0.99853516
              },
              {
                "word": "look",
                "start": 840.55,
                "end": 840.71,
                "confidence": 0.9980469
              },
              {
                "word": "at",
                "start": 840.71,
                "end": 840.79,
                "confidence": 0.9970703
              },
              {
                "word": "all",
                "start": 840.79,
                "end": 840.95,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 840.95,
                "end": 841.03,
                "confidence": 0.5234375
              },
              {
                "word": "this",
                "start": 841.03,
                "end": 841.19,
                "confidence": 0.92871094
              },
              {
                "word": "stitch",
                "start": 841.51,
                "end": 841.75,
                "confidence": 0.9926758
              },
              {
                "word": "pamela",
                "start": 842.07,
                "end": 842.57,
                "confidence": 0.19970703
              },
              {
                "word": "v",
                "start": 842.87,
                "end": 843.27,
                "confidence": 0.9614258
              },
              {
                "word": "jewels",
                "start": 843.59,
                "end": 843.91003,
                "confidence": 0.3466797
              },
              {
                "word": "mariner",
                "start": 844.6435,
                "end": 845.0413,
                "confidence": 0.9951172
              },
              {
                "word": "it",
                "start": 845.9961,
                "end": 846.31433,
                "confidence": 0.9970703
              },
              {
                "word": "feels",
                "start": 846.31433,
                "end": 846.71216,
                "confidence": 0.99853516
              },
              {
                "word": "like",
                "start": 846.71216,
                "end": 847.0304,
                "confidence": 0.99658203
              },
              {
                "word": "google",
                "start": 847.1896,
                "end": 847.5078,
                "confidence": 0.9995117
              },
              {
                "word": "is",
                "start": 847.5078,
                "end": 847.7465,
                "confidence": 0.9980469
              },
              {
                "word": "trying",
                "start": 847.7465,
                "end": 847.9852,
                "confidence": 0.98828125
              },
              {
                "word": "to",
                "start": 847.9852,
                "end": 848.2239,
                "confidence": 0.9951172
              },
              {
                "word": "own",
                "start": 848.2239,
                "end": 848.6217,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 848.6217,
                "end": 848.94,
                "confidence": 0.99853516
              },
              {
                "word": "entire",
                "start": 848.94,
                "end": 849.3378,
                "confidence": 0.9980469
              },
              {
                "word": "creative",
                "start": 849.3378,
                "end": 849.8152,
                "confidence": 0.99902344
              },
              {
                "word": "pipeline",
                "start": 849.8152,
                "end": 850.2926,
                "confidence": 0.9995117
              },
              {
                "word": "from",
                "start": 850.2926,
                "end": 850.61084,
                "confidence": 0.9970703
              },
              {
                "word": "idea",
                "start": 850.61084,
                "end": 850.77,
                "confidence": 0.99316406
              },
              {
                "word": "to",
                "start": 850.77,
                "end": 851.2474,
                "confidence": 0.93603516
              },
              {
                "word": "execution",
                "start": 851.2474,
                "end": 851.32697,
                "confidence": 0.9951172
              },
              {
                "word": "they",
                "start": 851.5656,
                "end": 851.8043,
                "confidence": 0.9638672
              },
              {
                "word": "absolutely",
                "start": 851.8043,
                "end": 852.1226,
                "confidence": 0.98779297
              },
              {
                "word": "are",
                "start": 852.1226,
                "end": 852.20215,
                "confidence": 0.9604492
              },
              {
                "word": "the",
                "start": 852.36127,
                "end": 852.52045,
                "confidence": 0.9951172
              },
              {
                "word": "whole",
                "start": 852.52045,
                "end": 852.9183,
                "confidence": 0.99902344
              },
              {
                "word": "story",
                "start": 852.9183,
                "end": 853.2365,
                "confidence": 1
              },
              {
                "word": "here",
                "start": 853.2365,
                "end": 853.4752,
                "confidence": 0.99853516
              },
              {
                "word": "is",
                "start": 853.4752,
                "end": 853.63434,
                "confidence": 0.99902344
              },
              {
                "word": "about",
                "start": 853.63434,
                "end": 853.87305,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 853.87305,
                "end": 854.11176,
                "confidence": 0.99853516
              },
              {
                "word": "collapse",
                "start": 854.11176,
                "end": 854.3504,
                "confidence": 1
              },
              {
                "word": "of",
                "start": 854.3504,
                "end": 854.5096,
                "confidence": 0.99560547
              },
              {
                "word": "the",
                "start": 854.5096,
                "end": 854.8278,
                "confidence": 0.99609375
              },
              {
                "word": "production",
                "start": 854.8278,
                "end": 855.14606,
                "confidence": 1
              },
              {
                "word": "barrier",
                "start": 855.14606,
                "end": 855.22565,
                "confidence": 0.9355469
              },
              {
                "word": "right",
                "start": 855.5439,
                "end": 855.6235,
                "confidence": 0.9926758
              },
              {
                "word": "it",
                "start": 855.7826,
                "end": 855.9417,
                "confidence": 0.96875
              },
              {
                "word": "used",
                "start": 855.9417,
                "end": 856.1008,
                "confidence": 0.9975586
              },
              {
                "word": "to",
                "start": 856.1008,
                "end": 856.1804,
                "confidence": 0.99365234
              },
              {
                "word": "be",
                "start": 856.1804,
                "end": 856.33954,
                "confidence": 0.99560547
              },
              {
                "word": "that",
                "start": 856.33954,
                "end": 856.4191,
                "confidence": 0.99609375
              },
              {
                "word": "if",
                "start": 856.4191,
                "end": 856.57825,
                "confidence": 0.9765625
              },
              {
                "word": "you",
                "start": 856.57825,
                "end": 856.65784,
                "confidence": 0.97216797
              },
              {
                "word": "wanted",
                "start": 856.65784,
                "end": 856.8965,
                "confidence": 0.9902344
              },
              {
                "word": "to",
                "start": 856.8965,
                "end": 857.19,
                "confidence": 0.921875
              },
              {
                "word": "professional",
                "start": 857.30945,
                "end": 857.62805,
                "confidence": 0.57666016
              },
              {
                "word": "looking",
                "start": 857.62805,
                "end": 857.94666,
                "confidence": 0.9848633
              },
              {
                "word": "app",
                "start": 857.94666,
                "end": 858.26526,
                "confidence": 0.99658203
              },
              {
                "word": "or",
                "start": 858.26526,
                "end": 858.3449,
                "confidence": 0.9951172
              },
              {
                "word": "a",
                "start": 858.3449,
                "end": 858.58386,
                "confidence": 0.7993164
              },
              {
                "word": "sleek",
                "start": 858.58386,
                "end": 858.8228,
                "confidence": 0.94628906
              },
              {
                "word": "brand",
                "start": 858.8228,
                "end": 859.22107,
                "confidence": 0.9790039
              },
              {
                "word": "or",
                "start": 859.22107,
                "end": 859.3007,
                "confidence": 0.9951172
              },
              {
                "word": "a",
                "start": 859.3007,
                "end": 859.7786,
                "confidence": 0.9682617
              },
              {
                "word": "cinematic",
                "start": 859.7786,
                "end": 860.0176,
                "confidence": 0.9995117
              },
              {
                "word": "video",
                "start": 860.0176,
                "end": 860.3362,
                "confidence": 0.9980469
              },
              {
                "word": "you",
                "start": 860.57513,
                "end": 860.8141,
                "confidence": 0.9975586
              },
              {
                "word": "needed",
                "start": 860.8141,
                "end": 861.05304,
                "confidence": 0.99365234
              },
              {
                "word": "a",
                "start": 861.05304,
                "end": 861.21234,
                "confidence": 0.9848633
              },
              {
                "word": "team",
                "start": 861.21234,
                "end": 861.37164,
                "confidence": 0.9946289
              },
              {
                "word": "you",
                "start": 861.53094,
                "end": 861.69025,
                "confidence": 0.9975586
              },
              {
                "word": "needed",
                "start": 861.69025,
                "end": 861.9292,
                "confidence": 0.99121094
              },
              {
                "word": "a",
                "start": 861.9292,
                "end": 862.0885,
                "confidence": 0.9902344
              },
              {
                "word": "lot",
                "start": 862.0885,
                "end": 862.32745,
                "confidence": 0.9980469
              },
              {
                "word": "of",
                "start": 862.32745,
                "end": 862.64606,
                "confidence": 0.99658203
              },
              {
                "word": "capital",
                "start": 862.64606,
                "end": 862.9646,
                "confidence": 0.99902344
              },
              {
                "word": "now",
                "start": 863.36285,
                "end": 863.6018,
                "confidence": 0.99658203
              },
              {
                "word": "you",
                "start": 864.239,
                "end": 864.47797,
                "confidence": 0.9975586
              },
              {
                "word": "need",
                "start": 864.47797,
                "end": 864.5576,
                "confidence": 0.89697266
              },
              {
                "word": "a",
                "start": 864.5576,
                "end": 865.0576,
                "confidence": 0.99365234
              },
              {
                "word": "subscription",
                "start": 865.1152,
                "end": 865.5134,
                "confidence": 0.99853516
              },
              {
                "word": "and",
                "start": 865.5134,
                "end": 865.5931,
                "confidence": 0.9794922
              },
              {
                "word": "an",
                "start": 865.5931,
                "end": 865.99133,
                "confidence": 0.99609375
              },
              {
                "word": "idea",
                "start": 865.99133,
                "end": 866.15063,
                "confidence": 0.99365234
              },
              {
                "word": "these",
                "start": 867.10645,
                "end": 867.42505,
                "confidence": 0.99902344
              },
              {
                "word": "tools",
                "start": 867.42505,
                "end": 867.8233,
                "confidence": 0.99853516
              },
              {
                "word": "have",
                "start": 867.8233,
                "end": 868.1419,
                "confidence": 0.99658203
              },
              {
                "word": "democrat",
                "start": 868.1419,
                "end": 868.6419,
                "confidence": 1
              },
              {
                "word": "looking",
                "start": 868.6994,
                "end": 869.018,
                "confidence": 0.99560547
              },
              {
                "word": "good",
                "start": 869.018,
                "end": 869.1773,
                "confidence": 0.9975586
              },
              {
                "word": "anyone",
                "start": 869.8145,
                "end": 869.9738,
                "confidence": 0.9921875
              },
              {
                "word": "can",
                "start": 869.9738,
                "end": 870.1331,
                "confidence": 0.99121094
              },
              {
                "word": "have",
                "start": 870.1331,
                "end": 870.2924,
                "confidence": 0.9975586
              },
              {
                "word": "the",
                "start": 870.2924,
                "end": 870.4517,
                "confidence": 0.99560547
              },
              {
                "word": "gloss",
                "start": 870.4517,
                "end": 870.6907,
                "confidence": 0.921875
              },
              {
                "word": "of",
                "start": 870.6907,
                "end": 870.85,
                "confidence": 0.99560547
              },
              {
                "word": "a",
                "start": 870.85,
                "end": 870.9296,
                "confidence": 0.99365234
              },
              {
                "word": "fortune",
                "start": 871.0093,
                "end": 871.3279,
                "confidence": 1
              },
              {
                "word": "five",
                "start": 871.3279,
                "end": 871.4872,
                "confidence": 0.9975586
              },
              {
                "word": "hundred",
                "start": 871.4872,
                "end": 871.8058,
                "confidence": 0.9946289
              },
              {
                "word": "company",
                "start": 871.8058,
                "end": 872.04474,
                "confidence": 0.99658203
              },
              {
                "word": "for",
                "start": 872.04474,
                "end": 872.20404,
                "confidence": 0.9970703
              },
              {
                "word": "a",
                "start": 872.20404,
                "end": 872.36334,
                "confidence": 0.99560547
              },
              {
                "word": "monthly",
                "start": 872.36334,
                "end": 872.68195,
                "confidence": 0.9980469
              },
              {
                "word": "fee",
                "start": 872.68195,
                "end": 872.84125,
                "confidence": 0.9995117
              },
              {
                "word": "which",
                "start": 873.4148,
                "end": 873.73456,
                "confidence": 1
              },
              {
                "word": "leads",
                "start": 873.73456,
                "end": 873.9744,
                "confidence": 0.9951172
              },
              {
                "word": "me",
                "start": 873.9744,
                "end": 874.21423,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 874.21423,
                "end": 874.2942,
                "confidence": 0.9980469
              },
              {
                "word": "a",
                "start": 874.2942,
                "end": 874.534,
                "confidence": 0.99658203
              },
              {
                "word": "final",
                "start": 874.534,
                "end": 875.034,
                "confidence": 0.99560547
              },
              {
                "word": "maybe",
                "start": 875.09357,
                "end": 875.4933,
                "confidence": 0.9448242
              },
              {
                "word": "provocative",
                "start": 875.4933,
                "end": 875.97296,
                "confidence": 1
              },
              {
                "word": "thought",
                "start": 875.97296,
                "end": 876.1328,
                "confidence": 0.9995117
              },
              {
                "word": "if",
                "start": 876.7724,
                "end": 876.93225,
                "confidence": 0.9995117
              },
              {
                "word": "the",
                "start": 876.93225,
                "end": 877.43225,
                "confidence": 0.99853516
              },
              {
                "word": "execution",
                "start": 877.65173,
                "end": 877.89154,
                "confidence": 1
              },
              {
                "word": "part",
                "start": 877.89154,
                "end": 878.05145,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 878.05145,
                "end": 878.29126,
                "confidence": 0.9736328
              },
              {
                "word": "making",
                "start": 878.29126,
                "end": 878.79126,
                "confidence": 0.9980469
              },
              {
                "word": "becomes",
                "start": 878.93085,
                "end": 879.17065,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 879.17065,
                "end": 879.5704,
                "confidence": 0.9902344
              },
              {
                "word": "easy",
                "start": 879.5704,
                "end": 879.9701,
                "confidence": 0.99902344
              },
              {
                "word": "and",
                "start": 879.9701,
                "end": 880.4497,
                "confidence": 0.9995117
              },
              {
                "word": "automated",
                "start": 880.4497,
                "end": 880.9497,
                "confidence": 1
              },
              {
                "word": "what's",
                "start": 881.3291,
                "end": 881.8291,
                "confidence": 0.9995117
              },
              {
                "word": "actually",
                "start": 881.8887,
                "end": 882.20844,
                "confidence": 0.99902344
              },
              {
                "word": "valuable",
                "start": 882.20844,
                "end": 882.70844,
                "confidence": 0.9995117
              },
              {
                "word": "anymore",
                "start": 882.9279,
                "end": 883.0079,
                "confidence": 0.9951172
              },
              {
                "word": "that's",
                "start": 883.32764,
                "end": 883.48755,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 883.48755,
                "end": 883.6474,
                "confidence": 0.9980469
              },
              {
                "word": "question",
                "start": 883.6474,
                "end": 883.96716,
                "confidence": 0.9995117
              },
              {
                "word": "for",
                "start": 883.96716,
                "end": 884.0471,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 884.0471,
                "end": 884.20703,
                "confidence": 0.99121094
              },
              {
                "word": "rest",
                "start": 884.20703,
                "end": 884.2869,
                "confidence": 0.99902344
              },
              {
                "word": "of",
                "start": 884.2869,
                "end": 884.44684,
                "confidence": 0.9951172
              },
              {
                "word": "this",
                "start": 884.44684,
                "end": 884.6067,
                "confidence": 0.9970703
              },
              {
                "word": "decade",
                "start": 884.6067,
                "end": 884.9265,
                "confidence": 0.9975586
              },
              {
                "word": "isn't",
                "start": 884.9265,
                "end": 885.08636,
                "confidence": 0.9970703
              },
              {
                "word": "it",
                "start": 885.08636,
                "end": 885.2463,
                "confidence": 0.8959961
              },
              {
                "word": "if",
                "start": 885.4861,
                "end": 885.64594,
                "confidence": 0.99609375
              },
              {
                "word": "amy",
                "start": 885.7259,
                "end": 886.04565,
                "confidence": 0.32958984
              },
              {
                "word": "can",
                "start": 886.04565,
                "end": 886.1256,
                "confidence": 0.99316406
              },
              {
                "word": "use",
                "start": 886.1256,
                "end": 886.2855,
                "confidence": 0.9975586
              },
              {
                "word": "pom",
                "start": 886.4454,
                "end": 886.9454,
                "confidence": 0.21643066
              },
              {
                "word": "to",
                "start": 887.09973,
                "end": 887.3392,
                "confidence": 1
              },
              {
                "word": "generate",
                "start": 887.3392,
                "end": 887.6585,
                "confidence": 1
              },
              {
                "word": "a",
                "start": 887.6585,
                "end": 887.89795,
                "confidence": 0.99902344
              },
              {
                "word": "perfect",
                "start": 887.89795,
                "end": 888.29706,
                "confidence": 0.9995117
              },
              {
                "word": "brand",
                "start": 888.29706,
                "end": 888.6962,
                "confidence": 0.9995117
              },
              {
                "word": "identity",
                "start": 888.6962,
                "end": 889.1962,
                "confidence": 0.9995117
              },
              {
                "word": "then",
                "start": 889.4146,
                "end": 889.8138,
                "confidence": 0.88916016
              },
              {
                "word": "perfect",
                "start": 889.8138,
                "end": 890.13306,
                "confidence": 0.98779297
              },
              {
                "word": "just",
                "start": 890.13306,
                "end": 890.53217,
                "confidence": 0.99902344
              },
              {
                "word": "becomes",
                "start": 890.53217,
                "end": 890.9313,
                "confidence": 0.9995117
              },
              {
                "word": "average",
                "start": 890.9313,
                "end": 891.33044,
                "confidence": 0.99316406
              },
              {
                "word": "professional",
                "start": 892.2085,
                "end": 892.7085,
                "confidence": 0.99902344
              },
              {
                "word": "becomes",
                "start": 892.9269,
                "end": 893.1664,
                "confidence": 1
              },
              {
                "word": "the",
                "start": 893.1664,
                "end": 893.32605,
                "confidence": 0.99853516
              },
              {
                "word": "new",
                "start": 893.32605,
                "end": 893.48566,
                "confidence": 0.99902344
              },
              {
                "word": "baseline",
                "start": 893.48566,
                "end": 893.9646,
                "confidence": 0.9951172
              },
              {
                "word": "so",
                "start": 894.28394,
                "end": 894.4436,
                "confidence": 0.9970703
              },
              {
                "word": "the",
                "start": 894.4436,
                "end": 894.6032,
                "confidence": 0.9995117
              },
              {
                "word": "value",
                "start": 894.6032,
                "end": 895.08215,
                "confidence": 0.99853516
              },
              {
                "word": "has",
                "start": 895.08215,
                "end": 895.2418,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 895.2418,
                "end": 895.4015,
                "confidence": 0.99902344
              },
              {
                "word": "shift",
                "start": 895.4015,
                "end": 895.8006,
                "confidence": 0.9995117
              },
              {
                "word": "somewhere",
                "start": 895.8006,
                "end": 896.1199,
                "confidence": 0.9980469
              },
              {
                "word": "else",
                "start": 896.1199,
                "end": 896.6199,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 896.8383,
                "end": 897.2374,
                "confidence": 0.98339844
              },
              {
                "word": "what",
                "start": 897.2374,
                "end": 897.7374,
                "confidence": 0.97802734
              },
              {
                "word": "the",
                "start": 897.7962,
                "end": 897.9559,
                "confidence": 0.64697266
              },
              {
                "word": "human",
                "start": 897.9559,
                "end": 898.27515,
                "confidence": 0.99609375
              },
              {
                "word": "touch",
                "start": 898.27515,
                "end": 898.4348,
                "confidence": 0.9863281
              },
              {
                "word": "the",
                "start": 898.9936,
                "end": 899.23303,
                "confidence": 0.9975586
              },
              {
                "word": "value",
                "start": 899.23303,
                "end": 899.6322,
                "confidence": 0.97558594
              },
              {
                "word": "shifts",
                "start": 899.6322,
                "end": 899.87164,
                "confidence": 0.93847656
              },
              {
                "word": "to",
                "start": 899.87164,
                "end": 900.0313,
                "confidence": 0.9970703
              },
              {
                "word": "taste",
                "start": 900.0313,
                "end": 900.27075,
                "confidence": 0.9794922
              },
              {
                "word": "to",
                "start": 900.84485,
                "end": 901.3245,
                "confidence": 0.9716797
              },
              {
                "word": "curation",
                "start": 901.3245,
                "end": 901.48444,
                "confidence": 1
              },
              {
                "word": "it",
                "start": 901.8841,
                "end": 902.12396,
                "confidence": 0.91748047
              },
              {
                "word": "shifts",
                "start": 902.12396,
                "end": 902.3638,
                "confidence": 0.99560547
              },
              {
                "word": "to",
                "start": 902.3638,
                "end": 902.5237,
                "confidence": 0.9921875
              },
              {
                "word": "having",
                "start": 902.5237,
                "end": 902.68353,
                "confidence": 0.99902344
              },
              {
                "word": "a",
                "start": 902.68353,
                "end": 902.9234,
                "confidence": 0.9926758
              },
              {
                "word": "weird",
                "start": 902.9234,
                "end": 903.4234,
                "confidence": 0.99658203
              },
              {
                "word": "specific",
                "start": 903.5629,
                "end": 904.0629,
                "confidence": 0.9995117
              },
              {
                "word": "human",
                "start": 904.1225,
                "end": 904.5222,
                "confidence": 0.9946289
              },
              {
                "word": "point",
                "start": 904.5222,
                "end": 904.6821,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 904.6821,
                "end": 904.842,
                "confidence": 0.99853516
              },
              {
                "word": "view",
                "start": 904.842,
                "end": 905.0818,
                "confidence": 1
              },
              {
                "word": "that",
                "start": 905.0818,
                "end": 905.16174,
                "confidence": 0.9790039
              },
              {
                "word": "an",
                "start": 905.16174,
                "end": 905.32166,
                "confidence": 0.98535156
              },
              {
                "word": "ai",
                "start": 905.40155,
                "end": 905.8013,
                "confidence": 0.9970703
              },
              {
                "word": "can't",
                "start": 905.8013,
                "end": 906.04114,
                "confidence": 0.9736328
              },
              {
                "word": "generate",
                "start": 906.04114,
                "end": 906.3609,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 906.9205,
                "end": 907.0804,
                "confidence": 0.99902344
              },
              {
                "word": "tools",
                "start": 907.0804,
                "end": 907.40015,
                "confidence": 0.99902344
              },
              {
                "word": "can",
                "start": 907.40015,
                "end": 907.56,
                "confidence": 0.99609375
              },
              {
                "word": "build",
                "start": 907.56,
                "end": 907.7199,
                "confidence": 0.99902344
              },
              {
                "word": "the",
                "start": 907.7199,
                "end": 907.87976,
                "confidence": 0.62109375
              },
              {
                "word": "house",
                "start": 907.87976,
                "end": 908.0397,
                "confidence": 0.9995117
              },
              {
                "word": "but",
                "start": 908.1996,
                "end": 908.35944,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 908.35944,
                "end": 908.4394,
                "confidence": 0.9916992
              },
              {
                "word": "still",
                "start": 908.4394,
                "end": 908.6792,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 908.6792,
                "end": 908.75916,
                "confidence": 0.9975586
              },
              {
                "word": "to",
                "start": 908.75916,
                "end": 908.91907,
                "confidence": 0.9970703
              },
              {
                "word": "tell",
                "start": 908.91907,
                "end": 908.99896,
                "confidence": 0.9995117
              },
              {
                "word": "them",
                "start": 908.99896,
                "end": 909.0789,
                "confidence": 0.9501953
              },
              {
                "word": "where",
                "start": 909.0789,
                "end": 909.23883,
                "confidence": 0.7011719
              },
              {
                "word": "to",
                "start": 909.23883,
                "end": 909.3987,
                "confidence": 0.9995117
              },
              {
                "word": "put",
                "start": 909.3987,
                "end": 909.47864,
                "confidence": 0.9941406
              },
              {
                "word": "the",
                "start": 909.47864,
                "end": 909.6385,
                "confidence": 0.99560547
              },
              {
                "word": "windows",
                "start": 909.6385,
                "end": 909.87836,
                "confidence": 0.97558594
              },
              {
                "word": "to",
                "start": 909.87836,
                "end": 910.0382,
                "confidence": 0.97265625
              },
              {
                "word": "catch",
                "start": 910.0382,
                "end": 910.1981,
                "confidence": 0.9902344
              },
              {
                "word": "the",
                "start": 910.1981,
                "end": 910.358,
                "confidence": 0.9970703
              },
              {
                "word": "best",
                "start": 910.358,
                "end": 910.59784,
                "confidence": 0.9980469
              },
              {
                "word": "morning",
                "start": 910.59784,
                "end": 910.9176,
                "confidence": 0.9267578
              },
              {
                "word": "light",
                "start": 910.9176,
                "end": 911.1574,
                "confidence": 0.99560547
              },
              {
                "word": "that's",
                "start": 911.79694,
                "end": 912.0368,
                "confidence": 0.9897461
              },
              {
                "word": "still",
                "start": 912.0368,
                "end": 912.2766,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 912.2766,
                "end": 912.35657,
                "confidence": 0.9921875
              },
              {
                "word": "it's",
                "start": 912.67633,
                "end": 912.8362,
                "confidence": 0.99609375
              },
              {
                "word": "like",
                "start": 912.8362,
                "end": 912.9961,
                "confidence": 0.9975586
              },
              {
                "word": "when",
                "start": 912.9961,
                "end": 913.07605,
                "confidence": 0.99902344
              },
              {
                "word": "spell",
                "start": 913.2359,
                "end": 913.3958,
                "confidence": 0.85253906
              },
              {
                "word": "check",
                "start": 913.3958,
                "end": 913.79553,
                "confidence": 0.14978027
              },
              {
                "word": "became",
                "start": 913.79553,
                "end": 914.03534,
                "confidence": 0.99365234
              },
              {
                "word": "standard",
                "start": 914.03534,
                "end": 914.3551,
                "confidence": 0.99072266
              },
              {
                "word": "it",
                "start": 914.6097,
                "end": 914.7693,
                "confidence": 0.9941406
              },
              {
                "word": "meant",
                "start": 914.7693,
                "end": 915.00867,
                "confidence": 0.99853516
              },
              {
                "word": "no",
                "start": 915.00867,
                "end": 915.1683,
                "confidence": 0.98779297
              },
              {
                "word": "one",
                "start": 915.1683,
                "end": 915.3279,
                "confidence": 0.9980469
              },
              {
                "word": "had",
                "start": 915.3279,
                "end": 915.4875,
                "confidence": 0.98535156
              },
              {
                "word": "typos",
                "start": 915.4875,
                "end": 915.9875,
                "confidence": 0.99853516
              },
              {
                "word": "anymore",
                "start": 916.0461,
                "end": 916.1259,
                "confidence": 0.9975586
              },
              {
                "word": "but",
                "start": 916.28546,
                "end": 916.3653,
                "confidence": 0.99853516
              },
              {
                "word": "it",
                "start": 916.3653,
                "end": 916.5249,
                "confidence": 0.9951172
              },
              {
                "word": "didn't",
                "start": 916.5249,
                "end": 916.6845,
                "confidence": 0.99853516
              },
              {
                "word": "turn",
                "start": 916.6845,
                "end": 917.0835,
                "confidence": 0.9995117
              },
              {
                "word": "everybody",
                "start": 917.0835,
                "end": 917.4027,
                "confidence": 0.9951172
              },
              {
                "word": "into",
                "start": 917.4027,
                "end": 917.4825,
                "confidence": 0.9970703
              },
              {
                "word": "a",
                "start": 917.4825,
                "end": 917.6421,
                "confidence": 0.9970703
              },
              {
                "word": "great",
                "start": 917.6421,
                "end": 917.8017,
                "confidence": 0.9951172
              },
              {
                "word": "writer",
                "start": 917.8017,
                "end": 918.0411,
                "confidence": 0.73828125
              },
              {
                "word": "exactly",
                "start": 918.5199,
                "end": 918.8391,
                "confidence": 1
              },
              {
                "word": "these",
                "start": 919.5573,
                "end": 919.87646,
                "confidence": 0.99853516
              },
              {
                "word": "tools",
                "start": 919.87646,
                "end": 920.3553,
                "confidence": 0.99853516
              },
              {
                "word": "raise",
                "start": 920.3553,
                "end": 920.59467,
                "confidence": 0.92871094
              },
              {
                "word": "the",
                "start": 920.59467,
                "end": 920.9139,
                "confidence": 0.9975586
              },
              {
                "word": "floor",
                "start": 920.9139,
                "end": 921.0735,
                "confidence": 0.9995117
              },
              {
                "word": "right",
                "start": 921.3927,
                "end": 921.6321,
                "confidence": 0.5600586
              },
              {
                "word": "you",
                "start": 921.7917,
                "end": 921.9513,
                "confidence": 0.99853516
              },
              {
                "word": "can't",
                "start": 921.9513,
                "end": 922.03107,
                "confidence": 0.9926758
              },
              {
                "word": "really",
                "start": 922.03107,
                "end": 922.1907,
                "confidence": 0.9980469
              },
              {
                "word": "get",
                "start": 922.1907,
                "end": 922.4301,
                "confidence": 0.99902344
              },
              {
                "word": "away",
                "start": 922.4301,
                "end": 922.58966,
                "confidence": 0.9995117
              },
              {
                "word": "with",
                "start": 922.58966,
                "end": 922.74927,
                "confidence": 0.9975586
              },
              {
                "word": "being",
                "start": 922.74927,
                "end": 923.2281,
                "confidence": 0.9995117
              },
              {
                "word": "incompetent",
                "start": 923.2281,
                "end": 923.7281,
                "confidence": 0.8618164
              },
              {
                "word": "anymore",
                "start": 923.8665,
                "end": 923.9463,
                "confidence": 0.99072266
              },
              {
                "word": "but",
                "start": 924.3453,
                "end": 924.5049,
                "confidence": 0.9995117
              },
              {
                "word": "they",
                "start": 924.5049,
                "end": 924.6645,
                "confidence": 0.9995117
              },
              {
                "word": "don't",
                "start": 924.6645,
                "end": 924.9039,
                "confidence": 0.9995117
              },
              {
                "word": "lower",
                "start": 924.9039,
                "end": 925.2231,
                "confidence": 0.99853516
              },
              {
                "word": "the",
                "start": 925.2231,
                "end": 925.46246,
                "confidence": 0.98583984
              },
              {
                "word": "ceiling",
                "start": 925.46246,
                "end": 925.7817,
                "confidence": 0.99853516
              },
              {
                "word": "you",
                "start": 926.1009,
                "end": 926.3403,
                "confidence": 0.99902344
              },
              {
                "word": "still",
                "start": 926.3403,
                "end": 926.5797,
                "confidence": 0.9995117
              },
              {
                "word": "need",
                "start": 926.5797,
                "end": 926.89886,
                "confidence": 0.99902344
              },
              {
                "word": "vision",
                "start": 926.89886,
                "end": 926.9787,
                "confidence": 0.99902344
              },
              {
                "word": "in",
                "start": 927.1383,
                "end": 927.3777,
                "confidence": 0.99560547
              },
              {
                "word": "fact",
                "start": 927.3777,
                "end": 927.5373,
                "confidence": 0.99902344
              },
              {
                "word": "you",
                "start": 927.7767,
                "end": 928.0161,
                "confidence": 0.99902344
              },
              {
                "word": "need",
                "start": 928.0161,
                "end": 928.0959,
                "confidence": 0.9946289
              },
              {
                "word": "it",
                "start": 928.0959,
                "end": 928.2555,
                "confidence": 0.9951172
              },
              {
                "word": "more",
                "start": 928.2555,
                "end": 928.4151,
                "confidence": 0.9995117
              },
              {
                "word": "than",
                "start": 928.4151,
                "end": 928.6545,
                "confidence": 1
              },
              {
                "word": "ever",
                "start": 928.6545,
                "end": 929.05347,
                "confidence": 1
              },
              {
                "word": "because",
                "start": 929.05347,
                "end": 929.2131,
                "confidence": 0.9995117
              },
              {
                "word": "you",
                "start": 929.2131,
                "end": 929.3727,
                "confidence": 0.9995117
              },
              {
                "word": "can't",
                "start": 929.3727,
                "end": 929.61206,
                "confidence": 0.9995117
              },
              {
                "word": "hide",
                "start": 929.61206,
                "end": 929.9313,
                "confidence": 1
              },
              {
                "word": "behind",
                "start": 929.9313,
                "end": 930.1707,
                "confidence": 0.80859375
              },
              {
                "word": "the",
                "start": 930.1707,
                "end": 930.465,
                "confidence": 0.97753906
              },
              {
                "word": "use",
                "start": 930.5847,
                "end": 930.9039,
                "confidence": 0.8564453
              },
              {
                "word": "of",
                "start": 930.9039,
                "end": 931.14325,
                "confidence": 0.99658203
              },
              {
                "word": "i",
                "start": 931.5422,
                "end": 931.7018,
                "confidence": 0.98046875
              },
              {
                "word": "don't",
                "start": 931.7018,
                "end": 931.8614,
                "confidence": 0.99902344
              },
              {
                "word": "have",
                "start": 931.8614,
                "end": 931.94116,
                "confidence": 0.99560547
              },
              {
                "word": "the",
                "start": 931.94116,
                "end": 932.1007,
                "confidence": 0.96191406
              },
              {
                "word": "budget",
                "start": 932.1007,
                "end": 932.4199,
                "confidence": 1
              },
              {
                "word": "now",
                "start": 933.0582,
                "end": 933.2976,
                "confidence": 0.9946289
              },
              {
                "word": "you",
                "start": 933.2976,
                "end": 933.3774,
                "confidence": 0.99609375
              },
              {
                "word": "have",
                "start": 933.3774,
                "end": 933.61676,
                "confidence": 0.95654297
              },
              {
                "word": "no",
                "start": 933.61676,
                "end": 934.0157,
                "confidence": 1
              },
              {
                "word": "excuse",
                "start": 934.0157,
                "end": 934.25507,
                "confidence": 0.9970703
              },
              {
                "word": "that",
                "start": 934.5742,
                "end": 934.9732,
                "confidence": 0.9980469
              },
              {
                "word": "is",
                "start": 934.9732,
                "end": 935.2126,
                "confidence": 0.99902344
              },
              {
                "word": "both",
                "start": 935.2126,
                "end": 935.7126,
                "confidence": 0.9995117
              },
              {
                "word": "incredibly",
                "start": 935.93066,
                "end": 936.43066,
                "confidence": 0.99560547
              },
              {
                "word": "empowering",
                "start": 936.4892,
                "end": 936.9892,
                "confidence": 0.9995117
              },
              {
                "word": "and",
                "start": 937.4467,
                "end": 937.9467,
                "confidence": 0.99853516
              },
              {
                "word": "yeah",
                "start": 938.4042,
                "end": 938.5638,
                "confidence": 0.9770508
              },
              {
                "word": "a",
                "start": 938.80316,
                "end": 938.9627,
                "confidence": 0.97558594
              },
              {
                "word": "little",
                "start": 938.9627,
                "end": 939.1223,
                "confidence": 0.99853516
              },
              {
                "word": "bit",
                "start": 939.1223,
                "end": 939.28186,
                "confidence": 0.98095703
              },
              {
                "word": "terrifying",
                "start": 939.28186,
                "end": 939.52124,
                "confidence": 0.9975586
              },
              {
                "word": "so",
                "start": 940.1596,
                "end": 940.6383,
                "confidence": 0.99902344
              },
              {
                "word": "here's",
                "start": 940.6383,
                "end": 940.95746,
                "confidence": 0.99658203
              },
              {
                "word": "my",
                "start": 940.95746,
                "end": 941.19684,
                "confidence": 0.9995117
              },
              {
                "word": "challenge",
                "start": 941.19684,
                "end": 941.5958,
                "confidence": 1
              },
              {
                "word": "you",
                "start": 941.5958,
                "end": 941.6756,
                "confidence": 0.84277344
              },
              {
                "word": "listening",
                "start": 941.6756,
                "end": 941.915,
                "confidence": 0.9951172
              },
              {
                "word": "don't",
                "start": 942.15436,
                "end": 942.23413,
                "confidence": 0.9995117
              },
              {
                "word": "just",
                "start": 942.23413,
                "end": 942.39374,
                "confidence": 0.99902344
              },
              {
                "word": "take",
                "start": 942.39374,
                "end": 942.5533,
                "confidence": 0.9995117
              },
              {
                "word": "our",
                "start": 942.5533,
                "end": 942.7129,
                "confidence": 0.9980469
              },
              {
                "word": "word",
                "start": 942.7129,
                "end": 942.79266,
                "confidence": 0.86035156
              },
              {
                "word": "for",
                "start": 942.79266,
                "end": 942.9523,
                "confidence": 0.9975586
              },
              {
                "word": "it",
                "start": 942.9523,
                "end": 943.03204,
                "confidence": 0.9970703
              },
              {
                "word": "go",
                "start": 943.3512,
                "end": 943.5108,
                "confidence": 0.9995117
              },
              {
                "word": "to",
                "start": 943.5108,
                "end": 943.67035,
                "confidence": 0.96972656
              },
              {
                "word": "google",
                "start": 943.7502,
                "end": 943.9097,
                "confidence": 1
              },
              {
                "word": "apps",
                "start": 944.06934,
                "end": 944.3087,
                "confidence": 0.70214844
              },
              {
                "word": "pick",
                "start": 944.70764,
                "end": 944.947,
                "confidence": 0.99902344
              },
              {
                "word": "one",
                "start": 944.947,
                "end": 945.0268,
                "confidence": 0.9995117
              },
              {
                "word": "of",
                "start": 945.0268,
                "end": 945.1864,
                "confidence": 0.9995117
              },
              {
                "word": "these",
                "start": 945.1864,
                "end": 945.4258,
                "confidence": 0.99658203
              },
              {
                "word": "tools",
                "start": 945.4258,
                "end": 945.5853,
                "confidence": 0.9711914
              },
              {
                "word": "just",
                "start": 945.91907,
                "end": 946.0783,
                "confidence": 0.99902344
              },
              {
                "word": "one",
                "start": 946.0783,
                "end": 946.23755,
                "confidence": 0.9951172
              },
              {
                "word": "throw",
                "start": 946.556,
                "end": 946.71533,
                "confidence": 0.99560547
              },
              {
                "word": "a",
                "start": 946.71533,
                "end": 946.8746,
                "confidence": 0.6640625
              },
              {
                "word": "sketch",
                "start": 946.8746,
                "end": 947.19305,
                "confidence": 0.99658203
              },
              {
                "word": "to",
                "start": 947.19305,
                "end": 947.2727,
                "confidence": 0.43554688
              },
              {
                "word": "stitch",
                "start": 947.2727,
                "end": 947.5912,
                "confidence": 0.9921875
              },
              {
                "word": "or",
                "start": 947.5912,
                "end": 947.8301,
                "confidence": 0.99853516
              },
              {
                "word": "mess",
                "start": 947.8301,
                "end": 947.9893,
                "confidence": 0.91796875
              },
              {
                "word": "around",
                "start": 947.9893,
                "end": 948.14856,
                "confidence": 0.8466797
              },
              {
                "word": "with",
                "start": 948.14856,
                "end": 948.38745,
                "confidence": 0.9970703
              },
              {
                "word": "wi",
                "start": 948.38745,
                "end": 948.62634,
                "confidence": 0.47460938
              },
              {
                "word": "for",
                "start": 948.62634,
                "end": 948.7856,
                "confidence": 0.9975586
              },
              {
                "word": "fun",
                "start": 948.7856,
                "end": 948.86523,
                "confidence": 0.99853516
              },
              {
                "word": "take",
                "start": 949.1041,
                "end": 949.1837,
                "confidence": 0.6230469
              },
              {
                "word": "your",
                "start": 949.1837,
                "end": 949.343,
                "confidence": 0.97265625
              },
              {
                "word": "hands",
                "start": 949.343,
                "end": 949.58185,
                "confidence": 0.9980469
              },
              {
                "word": "dirty",
                "start": 949.58185,
                "end": 949.82074,
                "confidence": 0.9995117
              },
              {
                "word": "see",
                "start": 949.98,
                "end": 950.1393,
                "confidence": 0.5449219
              },
              {
                "word": "where",
                "start": 950.1393,
                "end": 950.2189,
                "confidence": 0.9868164
              },
              {
                "word": "it",
                "start": 950.2189,
                "end": 950.3781,
                "confidence": 0.98046875
              },
              {
                "word": "breaks",
                "start": 950.3781,
                "end": 950.617,
                "confidence": 0.9560547
              },
              {
                "word": "that's",
                "start": 950.8559,
                "end": 951.0948,
                "confidence": 0.99902344
              },
              {
                "word": "where",
                "start": 951.0948,
                "end": 951.254,
                "confidence": 0.9946289
              },
              {
                "word": "you'll",
                "start": 951.254,
                "end": 951.5726,
                "confidence": 0.9638672
              },
              {
                "word": "really",
                "start": 951.5726,
                "end": 951.8114,
                "confidence": 0.99902344
              },
              {
                "word": "learn",
                "start": 951.8114,
                "end": 951.9707,
                "confidence": 0.9975586
              },
              {
                "word": "what",
                "start": 951.9707,
                "end": 952.12994,
                "confidence": 0.9995117
              },
              {
                "word": "this",
                "start": 952.12994,
                "end": 952.2892,
                "confidence": 1
              },
              {
                "word": "is",
                "start": 952.2892,
                "end": 952.4484,
                "confidence": 0.99658203
              },
              {
                "word": "all",
                "start": 952.4484,
                "end": 952.60767,
                "confidence": 0.99902344
              },
              {
                "word": "about",
                "start": 952.60767,
                "end": 952.76697,
                "confidence": 0.99902344
              },
              {
                "word": "absolutely",
                "start": 953.1651,
                "end": 953.404,
                "confidence": 0.99609375
              },
              {
                "word": "thanks",
                "start": 953.56323,
                "end": 953.7225,
                "confidence": 0.99658203
              },
              {
                "word": "for",
                "start": 953.7225,
                "end": 953.96136,
                "confidence": 0.99902344
              },
              {
                "word": "diving",
                "start": 953.96136,
                "end": 954.27985,
                "confidence": 0.99902344
              },
              {
                "word": "deep",
                "start": 954.27985,
                "end": 954.4391,
                "confidence": 0.9921875
              },
              {
                "word": "with",
                "start": 954.4391,
                "end": 954.5984,
                "confidence": 0.99902344
              },
              {
                "word": "us",
                "start": 954.5984,
                "end": 954.7576,
                "confidence": 0.9980469
              },
              {
                "word": "we'll",
                "start": 955.15576,
                "end": 955.315,
                "confidence": 0.98779297
              },
              {
                "word": "see",
                "start": 955.315,
                "end": 955.39465,
                "confidence": 0.9975586
              },
              {
                "word": "you",
                "start": 955.39465,
                "end": 955.47424,
                "confidence": 0.8696289
              },
              {
                "word": "in",
                "start": 955.47424,
                "end": 955.5539,
                "confidence": 0.8725586
              },
              {
                "word": "the",
                "start": 955.5539,
                "end": 955.71313,
                "confidence": 0.9975586
              },
              {
                "word": "next",
                "start": 955.71313,
                "end": 955.8724,
                "confidence": 0.99853516
              },
              {
                "word": "one",
                "start": 955.8724,
                "end": 956.0317,
                "confidence": 0.9975586
              }
            ]
          }
        ]
      }
    ]
  }
}
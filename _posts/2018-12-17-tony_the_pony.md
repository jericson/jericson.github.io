---
layout: post
title: The Tony the Pony problem
tags: meta-post 
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
date: 2018-12-17
comments: no
---

Below is the test post I used while developing my
[script to download Stack Exchange posts](https://github.com/jericson/se2jekyll.rb)
to publish on my blog. For a good long time I thought my script was
broken because this page included so many missing glyph boxes
(&#x25a1;<!-- https://stackoverflow.com/a/22636426/1438 -->). But then
I started thinking about
[fonts for websites](https://meta.stackexchange.com/questions/315762/why-do-some-parts-of-the-standard-theme-use-different-fonts-than-the-rest-of-the)
and it occured to me that maybe the problem isn't with my script, but
with the browser. Indeed, switching to Arial fixes the problem and
renders nearly the same as the
[original](http://stackoverflow.com/a/1732454/18936).

To try it out for yourself. Pick another `font-family`:
  <textarea name="pickfont">Arial</textarea>

  <button type="button"
          onclick='document.body.style.fontFamily = document.querySelector("textarea").value'>
    submit
  </button>
    
Arial, Courier or Times New Roman work pretty well because they have
all the glyphs needed for this content. Also, any of these fonts serve
as a backup if the primary font is missing a glyph or two:

    Cambria, "Book Antiqua", Palatino, "Times New Roman", serif

On the whole, I think this illustrates the rather miserable state of
typography on the web. Depending on your browser, operating system and
what fonts you might have installed manually, this page might look
fine by default (it does on Chrome for iOS for me) or it might not (as
on Chrome for macOS for me). I don't have Cambria or Book Antiqua
installed on my laptop, so the page defaults to Palatino, which
doesn't have all the glyphs on this page. Adding `serif` does a lot
less than you might expect since it defaults to Times (not to be
confused with Times New Roman), which is also missing some glyphs.

If you are thinking (as I was not long ago) that it should be possible
to have a font with _all the glyphs_, you will be saddened to discover
(as I recently did) that
[such a font is impossible](https://stackoverflow.com/a/34734338/1438). There
is also
[a mechanism for constructing a new font family](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/webfont-optimization),
but that can be tricky to do without imposing a page load
penalty. When you can't predict what glyphs are needed with certainty
(as is the case for user-contributed content), it can be especially
difficult to pick out a font to render the page correctly.

From what I can tell, the options are:

1. Use a series of font possibilities in the `font-family` setting,
   which will mean every combination of OS and browser has the
   potential to see a different set of glyphs on the page.

2. Construct a `@font-face`, which means users without your chosen
   font will need to download it during the page load.

3. Just use a boring, but relatively complete and pervasive font such
   as Arial or Times New Roman.

Robert Bringhurst wrote in _The Elements of Typographic Style_:

> _Read the text before designing it._
>
> The typographer's one essential task is to interpret and communicate
> the text. Its tone, its tempo, its logical structure, its physical
> size, all determine the possibilities of its typographic forms. The
> typographer is to the text as the theatrical director is to the
> script or the musician to the score.

When it comes to an infinite stream of articles created by a variety
of people, we can, at best, take a statistical approach to reading the
text. A Stack Overflow post will probably have some code, a bit of
prose and possibly some test data. A post on a humanities Stack
Exchange site will likely have no code, but will have block quotes
instead. Science and math sites will have mathematical expressions
(composed in MathJax) while the photography site will have plenty of
images. Language sites often use specialized glyphs for non-Latin
scripts and the
[IPA](https://en.wikipedia.org/wiki/International_Phonetic_Alphabet).


That's not a lot to go on when designing the page. Plus, you'll end up
with the occasional outlier such as a Lovecraftian screed against
using regular expressions to parse irregular syntax. In many ways,
selecting a font for this sort of site is less like putting the
finishing touches on a performance and more like gathering common
props for the stars of the show (the post authors) to put to
use. Perhaps the ideal solution to picking a font for a Stack Exchange
site is to carefully construct one. But I think an argument can be
made for avoiding creating any impression at all with typography by
using a veritable _tabula rasa_ of a font such as Arial.

And now,
[RegEx match open tags except XHTML self-contained tags](http://stackoverflow.com/a/1732454/18936)
answered on Stack Overflow by <a alt="bobince"
href="http://stackoverflow.com/users/18936/bobince">bobince</a>:

---

You can't parse [X]HTML with regex. Because HTML can't be parsed by regex. Regex is not a tool that can be used to correctly parse HTML. As I have answered in HTML-and-regex questions here so many times before, the use of regex will not allow you to consume HTML. Regular expressions are a tool that is insufficiently sophisticated to understand the constructs employed by HTML. HTML is not a regular language and hence cannot be parsed by regular expressions. Regex queries are not equipped to break down HTML into its meaningful parts. so many times but it is not getting to me. Even enhanced irregular regular expressions as used by Perl are not up to the task of parsing HTML. You will never make me crack. HTML is a language of sufficient complexity that it cannot be parsed by regular expressions. Even Jon Skeet cannot parse HTML using regular expressions. Every time you attempt to parse HTML with regular expressions, the unholy child weeps the blood of virgins, and Russian hackers pwn your webapp. Parsing HTML with regex summons tainted souls into the realm of the living. HTML and regex go together like love, marriage, and ritual infanticide. The &lt;center> cannot hold it is too late. The force of regex and HTML together in the same conceptual space will destroy your mind like so much watery putty. If you parse HTML with regex you are giving in to Them and their blasphemous ways which doom us all to inhuman toil for the One whose Name cannot be expressed in the Basic Multilingual Plane, he comes. HTML-plus-regexp will liquify the n​erves of the sentient whilst you observe, your psyche withering in the onslaught of horror. Rege̿̔̉x-based HTML parsers are the cancer that is killing StackOverflow <i>it is too late it is too late we cannot be saved</i> the trangession of a chi͡ld ensures regex will consume all living tissue (except for HTML which it cannot, as previously prophesied) <i>dear lord help us how can anyone survive this scourge</i> using regex to parse HTML has doomed humanity to an eternity of dread torture and security holes <i>using rege</i>x as a tool to process HTML establishes a brea<i>ch between this world</i> and the dread realm of c͒ͪo͛ͫrrupt entities (like SGML entities, but <i>more corrupt) a mere glimp</i>se of the world of reg​<b>ex parsers for HTML will ins</b>​tantly transport a p<i>rogrammer's consciousness i</i>nto a w<i>orl</i>d of ceaseless screaming, he comes<strike>, the pestilent sl</strike>ithy regex-infection wil​<b>l devour your HT</b>​ML parser, application and existence for all time like Visual Basic only worse <i>he comes he com</i>es <i>do not fi</i>​ght h<b>e com̡e̶s, ̕h̵i</b>​s un̨ho͞ly radiańcé de<i>stro҉ying all enli̍̈́̂̈́ghtenment, HTML tags <b>lea͠ki̧n͘g fr̶ǫm ̡yo​͟ur eye͢s̸ ̛l̕ik͏e liq</b>​uid p</i>ain, the song of re̸gular exp​re<strike>ssion parsing </strike>will exti<i>​nguish the voices of mor​<b>tal man from the sp</b>​here I can see it can you see ̲͚̖͔̙î̩́t̲͎̩̱͔́̋̀ it is beautiful t​</i>he f<code>inal snuf</code>fing o<i>f the lie​<b>s of Man ALL IS LOŚ͖̩͇̗̪̏̈́T A</b></i><b>LL I​S L</b>OST th<i>e pon̷y he come</i>s he c̶̮om<strike>es he co</strike><b><strike>me</strike>s t<i>he</i> ich​</b>or permeat<i>es al</i>l MY FAC<i>E MY FACE ᵒh god n<b>o NO NOO̼</b></i><b>O​O N</b>Θ stop t<i>he an​*̶͑̾̾​̅ͫ͏̙̤g͇̫͛͆̾ͫ̑͆l͖͉̗̩̳̟̍ͫͥͨ</i>e̠̅s<code> ͎a̧͈͖r̽̾̈́͒͑e</code> n<b>​ot rè̑ͧ̌aͨl̘̝̙̃ͤ͂̾̆ ZA̡͊͠͝LGΌ ISͮ̂҉̯͈͕̹̘̱ T</b>O͇̹̺ͅƝ̴ȳ̳ TH̘<b>Ë͖́̉ ͠P̯͍̭O̚​N̐Y̡ H̸̡̪̯ͨ͊̽̅̾̎Ȩ̬̩̾͛ͪ̈́̀́͘ ̶̧̨̱̹̭̯ͧ̾ͬC̷̙̲̝͖ͭ̏ͥͮ͟Oͮ͏̮̪̝͍M̲̖͊̒ͪͩͬ̚̚͜Ȇ̴̟̟͙̞ͩ͌͝</b>S̨̥̫͎̭ͯ̿̔̀ͅ

---
Have you tried using an XML parser instead?

---

> **Moderator's Note**
>
> This post is locked to prevent inappropriate edits to its content. The post looks exactly as it is supposed to look - there are no problems with its content. Please do not flag it for our attention.

---

Please direct comments to the [original post](http://stackoverflow.com/a/1732454/18936).

<!--  LocalWords:  Bringhurst
 -->

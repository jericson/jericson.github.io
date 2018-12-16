---
layout: post
title: RegEx match open tags except XHTML self-contained tags
tags: meta-post 
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: <a alt="bobince" href="http://stackoverflow.com/users/18936/bobince">bobince</a>
date: 2009-11-13 23:04:30
comments: no
---

([Originally published](http://stackoverflow.com/a/1732454/18936) on stackoverflow Stack Exchange by <a alt="bobince" href="http://stackoverflow.com/users/18936/bobince">bobince</a>.)

---

You can't parse [X]HTML with regex. Because HTML can't be parsed by regex. Regex is not a tool that can be used to correctly parse HTML. As I have answered in HTML-and-regex questions here so many times before, the use of regex will not allow you to consume HTML. Regular expressions are a tool that is insufficiently sophisticated to understand the constructs employed by HTML. HTML is not a regular language and hence cannot be parsed by regular expressions. Regex queries are not equipped to break down HTML into its meaningful parts. so many times but it is not getting to me. Even enhanced irregular regular expressions as used by Perl are not up to the task of parsing HTML. You will never make me crack. HTML is a language of sufficient complexity that it cannot be parsed by regular expressions. Even Jon Skeet cannot parse HTML using regular expressions. Every time you attempt to parse HTML with regular expressions, the unholy child weeps the blood of virgins, and Russian hackers pwn your webapp. Parsing HTML with regex summons tainted souls into the realm of the living. HTML and regex go together like love, marriage, and ritual infanticide. The &lt;center> cannot hold it is too late. The force of regex and HTML together in the same conceptual space will destroy your mind like so much watery putty. If you parse HTML with regex you are giving in to Them and their blasphemous ways which doom us all to inhuman toil for the One whose Name cannot be expressed in the Basic Multilingual Plane, he comes. HTML-plus-regexp will liquify the n​erves of the sentient whilst you observe, your psyche withering in the onslaught of horror. Rege̿̔̉x-based HTML parsers are the cancer that is killing StackOverflow <i>it is too late it is too late we cannot be saved</i> the trangession of a chi͡ld ensures regex will consume all living tissue (except for HTML which it cannot, as previously prophesied) <i>dear lord help us how can anyone survive this scourge</i> using regex to parse HTML has doomed humanity to an eternity of dread torture and security holes <i>using rege</i>x as a tool to process HTML establishes a brea<i>ch between this world</i> and the dread realm of c͒ͪo͛ͫrrupt entities (like SGML entities, but <i>more corrupt) a mere glimp</i>se of the world of reg​<b>ex parsers for HTML will ins</b>​tantly transport a p<i>rogrammer's consciousness i</i>nto a w<i>orl</i>d of ceaseless screaming, he comes<strike>, the pestilent sl</strike>ithy regex-infection wil​<b>l devour your HT</b>​ML parser, application and existence for all time like Visual Basic only worse <i>he comes he com</i>es <i>do not fi</i>​ght h<b>e com̡e̶s, ̕h̵i</b>​s un̨ho͞ly radiańcé de<i>stro҉ying all enli̍̈́̂̈́ghtenment, HTML tags <b>lea͠ki̧n͘g fr̶ǫm ̡yo​͟ur eye͢s̸ ̛l̕ik͏e liq</b>​uid p</i>ain, the song of re̸gular exp​re<strike>ssion parsing </strike>will exti<i>​nguish the voices of mor​<b>tal man from the sp</b>​here I can see it can you see ̲͚̖͔̙î̩́t̲͎̩̱͔́̋̀ it is beautiful t​</i>he f<code>inal snuf</code>fing o<i>f the lie​<b>s of Man ALL IS LOŚ͖̩͇̗̪̏̈́T A</b></i><b>LL I​S L</b>OST th<i>e pon̷y he come</i>s he c̶̮om<strike>es he co</strike><b><strike>me</strike>s t<i>he</i> ich​</b>or permeat<i>es al</i>l MY FAC<i>E MY FACE ᵒh god n<b>o NO NOO̼</b></i><b>O​O N</b>Θ stop t<i>he an​*̶͑̾̾​̅ͫ͏̙̤g͇̫͛͆̾ͫ̑͆l͖͉̗̩̳̟̍ͫͥͨ</i>e̠̅s<code> ͎a̧͈͖r̽̾̈́͒͑e</code> n<b>​ot rè̑ͧ̌aͨl̘̝̙̃ͤ͂̾̆ ZA̡͊͠͝LGΌ ISͮ̂҉̯͈͕̹̘̱ T</b>O͇̹̺ͅƝ̴ȳ̳ TH̘<b>Ë͖́̉ ͠P̯͍̭O̚​N̐Y̡ H̸̡̪̯ͨ͊̽̅̾̎Ȩ̬̩̾͛ͪ̈́̀́͘ ̶̧̨̱̹̭̯ͧ̾ͬC̷̙̲̝͖ͭ̏ͥͮ͟Oͮ͏̮̪̝͍M̲̖͊̒ͪͩͬ̚̚͜Ȇ̴̟̟͙̞ͩ͌͝</b>S̨̥̫͎̭ͯ̿̔̀ͅ

---
Have you tried using an XML parser instead?

---

> **Moderator's Note**
>
> This post is locked to prevent inappropriate edits to its content. The post looks exactly as it is supposed to look - there are no problems with its content. Please do not flag it for our attention.

---

If there are missing glyphs above,
  <button type="button"
          onclick="document.body.style.fontFamily = 'Arial'">
    use Arial
  </button>.

Please direct comments to the [original post](http://stackoverflow.com/a/1732454/18936).


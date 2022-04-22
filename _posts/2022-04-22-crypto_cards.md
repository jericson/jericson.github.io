---
layout: post
title: Crypto Cards
subtitle: Rules
comments: yes
---

Crypto Cards is multiplayer game about cryptocurrency that uses
nothing but an ordinary deck of cards.

This is a draft of the rules. **This game has not been playtested!**
If you'd like to help me out with that and have Tabletop Simulator,
I'd love to teach you the game. If you try it on your own, please send
me a report via email or the comment section.

## Goal

The winner of Crypto Cards is the player who leaves the least value on
the table. In game terms, that means having the smallest portfolio by
selling the most crypto.

## Setup

{% assign hand = 5 %}

Remove the Jokers from an ordinary deck of cards, shuffle, and deal
out {{ hand }} cards to each player. Shuffle two Jokers back into the
deck and place it face down within reach of the players.

The four suits represent the 4 cryptos[^1] in this game:

* LUX (♢)
* LUK (♣)
* LUV (♡)
* LUT (♠)

!["Wallet" is in the player's hand, "portfolio" is on the table in
front of them and "market" is in the middle of the
table.](/images/crypto_cards_locations.png)


## Turns

The player who has most recently bought, sold or mined a
cryptocurrency or NFT goes first. Play continues clockwise around the
table.

On their turn, each player must mine and transfer one crypto. They may
also be able to sell a crypto into the marketplace.

### 1. Mine

At the start of each turn, the active player must _mine_ by taking the
top card from the deck into their hand.

**If the card is a Joker**, the player must reveal it, place it next
to the deck, and draw another card. The game ends immediately when the
second Joker turns up.

### 2. Sell 

Players can _sell_ a card from the portfolio by moving it from their
portfolio to the corresponding crypto market. Cards may not be sold
directly from the player's hand, but only from cards displayed in
their portfolio.

There are three ways to sell crypto:

1. If a crypto in your portfolio is _exactly_ one point larger than
   the topmost card in the corresponding crypto market, you **must** sell
   that card to the top of the market.
   
   Aces count as 1 and the market starts at 0. So if you have an ace
   in your portfolio and the market for that crypto is empty, you must
   sell it.
   
   The largest card that can be placed in the market is 10. Face cards
   can't be sold.
   
   The selling player can pick which card to sell if there are more
   than one. Players can never sell more than one card in a turn.
   
   **Example**: If you have the 3♣ and the ♣ market already has the
   2♣, you may move the 3♣ from your portfolio to the cover the 2♣.
   
2. If you have a face card in your hand, you _may_ transfer it in
   order to sell any card from your portfolio. Take any card in your
   portfolio and move it to the corresponding crypto market. It must
   be placed in numerical order. Typically you will use face cards to
   sell a large number that you can't ordinarily sell, so the card
   normally goes to the top of the market.
   
   **If you use a face card to sell**, skip the Transfer step.
   
   Face cards cannot be sold and are counted as part of your portfolio
   at the end of the game.
   
   **Example**: Early in the game, you have the 7♡ in your portfolio
   and there are no cards in the ♡ market. Normally, you can't sell
   the 7♡ until the market increases to 6♡. If you have the Q♡, you
   may play it to your portfolio. Then you can sell the 7♡. Skip the
   transfer step, since you already are down to {{ hand }} cards in
   your hand.
   
3. You _may_ sell one card if it is smaller than the largest card in
   the market. Place the card in the market in numerical order.
   
   **Example**: You have the 4♠ and the ♠ market is A♠, 2♠, 6♠ and
   7♠. You may move the 4♠ from your portfolio to the market between
   the 2♠ and the 6♠.

**Important**: Even though this is called "selling", there is no
compensation for selling a card from the portfolio. The goal is to
have as few cards as possible in your portfolio at the end of the
game.

### 3. Transfer

If you have more than {{ hand }} cards in your hand, transfer a card to your
portfolio so that you have just {{ hand }}. 

All cards in each portfolio must be visable to all players at all
times. Do not hide cards or stack them in a way that others can't tell
what you have.

You may transfer a face card, but it does not allow you to sell a card
during the Transfer step. Since it goes in your portfolio and doesn't
provide any value, transferring a face card is generally to be avoided.

## Ending the game

The game ends when the second Joker is revealed. The player who
revealed the second Joker may not finish their turn. Instead each
player counts the cards in their portfolio. The winner is the player
with the fewest cards in their portfolio.

**Reminder**: Face cards on the table count, but cards in the hand do
not count.

### Tie breakers

In the event of a tie, the winner is the player with the _fewest face
cards_ in their porfolio.  If there is still a tie, the player with
the fewest total sum of numbers in their portfolio wins. _Please email
me if you still have a tie and I'll let you know the final tie
breaker._

## Design notes

This game is heavily influenced by [Lost
Cities](2021/12/07/lost_cities.html). It's intended to be a
hand-management game with a shared resource. In this case, the
resource isn't a pile the other player can draw from, but rather the
market where cards can be discarded to. I have a variant in mind that
requires the score to be calculated, but I wanted to start with a
simpler game first.

My children happened to get [Monopoly
Deal](https://boardgamegeek.com/boardgame/40398/monopoly-deal-card-game)
on Easter. It's a card game version of Monopoly and it's not half
bad. A key component is that you can't pay for things with cards in
your hand, but you have to play cards to the table where other players
can see them. I had toyed with that idea earlier and playing Monopoly
Deal cemented the mechanic as interesting. It means everyone has a
chance to react before you can move a card you just played.

Like Monopoly, Crypto Cards isn't so much a simulation as a game
mildly critical of its subject matter. Face cards represent celebrity
and corporate endorsements. Jokers represent market collapse. This
isn't a game about investment so much as taking advantage of
irrational exuberance while you can.

### Changes I'm considering

1. The number of cards in hand is variable. It should be large enough
   that there are plenty of options, but not so large that cards can
   just hide in the hand. {{ hand }} seems right, but it's literally a
   variable in the source that generates this page.
   
2. I initially conceived of the market as something the players would
   manipulate. The top card would be the price of the cards in each
   portfolio and you'd want to try to minimize the price of the cards
   in your portfolio. (Or maybe maximize them? That's a more
   traditional thing to do in an economic game.) But the ways I tried
   to implement market manipulation didn't produce interesting
   decisions. 
   
3. Related to #2, buying back cards from the market seems like a
   reasonable thing to do in this sort of game. But I _really_ don't
   want to introduce any sort of money system and it's hard to figure
   out how to make the cost of buying a card back appropriate. In the
   current game, there's no reason to buy a card since selling off
   your portfolio is the entire point of the game. 
   
   Well, no reason other than to screw your opponent. I can see a
   scenario where player A has a ton of cards in a suit, plays a face
   card to put a high card in the market and player B buys that card
   to prevent A from selling off their portfolio. Trouble is, this can
   lead to extra frustration since it's possible for another player to
   hold onto all the cards you need to make progress.
   
4. I think the end game is a dull. I've been testing with a dummy
   player (just turn over a new card and pretend they played it out of
   their hand) and it's just taking turns selling off cards waiting
   for the second Joker to drop. Once someone has sold the 9 or 10
   in a suit, every other card can be sold when you get a chance.
   
   One solution might be to let people sell off multiple cards if they
   are using a face card. (Selling scenario #2.) That way players are
   incentivised to wait for later in the game to sell their high
   cards. It becomes more of a push-your-luck game.
   
   Another option is to prevent using face cards until the first Joker
   has dropped. That way the start of the game is buildup and the
   second half is release. But will this make the first half
   uninteresting?
   
   But maybe I just need to do some in-person play testing? Maybe the
   endgame is more engaging with other people?

---

[^1]: It's not necessary to memorize them, but now that these
    names are in my brain, they might as well be in yours too.
    

<!--  LocalWords:  crypto cryptocurrency
 -->

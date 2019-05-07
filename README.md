An application that creates an oystercard.

How to use the file in IRB:
require './lib/oystercard.rb'
card = Oystrcard.new
card.top_up(30)
card.balance

User Stories:

In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

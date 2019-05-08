[![Build Status](https://travis-ci.org/hughbric/oystercard.svg?branch=master)](https://travis-ci.org/hughbric/oystercard)
[![Coverage Status](https://coveralls.io/repos/github/hughbric/oystercard/badge.svg?branch=master)](https://coveralls.io/github/hughbric/oystercard?branch=master)

## Oystercard Applcation

An application that creates oystercards and manages their balances.

### How to run the application locally:
**Note:** You will need to have Ruby 2.6.0 installed be able to use IRB.

- Clone or fork it: `https://github.com/hughbric/oystercard`
- In your terminal, `cd` into the project root folder.
- `bundle` to install all dependencies.
- Run `irb`
- Enter the following commands:
  - `require './lib/oystercard.rb'`
  - `card = Oystrcard.new`

 This will initialize a new instance of the oystercard class.
 To top-up your oystercard with an amount and then check the balance:
   - `card.top_up(30)`
   - `card.balance`

### Testing
This projcet uses RSpec.
To run the test suite (unit and feature tests), run `rspec` while in the project root.


### My Approach



### User Stories:

In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated

[![Build Status](https://github.com/hughbric/oystercard>/<repo name>.svg?branch=master)](https://travis-ci.org/<github username>/<repo name>)

[![Coverage Status](https://github.com/hughbric/oystercard>/<repo name>/badge.svg?branch=master)](https://coveralls.io/github/<github username>/<repo name>?branch=master)

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

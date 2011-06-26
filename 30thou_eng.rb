# -*- coding: utf-8 -*-
require 'rubygems'
require 'twitter_oauth'
require 'date'

bdd = Date.new(2000, 1, 7)       # change your birthday.
twitterid = 'twitter_acc'        # change your twitter id.
tdd = Date.today

datestr = tdd.strftime("%Y/%m/%d(%a)")
t = TwitterOAuth::Client.new({
    :consumer_key=>'XXXXXXXXXX', # change your consumer_key
    :consumer_secret=>'XXXXXXX', # change your consumer_secret
    :token=>'XXXXXXXXXXXXXXXXX', # change your token
    :secret=>'XXXXXXXXXXXXXXXX'  # change your secret
                             })
tweet = "D ", twitterid , " " , twitterid ," lived " , tdd - bdd + 1 ," days. Your life is only after " , (30000 - (tdd - bdd)  - 1 ) , " days. What meaningful thing did you do today? " , datestr 
t.update(tweet)

#!/bin/bash

rm build/output.pdf
bundle exec ruby standalone.rb
open build/output.pdf

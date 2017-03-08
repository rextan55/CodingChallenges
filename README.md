# Project Euler

A repository of solved project euler problems so that Rex can get feedback on his implementations.

Setup and submission is assuming you want to put these in a folder on your desktop, but
you can replace `~/Desktop/euler` everywhere with whatever folder you want to use

Setup:

    $ git clone git@github.com:neilsarkar/euler.git ~/Desktop/euler

Example submission of solution file for lowest common multiple:

    $ mv /path/to/problem_name.rb ~/Desktop/euler
    $ cd ~/Desktop/euler
    $ git checkout -b rex.lowest-common-multiple
    $ git add problem_name.rb
    $ git commit -m "Submit solution for lowest common multiple"
    $ git push origin --set-upstream rex.lowest-common-multiple
    $ open https://github.com/neilsarkar/euler

    You should then see a suggestion to submit a pull request from this new branch.

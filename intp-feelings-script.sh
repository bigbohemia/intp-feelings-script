#!/bin/sh
# Script to tell if INTP likes you v.0.3

function research_if_i_care(){
    while [ 1 ]
    do
        #TODO: complex code to check how you feel about this
        #in the meantime I'll just assumed I'm bored and don't relly care
        bored_yet="true"
        last_caring_result="false"

        if [ "$bored_yet" = "true" ]; then   
            export do_i_really_care="$last_caring_result"
            break
        fi
    done
}

while [ 1 ]; do

    echo "Do you like me?"

    research_if_i_care

    if [ "$do_i_really_care" = "false" ]; then   
        exit
    fi

    #Not really going to fix after this because I spent way to much time learning how to (badly) write bash to make a stupid joke.

    read answer

    if [ "$answer" != "I do not have a logical answer to your question." ]; then
        break
    fi

done

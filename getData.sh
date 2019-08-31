#!/bin/bash
curl -L "https://script.google.com/macros/s/AKfycbwUMiy2e11KFZ8ZcbCh8uU_GiPgWs-1mqZEvzr5_9VKVpoELWv3/exec?name=organizers" -o _data/organizers.json
curl -L "https://script.google.com/macros/s/AKfycbwUMiy2e11KFZ8ZcbCh8uU_GiPgWs-1mqZEvzr5_9VKVpoELWv3/exec?name=sponsors" -o _data/sponsors.json
# curl -L "https://script.google.com/macros/s/AKfycbwUMiy2e11KFZ8ZcbCh8uU_GiPgWs-1mqZEvzr5_9VKVpoELWv3/exec?name=speakers" -o _data/speakers.json
curl -L "https://script.google.com/macros/s/AKfycbwUMiy2e11KFZ8ZcbCh8uU_GiPgWs-1mqZEvzr5_9VKVpoELWv3/exec?name=sessions" -o _data/sessions.json
curl -L "https://script.google.com/macros/s/AKfycbwUMiy2e11KFZ8ZcbCh8uU_GiPgWs-1mqZEvzr5_9VKVpoELWv3/exec?name=sponsors" -o _data/sponsors.json
ruby speaker.rb

#!/bin/bash

#Reset la base de données et relance les migrations
rake db:migrate:reset

#Maintenant que la base est vide, on relance les seeds
rake db:seed
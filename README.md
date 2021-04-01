#Django boilerplate

#Description

You want fast start develop project with Django 3, bit you dont want spent time on prepare, because it boring and not interesting)
This boilerplate is your solution. Script will create good architecture for develop with important requirements.txt and another useful files. 

#Quick start

1. Move in folder where you want create project 
2. Download file django_boilerplate.sh
3. Write in terminal(inside folder): ```sh django_boilerplate.sh ``` and press ``` Enter```
4. Wait result and watch message from script
5. If you see text "Work completed", that boilerplate finished and you can start development. If you dont see text, choose actions: write me telegram(@mikenin), create issue
6. Delete script files ```django_boilerplate.sh ``` and ```README.md```
7. Rename folder "temp" with settings project on your variant
8. Add apps in INSTALLED APPS in settings.py

#Requirements for script

- installed python3
- installed package: pip
- installed package: virtualenv
- installed package: curl

# Total result

- Good architecture for development
- file .gitignore
- file template README.md
- installed requirements.txt


#Architecture of project
Apps:
1. api - for views and serializers
1. admin_service - for manage Django Admin
1. models - for create and manage models
1. services - for develop business logic

## Author
**Denis Mikenin** - *Backend developer* -
    [my web-site](http://mikenin.com)
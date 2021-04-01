#!/bin/bash

python3 -m venv venv
source venv/bin/activate

curl -O https://gist.githubusercontent.com/dmikenin/7e27e620e32b00a36e69d71889d889ba/raw/5d837ce527335da2153f951a736a08846d57d824/requirements.txt
echo "Download requirements"

pip install -r requirements.txt

echo "Install requiremetns"

django-admin startproject temp
mv temp core
echo "Create project"

cd temp
python3 manage.py startapp api
python3 manage.py startapp models
python3 manage.py startapp admin_service
python3 manage.py startapp services
echo "Create apps"

mkdir api/v1
mkdir api/v1/views
mkdir api/v1/serializers
mkdir tests
touch tests/__init__.py

rm admin_service/models.py
rm admin_service/tests.py
rm admin_service/views.py
rm -rf admin_service/migrations

rm services/models.py
rm services/tests.py
rm services/views.py
rm services/admin.py
rm -rf admin_service/migrations

rm models/tests.py
rm models/views.py
rm models/admin.py

rm api/models.py
rm api/tests.py
rm api/views.py
rm api/admin.py
rm -rf admin_service/migrations

echo "Create architecture project"

echo "Download additional file for project"
curl -O https://gist.githubusercontent.com/dmikenin/d6714a2ba6923a1de54fec86b924eff1/raw/bd0f46e5cdba4549d84fbecebcc6d1a0172cbc90/.gitignore
curl -O https://gist.githubusercontent.com/dmikenin/7a472afcd49df664cae14751ccac171d/raw/a95d3137d4d83e6a9024426137178f0f2934dd55/README.md

echo "Work completed. Have a nice development!"
echo "Author: Denis Mikenin (@dmikenin)"

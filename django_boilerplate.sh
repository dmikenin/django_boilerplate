#!/bin/bash

python3 -m venv venv
source venv/bin/activate

curl -O https://gist.githubusercontent.com/dmikenin/7e27e620e32b00a36e69d71889d889ba/raw/5d837ce527335da2153f951a736a08846d57d824/requirements.txt

echo ""
echo "Download requirements"
echo ""

pip install -r requirements.txt

echo ""
echo "Install requiremetns"
echo ""

django-admin startproject temp

echo ""
echo "Create project"
echo ""

mv requirements.txt temp/requirements.txt

cd temp
python3 manage.py startapp api
python3 manage.py startapp models
python3 manage.py startapp admin_service
python3 manage.py startapp services
mv temp core

echo ""
echo "Create apps"
echo ""

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

echo ""
echo "Create architecture project"
echo ""

echo "Download additional file for project"
curl -O https://gist.githubusercontent.com/dmikenin/d6714a2ba6923a1de54fec86b924eff1/raw/bd0f46e5cdba4549d84fbecebcc6d1a0172cbc90/.gitignore
curl -O https://gist.githubusercontent.com/dmikenin/7a472afcd49df664cae14751ccac171d/raw/a95d3137d4d83e6a9024426137178f0f2934dd55/README.md

cd ..
deactivate
mv venv temp/venv

echo ""
echo "Work completed. Have a nice develop!"
echo "Author: Denis Mikenin (@dmikenin)"
echo ""

 mkdir passworder_test
cd passworder_test
git clone https://github.com/Rac-Software-Development/fastapi_passworder.git
cd fastapi_passworder
DIR="/home/passworder_test/fastapi_passworder/"

if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
    pip3 install -r requirements.txt --upgrade
    git describe --tags > passworder/version.txt
    python3 -m unittest discover .
    echo "succesfull installed all requirements"
output=$?
if[$output == 0]; then
   echo "unit test was successfull!"
    exit 0
elif[$output != 0]; then
    echo "unit test failed"
   exit 1
else
echo "failed! directory not found"
exit 1
fi



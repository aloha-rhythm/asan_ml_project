echo "Derek's init shell script
make sure virtualenv is installed"
echo

BASEDIR=$(pwd $(dirname "$0"))
cd $BASEDIR
echo "current dir is $BASEDIR"

virtualenv venv
source venv/bin/activate
pip install -r requirements.txt

echo "initialization done

***always use virtuan environment***
when you start working on the project
  $ source venv/bin/activate
When you are done
  $ deactivate"
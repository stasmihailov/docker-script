mkdir testdir
cat << EOF > testdir/Dockerfile
from alpine
cmd uname
EOF

expectedResult="Linux"
actualResult="$(docker script testdir/Dockerfile)"

[[ "$expectedResult" == "$actualResult" ]]
expectedEqualsActual=$?
exit $expectedEqualsActual

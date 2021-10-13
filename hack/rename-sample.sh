sample="platform"
#example="plat"
Foo="PlatformWorkload"
foo="platformworkload"

find ./pkg -type f -exec sed -i -e "s/sample/${sample}/g" {} \;
find ./pkg -type f -exec sed -i -e "s/Foo/${Foo}/g" {} \;
find ./pkg -type f -exec sed -i -e "s/foo/${foo}/g" {} \;
#find ./pkg -type f -exec sed -i -e "s/example/${example}/g" {} \;



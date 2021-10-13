sample="platform"
#example="plat"
Foo="PlatformWorkload"
foo="platformworkload"

find ./pkg -type f -exec sed -i -e "s/sample/${sample}/g" {} \;
find ./pkg -type f -exec sed -i -e "s/Foo/${Foo}/g" {} \;
find ./pkg -type f -exec sed -i -e "s/foo/${foo}/g" {} \;
#find ./pkg -type f -exec sed -i -e "s/example/${example}/g" {} \;

# rename files
mv ./pkg/generated/clientset/versioned/typed/samplecontroller/v1alpha1/foo.go ./pkg/generated/clientset/versioned/typed/${sample}controller/v1alpha1/${foo}.go
mv ./pkg/generated/clientset/versioned/typed/samplecontroller/v1alpha1/samplecontroller_client.go ./pkg/generated/clientset/versioned/typed/${sample}controller/v1alpha1/${sample}controller_client.go
mv ./pkg/generated/informers/externalversions/samplecontroller/v1alpha1/foo.go ./pkg/generated/informers/externalversions/samplecontroller/v1alpha1/${foo}.go
mv ./pkg/generated/listers/samplecontroller/v1alpha1/foo.go ./pkg/generated/listers/${sample}controller/v1alpha1/${foo}.go

# rename dirs
mv ./pkg/generated/informers/externalversions/samplecontroller ./pkg/generated/informers/externalversions/${sample}controller
mv ./pkg/generated/listers/samplecontroller ./pkg/generated/listers/${sample}controller
mv ./pkg/generated/clientset/versioned/typed/samplecontroller ./pkg/generated/clientset/versioned/typed/${sample}controller
mv ./pkg/apis/samplecontroller ./pkg/apis/${sample}controller
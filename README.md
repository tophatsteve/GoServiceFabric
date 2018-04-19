# GoServiceFabric

A simple Go service and configuration files for testing Azure Service Fabric.

To build the application:

```bash
make build
```

To deploy the application, open a Powershell prompt and run:

```bash
cd build

Connect-ServiceFabricCluster localhost:19000
Copy-ServiceFabricApplicationPackage -ApplicationPackagePath 'build' -ImageStoreConnectionString 'file:C:\SfDevCluster\Data\ImageStoreShare' -ApplicationPackagePathInImageStore 'goapp'

Register-ServiceFabricApplicationType -ApplicationPathInImageStore 'goapp'

New-ServiceFabricApplication -ApplicationName 'fabric:/goapp' -ApplicationTypeName 'FabricServiceType' -ApplicationTypeVersion 1.0
```

When finished, remove the application with the following Powershell cmdlet:

```bash
Remove-ServiceFabricApplicationPackage -ApplicationPackagePathInImageStore 'goapp'
```
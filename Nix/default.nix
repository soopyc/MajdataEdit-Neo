{
  lib,
  buildDotnetModule,
  dotnetCorePackages,
  libbass,
}:

buildDotnetModule (final: {
  pname = "MajdataEdit-Neo";
  version = "0.1.0+unstable-2025-03-07";

  src = builtins.filterSource lib.sources.cleanSourceFilter ./..;

  projectFile = "MajdataEdit-Neo.sln";
  nugetDeps = ./deps.json;

  dotnet-sdk = dotnetCorePackages.sdk_9_0;

  runtimeDeps = [
    libbass
  ];

  executables = lib.singleton "MajdataEdit-Neo";
  meta.mainProgram = "MajdataEdit-Neo";
})


import PackageDescription

let package = Package(
    name: "hydref-2016-server",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1),
        .Package(url: "https://github.com/loganwright/Genome.git", majorVersion: 3)
    ]
)

name := "MyAkkaProject"

version := "0.1"

scalaVersion := "2.12.8"

libraryDependencies ++= Seq(
  "com.typesafe.akka" %% "akka-actor" % "2.5.32",
  "com.typesafe.akka" %% "akka-stream" % "2.5.32",
  "com.typesafe.akka" %% "akka-http" % "10.1.15"
)

enablePlugins(SbtNativePackager)

resolvers += "Akka Repository" at "https://repo.akka.io/maven"

def file = new File(request.getOutputDirectory(), request.getArtifactId() + "/buildAndRun.sh")
file.setExecutable(true, false)
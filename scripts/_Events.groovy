eventCompileStart = { kind ->
    def file = new File("${platformUiPluginDir}/grails-app/conf/PlatformUiFIlters.groovy")
    if (file.exists()) {
        event("StatusUpdate", ["Fixing file name"])
        file.renameTo("${platformUiPluginDir}/grails-app/conf/PlatformUiFilters.groovy")
        event("StatusUpdate", ["Sorry, you need to run again to force a recompile"])
        exit(0)
    }
}

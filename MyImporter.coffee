MyImporter = ->

    @importString = (context, stringToImport) ->

        # Parse `POST http://api.domain.com/path`
        match = stringToImport.match /^([a-z]+)\s+(.*)$/i

        # Failure
        if not match
            throw new Error "Invalid input format"

        # Create a request
        request = context.createRequest 'My Imported Request', match[1], match[2]

        return true

    return

MyImporter.identifier = "com.luckymarmot.PawExtensions.MyImporter"
MyImporter.title = "My Importer"

registerImporter MyImporter

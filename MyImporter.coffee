# You can change the name of your importer class
# (don't forget to rename it below too)
MyImporter = ->

    @importString = (context, stringToImport) ->

        # Add here your string parsing logic
        # if your input is JSON, you can parse it with:
        input = JSON.parse(stringToImport)

        # Failure
        if not input
            # To report an error, just throw a JavaScript Error
            throw new Error("Invalid input format")

        # Create a request
        # The syntax is: context.createRequest(name, http_method, url)
        request = context.createRequest('My Imported Request', 'GET', 'http://httpbin.org/get')

        # Create a request group
        # The syntax is: context.createRequestGroup(group_name)
        group = context.createRequestGroup('My Imported Group')

        # Add the request inside the group
        group.appendChild(request)

        return true

    return

# Set here the identifier of your importer
# the last component must match this file name (e.g. "MyImporter.coffee")
MyImporter.identifier = "com.luckymarmot.PawExtensions.MyImporter"

# Give here a pretty display name to your importer
# this will be displayed in the user interface of Paw
MyImporter.title = "My Importer"

# Don't forget to call `registerImporter` this is how Paw
# knows that you want to register your importer.
registerImporter(MyImporter)

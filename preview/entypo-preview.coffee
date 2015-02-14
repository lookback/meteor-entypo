Icons = new Mongo.Collection 'icons'

if Meteor.isServer

  # Seed db on startup.
  Meteor.startup ->
    if Icons.find().count() is 0
      icons = Assets.getText 'icons.json'

      if icons
        try
          JSON.parse(icons).names.forEach (name) ->
            Icons.insert name: name
        catch ex
          console.error 'An error occurred when parsing JSON: ' + ex.message

  Meteor.publish 'icons', ->
    return Icons.find()


if Meteor.isClient
  Meteor.subscribe 'icons'

  Template.icons.helpers(
    icons: ->
      Icons.find()
  )

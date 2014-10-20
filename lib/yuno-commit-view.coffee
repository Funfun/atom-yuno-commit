{View} = require 'atom'

module.exports =
class YunoCommitView extends View
  @content: ->
    @div class: 'yuno-commit overlay from-bottom', =>
      @div "Y U NO commit????", class: "message"

  initialize: (serializeState) ->
    #@subscribe pane:item-added,
    atom.workspaceView.command "yuno-commit:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "YunoCommitView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)

class Atoms.Organism.Contact extends Atoms.Organism.Article

  @scaffold "assets/scaffold/contact.json"


  # -- Children bubble events --------------------------------------------------
  onButtonTouch: (event, dispatcher, hierarchy...) ->
    # Your code...

  onFormSubmit: (event, dispatcher, hierarchy...) ->
    __.proxy("POST", "contact", dispatcher.value()).then (error, value) ->
      console.log value
      if value
        __.Entity.Contact.create value.contact
        Atoms.Url.path "contact/list"


new Atoms.Organism.Contact()

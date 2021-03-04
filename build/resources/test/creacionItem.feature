Feature: Item

  Scenario: As admin user
            I want to create an item
            So I am able to have the first part of an Item

    Given tengo acceso a Todo.ly

    When envio una peticion POST al url http://todo.ly/api/items.json con json

    """
      {
        "Content": "Item Nuevo"
      }
    """

    Then quiero que el codigo de respuesta sea 200

    And espero que el contenido del item sea "Item Nuevo"
extends Node

func start():
    var popup = Window.new()
    popup.title = "Example Module"
    popup.size = Vector2(300, 150)

    var label = Label.new()
    label.text = "Hello from Example Module!"
    label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    popup.close_requested.connect(func():
        popup.queue_free()
    )

    popup.add_child(label)

    get_tree().root.add_child(popup)
    popup.popup_centered()

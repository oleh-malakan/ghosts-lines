<field>
<shape>

Main() {
    f := *field.Field {
        // field initialization
    }

    for i := 0; i < 7; i++ {
        shape := *shape.Color {
            Color: i
        }
        field.AddRender<f>(shape.ColorRender<shape>)
        field.AddFree<f>(shape.ColorFree<shape>)
    }

    for i := 0; i < 7; i++ {
        shape := *shape.ColorGhost {
            Color: i
        }
        field.AddRender<f>(shape.ColorGhostRender<shape>)
        field.AddFree<f>(shape.ColorGhostFree<shape>)
    }

    field.Loop<f>()

    field.Free<f>()
    ~f
}
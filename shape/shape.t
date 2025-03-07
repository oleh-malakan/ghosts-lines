Color {
    Color int32
}

ColorRender<s *Color>(dt float64){
    // render the shape color
}

ColorFree<s *Color>(){
    // free the shape color
}

ColorGhost {
    Color int32
}

ColorGhostRender<s *ColorGhost>(dt float64){
    // render the shape color ghost
}

ColorGhostFree<s *ColorGhost>(){
    // free the shape color ghost
}
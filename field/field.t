Field {
    sr array[@(dt float64)]
    sf array[@()int32]
}

AddRender<f *Filed>(render @(dt float64)){
    f.sr.push(render)
}

AddFree<f *Field>(free @()int32){
    f.sf.push(free)
}

Loop<f *Field>(){
    dt float64
    for {
        for _, r : range f.sr {
            r(dt)
        }
    }
}

Free<f *Field>(){
    for _, r : range f.sr {
        ~r
    }
    for _, f : range f.sf {
        f()
        ~f
    }
}
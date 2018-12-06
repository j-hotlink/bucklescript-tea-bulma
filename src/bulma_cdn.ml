open Tea
open Html2

(* the "extra" param is a trick to get ocaml's type system to trust the genarlised types returned by the function *)
let stylesheet attributes =
  link
    ( [ Attributes.rel  "stylesheet"
      ; Attributes.href "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css"
      ] @ attributes
    )

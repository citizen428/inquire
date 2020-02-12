module CustomInquire = Inquire.Make (struct
  open Inquire

  let prompt_prefix = "❓  "

  let prompt_style = Style.make [ Style.bold; Style.color White ]

  let error_prefix = "❌  "

  let error_style = Style.make [ Style.bold; Style.color Red ]

  let selected_style = Style.make [ Style.bold; Style.color Blue ]
end)

let _ =
  let result = CustomInquire.confirm "Are you sure?" ~default:true in
  Lwt_main.run result

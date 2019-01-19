open GMain

let main () = 
  begin
    let locale = GtkMain.Main.init () in
    let window = GWindow.window ~width:320 ~height:100
                   ~title:"Simple lablgtk program" () in
    window#connect#destroy ~callback:Main.quit;
    window#show ();
    Main.main ();
  end;;

let _ = Printexc.print main ();;

open Common

let dump_jsonnet_ast file =
  (* let cst = Tree_sitter_jsonnet.Parse.file file in *)
  let res = Parse_jsonnet_tree_sitter.parse file in
  match res.program with
  | None -> failwith "unknown error from tree-sitter parser"
  | Some ast -> pr2 (AST_jsonnet.show_program ast)

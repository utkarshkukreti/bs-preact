default:
	npm run build
	ocamlfind ppx_tools/rewriter lib/bs/native/Preact_Ppx.native tests/Tests.ml | tee tests/Tests.ml.stdout

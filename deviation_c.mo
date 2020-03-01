model deviation_c
  
function ExternalFunc
  input Real[4] x;
  output Real[1] y;
  external "C" c_func(4, x, 1, y);
  annotation(Library="cwrapper", LibraryDirectory="file:///C:/projects/openmodelica-fmu-export-win/");
end ExternalFunc;

  output Real y;
  input Real E (start=3.0e7);
  input Real F (start=3.0e4);
  input Real L (start=250);
  input Real I (start=400);
protected
  Real output_array_zzz__[1] = ExternalFunc({E, F, L, I});
equation
  y = output_array_zzz__[0];
end deviation_c;

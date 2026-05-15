program pascal_peculiarities_and_pitfalls;

{
  Pascal peculiarities and pitfalls:
  1. Array declarations in function/procedure parameter lists are often not allowed
  2. Floating Point Constants starting with a decimal point are not allowed
  3. Parantheses always needed when using AND/OR
  4. No ";" before ELSE
}

type
  Tarr = array [1..2] of integer;

{ procedure test1(x: array [1..2] of integer); // not allowed, must use Tarr }
  procedure test1(x: Tarr);
  begin
    writeln(Low(x));
    writeln(High(x));
    writeln(x[1]);
    writeln(x[2]);
  end;

  procedure test2(x: array of integer); // allowed, but only one-dim. and
                                        // no bounds, lower bound is always 0
  begin
    writeln(Low(x));
    writeln(High(x));
    writeln(x[0]);
    writeln(x[1]);
  end;

var
  x: double;
  a: Tarr;
begin

{ x := .2e4; //  Error: Illegal constant }
  x := 0.2e4;

  writeln(x);

{ if  x >= 1000  and  x <= 4000  then  // Error: Incompatible types }
  if (x >= 1000) and (x <= 4000) then

  { writeln('x is between 1000 and 4000'); // Error: Syntax error: ; before else }
    writeln('x is between 1000 and 4000')

  else

    writeln('x is NOT between 1000 and 4000');

  a[1] := 999;
  a[2] := 1999;

  test1(a);  // writes 1 2 999 1999

  test2(a);  // writes 0 1 999 1999

end.

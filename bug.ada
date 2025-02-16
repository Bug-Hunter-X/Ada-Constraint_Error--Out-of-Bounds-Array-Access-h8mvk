```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Index : Integer := 11; --This will cause an error
begin
   Arr(Index) := 12; --Accessing an out-of-bounds index
   Put_Line("Value at index 11: " & Arr(Index)'Image);
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Index out of bounds");
end Example;
```
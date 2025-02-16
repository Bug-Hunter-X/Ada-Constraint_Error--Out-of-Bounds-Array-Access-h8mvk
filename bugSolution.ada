```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Index : Integer := 11;
begin
   begin
      Arr(Index) := 12; -- Accessing an out-of-bounds index
      Put_Line("Value at index 11: " & Arr(Index)'Image);
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error: Index out of bounds");
         Index := 1;  --Handle the error, adjust index
         Put_Line("Corrected Index: " & Index'Image);
   end;
   Put_Line("Value at index 1: " & Arr(Index)'Image); 
end Example;
```
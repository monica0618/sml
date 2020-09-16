(* This is our first program. *)

val x = 34;
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34 , y --> 17 *)

(* a program is just sequence of bindings *) 

val z = (x + y) + (y + 2);
(* static environme nt: x : int, y : int, z : int *)
(* dynamic environment: x --> 34 , y --> 17, z --> 70 *)

(* use only previous bindings *)

val q = z + 1;
(* static environment: x : int, y : int, z : int, q : int *)
(* dynamic environment: x --> 34 , y --> 17, z --> 70, w -> 71 *)

(* first thing type checked, then run *)

val abs_of_z = if z < 0 then 0 - z else z;
(* static environment: abs_of_z : int *)
(*dynamic environment : ..., abs_of_z ==> 70 *)

val abs_of_z_simpler = abs z;

module Server : sig
  type ('a, 'b) t
  val serve : ('a, 'b) -> ('a, 'b) t
  val request : ('a, 'b) t -> 'a -> 'b
end
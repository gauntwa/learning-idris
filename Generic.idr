double : Num ty => ty -> ty
double x = x + x

quadruple : Num a => a -> a
quadruple x = double (double x)
<garantias>
{
  for $g in collection("polizas")//garantia
  where $g/@vigor="S"
  order by $g/tipo, number($g/capital)
  return $g 
}
</garantias>
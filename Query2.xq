<courses>
{
for $x in distinct-values(doc("reed.xml")/root/course/title)

return <course>
<title>{data($x)}</title>
{
for $y in (doc("reed.xml")/root/course[title=$x]/instructor)
return <instructor>{data($y)}</instructor>
}
</course>
}
</courses> 
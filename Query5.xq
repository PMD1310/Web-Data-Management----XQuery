<instructors>
{
for $x in distinct-values(doc("reed.xml")/root/course/instructor)
return <inst>
<title>{data($x)}</title>
{
if( count(doc("reed.xml")/root/course[instructor=$x]/title))then
      (<no>{(doc("reed.xml")/root/course[instructor=$x]/title)}</no>)
else
(<no>{0}</no>)

}
</inst>
}
</instructors> 
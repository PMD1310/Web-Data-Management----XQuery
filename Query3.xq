<depts>
{
for $x in distinct-values(doc("reed.xml")/root/course/subj)
return <dept>
<title>{data($x)}</title>
{
if( count(doc("reed.xml")/root/course[subj=$x]/title))then
      (<no>{count(doc("reed.xml")/root/course[subj=$x]/title)}</no>)
else
(<no>{0}</no>)

}
</dept>
}
</depts> 
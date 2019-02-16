<mathcourse>
{
for $x in doc("reed.xml")/root/course[subj='MATH']
where $x/place[building = 'LIB' and room = 204]
return <course>
	<title> {data($x/title)}</title>
        <instructor> {data($x/instructor)}</instructor>
        <starttime> {data($x/time/start_time)}</starttime>
        <endtime> {data($x/time/end_time)}</endtime>
	</course>
}
</mathcourse>


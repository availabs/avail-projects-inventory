d3.csv('info-collection/name-cheap-scrape.md', function(error,data){
	console.log('data', data)
	var servers = data.reduce((prev,curr) => {
		if(!prev[curr.Server]) {
			prev[curr.Server] = {
				server: curr.server,
				ip:curr.Value
			}
		}
		return prev
	},{})

	var projects = data.reduce((prev,curr) => {
		if(!prev[curr.Host]) {
			prev[curr.Host] = {
				subdomain: curr.Host,
				server: curr.Server
			}
		}
		return prev
	},{})

	console.log('servers', JSON.stringify(servers))
	console.log('projects', JSON.stringify(projects))

})

d3.csv('info-collection/dbs/all_db.csv',(err,data)=>{
	console.log('data', data)
	var dbs = data.reduce((prev,curr) => {
		if(!prev[curr.name]){
			prev[curr.name] = 0
		}
		prev[curr.name] += 1
		return prev
	},{})
	console.log('dbs', dbs)
})
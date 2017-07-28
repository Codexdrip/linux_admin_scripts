#!/bin/bash

# A program to output a system information page 
title="system information report for $HOSTNAME"
current_time=$(date +"%x %r %Z")
time_stamp="Generated $current_time, by $USER"

report_uptime () {
	cat <<- _EOF_
		<h2>system uptime</h2>
		<pre>$(uptime)</pre>
		_EOF_
	return
}

report_disk_space () {
	cat <<- _EOF_
		<h2>Disk Space Utilization</h2>
		<pre>$(df -h)<pre>
		_EOF_
}

report_home_space () {
	cat <<- _EOF_
		<h2>Home Space Utilization</h2>
		<pre>$(du -sh ~/viclustig/*)</pre>
		_EOF_
}

os_check () {
	cat <<- _EOF_
		<h2>Kernel Information</h2>
		<pre>$(uname -a)</pre>
		_EOF_
}

ip_addr_check () {
	cat <<- _EOF_
		<h2>Ip Address Information</h2>
		<pre>$(ifconfig eth0)</pre>
		_EOF_
}

check_connections () {
	cat <<- _EOF_
		<h2>Port Status</h2>
		<pre>$(netstat -tulpn)</pre>
		_EOF_
}

	

cat << _EOF_
<html>
	<head>
		<title> $title </title>
	</head>

	<body>
		<h1>$title</h1>
		<p> $time_stamp </p>
		$(os_check)
		$(report_uptime)
		$(report_disk_space)
		$(report_home_space)
		$(ip_addr_check)
		$(check_connections)

	</body>

</html>
_EOF_

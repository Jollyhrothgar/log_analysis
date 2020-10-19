#!/bin/bash

all_logs=all_auth_logs.txt

if [[ -f "./${all_logs}" ]]; then
	echo "Found existing logs file, removing it."
	rm -iv ${all_logs}
fi

touch ${all_logs}

for log in $(ls /var/log/ | grep auth)
do
	echo "Parsing log ${log}"
	if [[ "${log}" =~ ^.*gz$ ]] ; then
		zcat /var/log/${log} >> ${all_logs}
	else
		cat /var/log/${log} >> ${all_logs}
	fi
done

echo "Done!"

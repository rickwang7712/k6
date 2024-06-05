import http from 'k6/http'
import { check, sleep } from 'k6'
const nginxURL = 'https://web.endpoint/get'
const openzitiURL = 'http://web.endpoint/get'
const users = __ENV.USERS
const round = __ENV.ROUND
const summaryFile = users+'_metrics.csv'

export const options = {
	summaryTimeUnit: 's',
	// Key configurations for avg load test in this section
	stages: [
	  { duration: '10s', target: users }, // traffic ramp-up from 1 to 100 users over 5 minutes.
	  { duration: '180s', target: users }, // stay at 100 users for 30 minutes
	  { duration: '10s', target: 0 }, // ramp-down to 0 users
	],
  };

export default function () {
	let url = nginxURL
  if (__ENV.ZITI_ENABLED === 'true') {
	url = openzitiURL
  }
  let res = http.get(url)

  check(res, { 'success': (r) => r.status === 204 })
  sleep(0.1)
}

export function handleSummary(data) {
	return {
		[summaryFile]: handleSummaryToCSV(data),
		[users+'-raw-data.json']: JSON.stringify(data),
	};
  }

  // Helper function to customize the CSV output
  function handleSummaryToCSV(data) {
	let csv = ''; // Start with the header

	// Add desired metrics
	if (round == 1) {
		console.log('round 1');
		csv+='round,vus_max,success_rate,checks_pass,checks_fails,http_reqs,recv_avg,recv_med,recv_p90\n';
	}

	csv+=`${round},${data.metrics['vus'].values.max},${data.metrics['checks'].values.passes/180},${data.metrics['checks'].values.passes},${data.metrics['checks'].values.fails},${data.metrics['http_reqs'].values.count},${data.metrics['http_req_receiving'].values.avg},${data.metrics['http_req_receiving'].values.med},${data.metrics['http_req_receiving'].values["p(90)"]}\n`
	return csv;
  }

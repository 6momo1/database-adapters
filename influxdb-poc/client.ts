import { InfluxDB } from '@influxdata/influxdb-client'



// You can generate an API token from the "API Tokens Tab" in the UI
// const token = '-ez3rD2rKyCb9-JJEoLNyjVHujQ1bPdCB23SobH5MdURQbsbhQj2aMT99F4Yh7n_BzEUd44Dv3bigbkKufZe_g=='
const token = 'eWJXe0797JaHhaIOHToTLmJBu0SKotwVhpoTfgW8j-eU7oWxjaPFiNLIHS-5bTVBeEYcC5tndivVN38vhFjL6Q=='
const org = 'tomilui1221@gmail.com'
const bucket = "tomilui1221's Bucket"

// const client = new InfluxDB({ url: 'http://localhost:8086', token: token })
const client = new InfluxDB({url: 'https://us-east-1-1.aws.cloud2.influxdata.com', token: token})

export {client, org, bucket}

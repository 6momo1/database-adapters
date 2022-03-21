import {client} from './client'
import { Point } from '@influxdata/influxdb-client'

const org = 'test'
const bucket = 'test'

const writeApi = client.getWriteApi(org, bucket)
writeApi.useDefaultTags({ host: 'host1' })

const point = new Point('mem').floatField('used_percent', 23.43234543)
writeApi.writePoint(point)

writeApi
    .close()
    .then(() => {
        console.log('FINISHED')
    })
    .catch(e => {
        console.error(e)
        console.log('Finished ERROR')
    })
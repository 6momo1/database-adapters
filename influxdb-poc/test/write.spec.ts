
import { client, org, bucket } from '../client'
import { Point } from '@influxdata/influxdb-client'

describe("Testing writes to influx database", () => {
    it("Should write data to database", async () => {

        const writeApi = client.getWriteApi(org, bucket)
        writeApi.useDefaultTags({ host: 'host1' })

        const point = new Point('mem').floatField('used_percent', Math.random() * 100)
        writeApi.writePoint(point)

        await writeApi
            .close()
            .then(() => {
                console.log('FINISHED')
            })
            .catch(e => {
                console.error(e)
                console.log('Finished ERROR')
            })
    })
})
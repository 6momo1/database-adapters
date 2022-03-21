import { client, org } from '../client'
const queryApi = client.getQueryApi(org)


describe("Test influx db queries", () => {
    
    it("Should query sample write from db", async () => {
        const query = `from(bucket: "tomilui1221's Bucket") |> range(start: -1h)`
        let res
        await queryApi.queryRows(query, {
            next(row:any, tableMeta:any) {
                const o = tableMeta.toObject(row)
                console.log(`${o._time} ${o._measurement}: ${o._field}=${o._value}`)
                res = `${o._time} ${o._measurement}: ${o._field}=${o._value}`
            },
            error(error:any) {
                console.error(error)
                console.log('Finished ERROR')
                res = "ERROR"
            },
            complete() {
                console.log('Finished SUCCESS')
            },
        })
        console.log(res);
        expect(res).toBeDefined()
    }, 1000 * 60 )
})
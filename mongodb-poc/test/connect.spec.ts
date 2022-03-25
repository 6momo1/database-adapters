
const { MongoClient, ServerApiVersion } = require('mongodb');

describe("Testing mongodb client", () => {
    it("Should connect to db", async () => {
        let collection
        const uri = "mongodb+srv://tomi:tomi@testcluster.mx6eb.mongodb.net/myFirstDatabase?retryWrites=true&w=majority";
        const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true, serverApi: ServerApiVersion.v1 });
        // await client.connect(err => {
        //     collection = client.db("test").collection("devices");            
        //     // perform actions on the collection object
        //     console.log(collection);
            
        //     client.close();
        // });

        collection = await client.connect()
        client.close()
        console.log(collection);
        expect(collection).toBeDefined()
        
    })
})

interface Config {
    MONGO_KEY: string
}

const appConfig:Config = {
    MONGO_KEY : `mongodb+srv://<username>:<password>@testcluster.mx6eb.mongodb.net/myFirstDatabase?retryWrites=true&w=majority`
}
export {appConfig}